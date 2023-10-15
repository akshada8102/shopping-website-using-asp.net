using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VivBeads
{
    public partial class Registration : System.Web.UI.Page
    {
        SqlConnection sql;
        protected void Page_Load(object sender, EventArgs e)
        {
            sql = new SqlConnection();
            sql.ConnectionString = "Data Source=LAPTOP-1GTVUSD3\\SQLEXPRESS ; Initial Catalog =VivBeads ; Integrated Security = SSPI ";
            sql.Open();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Select * from Registration where username=@username", sql);
            cmd.Parameters.AddWithValue("@username", TextBox5.Text);

   
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {


                Label8.Text = "User Already Exist...";


            }
            else
            {
                
                SqlCommand cm = new SqlCommand("insert into Registration (name,num,username,pass,newpass,Usertype) Values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox5.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','User')");
                cm.Connection = sql;
                cm.ExecuteNonQuery();
                //Label6.Text = "Registered Successfully...";
                Response.Write("<script> alert('Registered Successfully...');  </script>");
                clr();
                Response.Redirect("Login.aspx");

            }



        }
        private void clr()
        {
            TextBox1.Text = string.Empty;
            TextBox2.Text = string.Empty;
            TextBox3.Text = string.Empty;
            TextBox4.Text = string.Empty;
            TextBox5.Text = string.Empty;
        }

    }
}