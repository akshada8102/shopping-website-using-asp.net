using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VivBeads
{
    public partial class UpdateCustomer : System.Web.UI.Page
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
            if (TextBox5.Text == "" || TextBox2.Text == "" || TextBox1.Text == "" || TextBox7.Text == ""|| TextBox4.Text == "" || TextBox6.Text == "" || TextBox3.Text == "")
            {
                Label1.Text = "Please...Fill all the details of the Product";
            }
            else
            {
                SqlCommand cmd = new SqlCommand("Update Registration set name='" + TextBox2.Text + "',num='" + TextBox1.Text + "',username='" + TextBox7.Text + "',pass='" + TextBox4.Text + "',newpass='" + TextBox6.Text + "',Usertype='" + TextBox3.Text + "' where id='" + TextBox5.Text + "'");
                cmd.Connection = sql;
                cmd.ExecuteNonQuery();
                Response.Write("<script> alert('Data  Updated Successfullyyyy..');  </script>");
                clear();
            }
        

        }
        public void clear()
        {
            TextBox1.Text = string.Empty;
            TextBox2.Text = string.Empty;
            TextBox4.Text = string.Empty;
            TextBox6.Text = string.Empty;
            TextBox7.Text = string.Empty;
            TextBox3.Text = string.Empty;
            TextBox1.Focus();

        }
    }
}