using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VivBeads
{
    public partial class UpdateProduct : System.Web.UI.Page
    {
        SqlConnection sql;
        protected void Page_Load(object sender, EventArgs e)
        {
            sql = new SqlConnection();
            sql.ConnectionString = "Data Source=LAPTOP-1GTVUSD3\\SQLEXPRESS ; Initial Catalog=VivBeads ; Integrated Security=SSPI ";
            sql.Open();
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            if (TextBox3.Text == "" || TextBox1.Text == "" || TextBox4.Text == "" || TextBox6.Text == "")
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

                        SqlCommand cmd = new SqlCommand("Update Product set ProductName='" + TextBox1.Text + "',ProductImage='" + link + "',ProductPrice='" + TextBox4.Text + "',Category='" + TextBox6.Text + "' where ProductId='" + TextBox3.Text + "'");
                        cmd.Connection = sql;
                        cmd.ExecuteNonQuery();
                        Response.Write("<script> alert('Data Updated Successfullyyyy..');  </script>");
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
            TextBox6.Text = string.Empty;
            TextBox3.Text = string.Empty;
            TextBox4.Text = string.Empty;

            

            TextBox1.Focus();

        }
    }
}