using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VivBeads
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection sql;
        protected void Page_Load(object sender, EventArgs e)
        {
            sql = new SqlConnection();
            sql.ConnectionString = "Data Source=LAPTOP-1GTVUSD3\\SQLEXPRESS ; Initial Catalog =VivBeads ; Integrated Security = SSPI ";
            sql.Open();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
          
            SqlCommand cmd = new SqlCommand("Select * from Registration where username=@username and pass=@pwd", sql);
            cmd.Parameters.AddWithValue("@username", TextBox1.Text);

            cmd.Parameters.AddWithValue("@pwd", TextBox2.Text);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
              
                Session["username"] = dt.Rows[0]["name"].ToString();



                string Utype;
                Utype = dt.Rows[0][7].ToString().Trim();

                if (Utype == "User")
                {
                    Response.Redirect("~/Homepage.aspx");
                }
                if (Utype == "Admin")
                {
                    Response.Redirect("~/AdminHomePage.aspx");
                }


              



               
            }
            else
            {
                Response.Write("<script> alert('Invalid Username or Password');  </script>");
                clr();
            }


          
            

        }
        public void clr()
        {
            TextBox2.Text = "";
            TextBox1.Text = "";

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }
    }


}
