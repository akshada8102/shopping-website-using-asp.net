using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VivBeads
{
    public partial class AddProduct : System.Web.UI.Page
    {
        SqlConnection sql;
        protected void Page_Load(object sender, EventArgs e)
        {
            sql = new SqlConnection();
            sql.ConnectionString = "Data Source=LAPTOP-1GTVUSD3\\SQLEXPRESS ; Initial Catalog=VivBeads ; Integrated Security=SSPI ";
            sql.Open();
            SqlCommand cmd = new SqlCommand("Select * from Product");
            if (!IsPostBack)
            {
                SqlDataAdapter ad = new SqlDataAdapter();
                cmd.Connection = sql;
                ad.SelectCommand = cmd;
                DataTable dt = new DataTable();
                ad.Fill(dt);
                GridView1.DataBind();
                sql.Close();
            }
           

        }

        protected void Button10_Click(object sender, EventArgs e)
        {
           
            if(TextBox1.Text=="" || TextBox4.Text== "" || TextBox6.Text == "" )
            {
                Label1.Text = "Please...Fill all the details of the Product";
            }
            else {
                if (FileUpload1.HasFile)
                {
                    string profileImageName = FileUpload1.PostedFile.FileName;

                    string filePath = Server.MapPath(@"~/images/" + profileImageName);
                    FileUpload1.SaveAs(filePath);
                    string extension = Path.GetExtension(FileUpload1.FileName);
                    if (extension == ".jpg" || extension == ".jpeg" || extension == ".png")
                    {

                        string link = "images/" + Path.GetFileName(FileUpload1.FileName);

                        SqlCommand cmd = new SqlCommand("insert into Product(ProductName,productImage,ProductPrice,Category) values('" + TextBox1.Text + "','" + link + "','" + TextBox4.Text + "','" + TextBox6.Text + "')");
                        cmd.Connection = sql;
                        cmd.ExecuteNonQuery();
                        Response.Write("<script> alert('Data Inserted Successfullyyyy..');  </script>");
                        clear();
                    }
                    else
                    {
                        Response.Write("<script> alert('Invalid File Uploaded...');  </script>");
                    }

                }
                else
                {
                    Response.Write("<script> alert(' File Not Uploaded...');  </script>");
                }
            }
           
        }

        public void clear()
        {
            TextBox1.Text = string.Empty;
            TextBox4.Text = string.Empty;
            TextBox6.Text = string.Empty;
        
            TextBox1.Focus();

        }

       
    }
    }

    






    

     

