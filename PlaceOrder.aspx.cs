using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VivBeads
{
    public partial class PlaceOrder : System.Web.UI.Page
    {
        SqlConnection sql;
        protected void Page_Load(object sender, EventArgs e)
        {
            sql = new SqlConnection();
            sql.ConnectionString = "Data Source=LAPTOP-1GTVUSD3\\SQLEXPRESS ; Initial Catalog =VivBeads ; Integrated Security = SSPI ";
            sql.Open();

            if (!IsPostBack)
            {
                DataTable dt = new DataTable();
                DataRow dr;
                dt.Columns.Add("sno");
                dt.Columns.Add("id");
                dt.Columns.Add("name");
                dt.Columns.Add("quantity");
                dt.Columns.Add("price");
                dt.Columns.Add("totalprice");
                dt.Columns.Add("image");

                if (Request.QueryString["id"] != null)
                {
                    if (Session["Buyitems"] == null)
                    {
                        dr = dt.NewRow();
                        String mycon = "Data Source=LAPTOP-1GTVUSD3\\SQLEXPRESS ; Initial Catalog=VivBeads ; Integrated Security=SSPI ";
                        SqlConnection scon = new SqlConnection(mycon);

                        String myquery = "select * from Product where ProductId=" + Request.QueryString["id"];

                        String ppid = Request.QueryString["id"];
                        Session["ppid"]=ppid;
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = myquery;
                        cmd.Connection = scon;
                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["sno"] = 1;
                        dr["id"] = ds.Tables[0].Rows[0]["P_Id"].ToString();
                        dr["name"] = ds.Tables[0].Rows[0]["ProductName"].ToString();
                        dr["image"] = ds.Tables[0].Rows[0]["ProductImage"].ToString();
                        dr["quantity"] = Request.QueryString["quantity"];
                        dr["price"] = ds.Tables[0].Rows[0]["ProductPrice"].ToString();
                        int price = Convert.ToInt16(ds.Tables[0].Rows[0]["ProductPrice"].ToString());
                        int quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                        int totalprice = price * quantity;
                        dr["totalprice"] = totalprice;
                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();

                        Session["buyitems"] = dt;
                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();

                    }

                    else
                    {


                        dt = (DataTable)Session["buyitems"];
                        int sr;
                        sr = dt.Rows.Count; dr = dt.NewRow();
                        String mycon = "Data Source=LAPTOP-1GTVUSD3\\SQLEXPRESS ; Initial Catalog=VivBeads ; Integrated Security=SSPI ";
                        SqlConnection scon = new SqlConnection(mycon);
                        String myquery = "select * from Product where ProductId=" + Request.QueryString["id"];
                        SqlCommand cmd = new SqlCommand(); cmd.CommandText = myquery;
                        cmd.Connection = scon;
                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["sno"] = sr + 1;
                        dr["id"] = ds.Tables[0].Rows[0]["P_Id"].ToString();
                        dr["name"] = ds.Tables[0].Rows[0]["ProductName"].ToString();
                        dr["image"] = ds.Tables[0].Rows[0]["ProductImage"].ToString();
                        dr["quantity"] = Request.QueryString["quantity"];
                        dr["price"] = ds.Tables[0].Rows[0]["ProductPrice"].ToString();
                        int price = Convert.ToInt16(ds.Tables[0].Rows[0]["Productprice"].ToString());
                        int quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                        int totalprice = price * quantity;
                        dr["totalprice"] = totalprice;
                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["buyitems"] = dt;
                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                        Response.Redirect("AddToCart.aspx");


                    }

                }
                else
                {
                    dt = (DataTable)Session["buyitems"];
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    if (GridView1.Rows.Count == 0)
                    {
                        Button6.Visible = false;
                    }
                    if (GridView1.Rows.Count > 0)
                    {
                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                        Button6.Visible = true;
                    }

                }

                Label3.Text = DateTime.Now.ToShortDateString();
                findorderid();
            }
        }
        private void findorderid()
        {

            String pass = "abcdefghijklmnopqrstuvwxyz123456789";
            Random r = new Random();
            char[] mypass = new char[5];
            for (int i = 0; i < 5; i++)
            {
                mypass[i] = pass[(int)(35 * r.NextDouble())];
            }
            String orderid;
            orderid = "order" + DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Month.ToString() +
            DateTime.Now.Year.ToString() + new string(mypass);
            Label1.Text = orderid;
            Session["oodd"] = orderid;
        }

        public int grandtotal()
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];

            int nrow = dt.Rows.Count; int i = 0; int gtotal = 0;
            while (i < nrow)
            {
                gtotal = gtotal + Convert.ToInt32(dt.Rows[i]["totalprice"].ToString());
                i = i + 1;
            }
            return gtotal;
        }
        public void saveaddress()
        {

            String updatepass = "insert into OrAddress(OId, Address, MobileNumber) values('" + Label1.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "')";
            String myconl = "Data Source=LAPTOP-1GTVUSD3\\SQLEXPRESS ; Initial Catalog=VivBeads ; Integrated Security=SSPI ";
            SqlConnection s = new SqlConnection(myconl);
            s.Open();
            SqlCommand cmdl = new SqlCommand();
            cmdl.CommandText = updatepass;
            cmdl.Connection = s;
            cmdl.ExecuteNonQuery();
            s.Close();
        }


        protected void Button6_Click(object sender, EventArgs e)
        {
            DataTable dt;
            dt = (DataTable)Session["buyitems"];

            for (int i = 0; i <= dt.Rows.Count - 1; i++)
            {

                string updatepass = "insert into OrrDetail(ProductId,OId, ProductName, ProductPrice, Quantity, DateOfPurchase)" +
                    "values('" + dt.Rows[i]["id"] + "','" + Label1.Text + "','" + dt.Rows[i]["name"] + "'," + dt.Rows[i]["price"] + "," + dt.Rows[i]["quantity"] + ",'" + Label3.Text + "')";

                String myconl = "Data Source=LAPTOP-1GTVUSD3\\SQLEXPRESS ; Initial Catalog=VivBeads ; Integrated Security=SSPI ";
                SqlConnection s = new SqlConnection(myconl);
                s.Open();
                SqlCommand cmdl = new SqlCommand();
                cmdl.CommandText = updatepass;
                cmdl.Connection = s;
                cmdl.ExecuteNonQuery();
                s.Close();
            }
            saveaddress();
            Response.Redirect("PlacedSuccessfullyaspx.aspx");
        }
    }
}