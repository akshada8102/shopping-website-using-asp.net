using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VivBeads
{
    public partial class DeleteCustomer : System.Web.UI.Page
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
            if (TextBox2.Text == "")
            {
                Label1.Text = "Plz Enter the Product  Id";
            }
            else
            {
                SqlCommand cmd = new SqlCommand("Delete from Registration where id='" + TextBox2.Text + "'"); cmd.Connection = sql;
                cmd.ExecuteNonQuery();
                Response.Write("<script> alert('Data Deleted Successfullyyyy..');  </script>");
                clear();

            }


        }
        public void clear()
        {
           
            TextBox2.Text = string.Empty;
         
            TextBox2.Focus();

        }
    }
}