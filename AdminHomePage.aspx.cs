using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VivBeads
{
    public partial class AdminHomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                Label2.Text = "Welcome " + Session["Username"].ToString();


            }
            else
            {

                Label2.Text = "Welcome...";
            }
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddProduct.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("DeleteProduct.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("UpdateProduct.aspx");
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewProduct.aspx");

        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddCustomer.aspx");
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            Response.Redirect("UpdateCustomer.aspx");
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            Response.Redirect("DeleteCustomer.aspx");
        }

        protected void Button12_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewCustomer.aspx");
        }

        protected void Button13_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewFeedBack.aspx");
        }

        protected void Button14_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewOrders.aspx");
        }

        protected void Button10_Click1(object sender, EventArgs e)
        {
            Response.Redirect("ViewProduct.aspx");
        }

        protected void Button12_Click1(object sender, EventArgs e)
        {
            Response.Redirect("ViewCustomer.aspx");
        }
    }
}