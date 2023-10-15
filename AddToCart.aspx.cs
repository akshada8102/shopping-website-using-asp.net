using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VivBeads
{
    public partial class AddToCart : System.Web.UI.Page
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
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = myquery;
                        cmd.Connection = scon;
                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["sno"] = 1;
                        dr["id"] = ds.Tables[0].Rows[0]["ProductId"].ToString();
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
                        dr["id"] = ds.Tables[0].Rows[0]["ProductId"].ToString();
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

                   // Response.Write("Akshada");
                    Label2.Text = GridView1.Rows.Count.ToString();




                }
            }
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


        protected void GridView1_RowDeleting(object sender, System.Web.UI.WebControls.GridViewDeleteEventArgs e)
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];
            for (int i = 0; i <= dt.Rows.Count - 1; i++)
            {
                int sr;
                int srl;
                string qdata;
                string dtdata;
                sr = Convert.ToInt32(dt.Rows[i]["sno"].ToString());
                TableCell cell = GridView1.Rows[e.RowIndex].Cells[0];
                qdata = cell.Text;
                dtdata = sr.ToString();
                srl = Convert.ToInt32(qdata);
                if (sr == srl)
                {
                    dt.Rows[i].Delete();
                    dt.AcceptChanges();
                    break;
                }
            }
            for (int i = 1; i <= dt.Rows.Count; i++)
            {
                dt.Rows[i - 1]["sno"] = i;
                dt.AcceptChanges();

            }
            Session["buyitems"] = dt;
            Response.Redirect("AddToCart.aspx");
        }


        protected void Button6_Click(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {

                Response.Redirect("PlaceOrder.aspx");

            }
            else
            {
                Response.Redirect("Login.aspx");
            }
           
        }
    }
}