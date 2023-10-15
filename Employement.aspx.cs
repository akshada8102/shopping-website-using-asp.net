using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VivBeads
{
    public partial class Employement : System.Web.UI.Page
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
            if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox4.Text == "" || TextBox6.Text == "" || TextBox7.Text == "")
            {
                Label6.Text = "Please...Fill all the details ";
            }
            else
            {
                SqlCommand cmd = new SqlCommand("insert into Employement(name,age,number,address,freehours) values('" + TextBox2.Text + "','" + TextBox1.Text + "','" + TextBox7.Text + "','" + TextBox4.Text + "','" + TextBox6.Text + "')");
                cmd.Connection = sql;
                cmd.ExecuteNonQuery();
                Response.Write("<script> alert('Thank you..');  </script>");
                Response.Redirect("HomePage.aspx");
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
  
            TextBox1.Focus();

        }


    }
}
