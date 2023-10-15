using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VivBeads
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        
       
        protected void Home_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Homepage.aspx");
        }

        protected void Cart_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("AddToCart.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void Button6_Click1(object sender, EventArgs e)
        {
            Session.Abandon();
        }
    }
}