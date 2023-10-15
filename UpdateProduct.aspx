<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="UpdateProduct.aspx.cs" Inherits="VivBeads.UpdateProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <style type="text/css">
        .auto-style18 {
            font-size: 50px;
        }
        .auto-style19 {
            height: 28px;
        }
        .auto-style20 {
            width: 962px;
            height: 653px;
        }
    .auto-style21 {
        font-size: x-large;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 align="center" class="auto-style18">Update Products</h1>
             &nbsp;<br /> 
                  <table Border="0" align="center" class="auto-style20">
                        <tr>
                          <td>
                               <asp:Label ID="Label1" runat="server" Text="Product ID for Updation :" CssClass="auto-style18"></asp:Label>
                          </td>
                          <td>
                               <asp:TextBox ID="TextBox3" runat="server" Height="60px" Width="483px"></asp:TextBox>
                          </td>
                      </tr>
                      
                      <tr>
                          <td>
                               <asp:Label ID="Label3" runat="server" Text="New Product Name :" CssClass="auto-style18"></asp:Label>
                          </td>
                          <td>
                                <asp:TextBox ID="TextBox1" runat="server" Height="60px"  Width="483px" ></asp:TextBox><br />

                          </td>
                      </tr>
                      <tr>
                          <td>
                              <asp:Label ID="Label4" runat="server" Text="New Product Image :" CssClass="auto-style18"></asp:Label>
                          </td>
                          <td>
                                <asp:FileUpload ID="FileUpload1" runat="server"  Height="60px"  Width="483px"/>
                          </td>
                      </tr>
                      <tr>
                          <td>
                              <asp:Label ID="Label5" runat="server" Text="New Product Price :" CssClass="auto-style18"></asp:Label>
                          </td>
                          <td>
                               <asp:TextBox ID="TextBox4" runat="server" Height="60px"  Width="483px"></asp:TextBox><br />
                                <asp:RegularExpressionValidator  ID="RegularExpressionValidator1" runat="server" ErrorMessage="Only Numbers are allowed.."  ValidationExpression="^\d+$" CssClass="auto-style21" ControlToValidate="TextBox4"></asp:RegularExpressionValidator>
                          </td>
                      </tr>
                      
                       <tr>
                          <td>
                               <asp:Label ID="Label7" runat="server" Text="New Category Name :" CssClass="auto-style18"></asp:Label>
                          </td>
                          <td>
                                 <asp:TextBox ID="TextBox6" runat="server" Height="60px"  Width="483px"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td align="center" colspan="2">
                                <asp:Button ID="Button10" runat="server" OnClick="Button10_Click" Text="Update Product" BackColor="#CC6600" ForeColor="White" Height="54px" Width="326px" Font-Size="X-Large" />
                          </td>
                      </tr>
                  <tr>
                      <td   align="center"  class="auto-style19" colspan="2">
                             <asp:Label ID="Label8" runat="server" CssClass="auto-style18" ></asp:Label>
                      </td>
                  </tr>
                  </table>

             
                <br />
                &nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VivBeadsConnectionString %>" SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>

            <p>
                 <asp:GridView ID="GridView1" runat="server" align="center" DataSourceID="SqlDataSource1" EnableModelValidation="True"></asp:GridView>
            </p>
            <p>
                <br />
            </p>
            <p>
            </p>
            <p>
            </p>
            <p>
            </p>
            <p>
            </p> 
</asp:Content>
