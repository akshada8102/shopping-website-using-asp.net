using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VivBeads
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

      
        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void Button6_Click1(object sender, EventArgs e)
        {
            Session.Abandon();
        }

        protected void Home_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("AdminHomePage.aspx");
        }
    }
}