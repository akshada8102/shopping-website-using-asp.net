using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace VivBeads
{
    public partial class bill : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
      Label1.Text = Session["oodd"].ToString();
         //   Label1.Text = "order810129920229i36j";
            Label2.Text = Label1.Text;
            findorderdate(Label2.Text);
            findaddress(Label2.Text);
            showgrid(Label2.Text);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            export();
        }
        private void export()
        {
            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment;filename=Bill.pdf");
            HtmlForm form_nuevo = new HtmlForm();
            form_nuevo.Attributes.Add("RunAt", "Server");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);

            form_nuevo.Controls.Add(GridView1);

            Panel1.RenderControl(hw);
            GridView1.RenderControl(hw);
            StringReader sr = new StringReader(sw.ToString());
            Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 100f, 0f);
            HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
            PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
            pdfDoc.Open();
            htmlparser.Parse(sr);
            pdfDoc.Close();

            
            Response.Write(pdfDoc);
            Response.End();


        }
        private void findorderdate(string text)
        {
            String mycon = "Data Source=LAPTOP-1GTVUSD3\\SQLEXPRESS ; Initial Catalog=VivBeads ; Integrated Security=SSPI ";
            String myquery = "Select * from OrrDetail where OId='" + text + "'";
            SqlConnection con = new SqlConnection(mycon);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Label3.Text = ds.Tables[0].Rows[0]["DateOfPurchase"].ToString();
            }
            con.Close();
        }
        private void findaddress(string text)
        {
            String mycon = "Data Source=LAPTOP-1GTVUSD3\\SQLEXPRESS ; Initial Catalog=VivBeads ; Integrated Security=SSPI ";
            String myquery = "Select * from OrAddress where OId='" + text + "'";
            SqlConnection con = new SqlConnection(mycon);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Label4.Text = ds.Tables[0].Rows[0]["Address"].ToString();
            }
            con.Close();
        }
        private void showgrid(string text)
        {

            DataTable dt = new DataTable(); DataRow dr;
            int sr;
           
            dt.Columns.Add("sno");
            dt.Columns.Add("id");
            dt.Columns.Add("name");
            dt.Columns.Add("quantity");
            dt.Columns.Add("price");
            dt.Columns.Add("totalprice");
            String mycon = "Data Source=LAPTOP-1GTVUSD3\\SQLEXPRESS ; Initial Catalog=VivBeads ; Integrated Security=SSPI ";
            SqlConnection scon = new SqlConnection(mycon);
            String myquery = "select * from OrrDetail where OId='" + text + "'";
            SqlCommand cmd = new SqlCommand();

            cmd.CommandText = myquery;
            cmd.Connection = scon;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            int totalrows = ds.Tables[0].Rows.Count;
            int i = 0;
            int grandtotal = 0;
            while (i < totalrows)
            {
                sr = dt.Rows.Count;
                dr = dt.NewRow();
                dr["id"] = sr + 1;

                dr["name"] = ds.Tables[0].Rows[i]["ProductName"].ToString();
                dr["quantity"] = ds.Tables[0].Rows[i]["Quantity"].ToString();
                dr["price"] = ds.Tables[0].Rows[i]["ProductPrice"].ToString();
                int price = Convert.ToInt16(ds.Tables[0].Rows[i]["ProductPrice"].ToString());
                int quantity = Convert.ToInt16(ds.Tables[0].Rows[i]["Quantity"].ToString());
                int totalprice = price * quantity;
                dr["totalprice"] = totalprice;
                grandtotal = grandtotal + totalprice;
                dt.Rows.Add(dr);
                i = i + 1;
            }
            GridView1.DataSource = dt;
            GridView1.DataBind();
            Label6.Text = grandtotal.ToString();


        }
    }
}

    