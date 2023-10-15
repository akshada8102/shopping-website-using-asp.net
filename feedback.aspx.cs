using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VivBeads
{
    public partial class feedback : System.Web.UI.Page
    {
        SqlConnection sql;
        protected void Page_Load(object sender, EventArgs e)
        {
            sql = new SqlConnection();
            sql.ConnectionString = "Data Source=LAPTOP-1GTVUSD3\\SQLEXPRESS ; Initial Catalog =VivBeads ; Integrated Security = SSPI ";
            sql.Open();
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            if(TextBox1.Text=="")
            {
                Label1.Text = "Plz Enter your Feedback....";
            }
            else
            {
               
                SqlCommand cmd = new SqlCommand("insert into Fback(Message) values('" + TextBox1.Text + "')");
                cmd.Connection = sql;
                cmd.ExecuteNonQuery();
                Response.Write("<script> alert('Thanks for a Your Feedback....');  </script>");


                clear();
            }
          
        }
        public void clear()
        {

            TextBox1.Text = string.Empty;

            TextBox1.Focus();

        }
    }
}