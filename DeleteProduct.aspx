<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="DeleteProduct.aspx.cs" Inherits="VivBeads.DeleteProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .auto-style18 {
            font-size: 50px;
        }
        .auto-style19 {
            height: 28px;
        }
        .auto-style20 {
            width: 929px;
            height: 353px;
             margin-top: 0px;
         }
         .auto-style22 {
             height: 122px;
         }
         .auto-style23 {
             height: 63px;
         }
         .auto-style24 {
             font-size: x-large;
         }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 align="center" class="auto-style18">Delete Products</h1>
             &nbsp;<br /> 
                  <table Border="0" align="center" class="auto-style20">
                      <tr>
                          <td class="auto-style22">
                               <asp:Label ID="Label2" runat="server" Text="Product ID :" CssClass="auto-style18"></asp:Label>
                          </td>
                          <td class="auto-style22">
                               <asp:TextBox ID="TextBox2" runat="server" Height="60px" Width="483px"></asp:TextBox>
                               <br />
                               <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" CssClass="auto-style24"  ValidationExpression="^\d+$" ErrorMessage="Please Enter the Valid Id."></asp:RegularExpressionValidator>
                               <strong>
                               <br />
                               </strong>
                          </td>
                      </tr>
                     <tr>
                      <td   align="center"  class="auto-style19" colspan="2">
                          
                             <asp:Label ID="Label1" runat="server" Text="" ForeColor="Red" CssClass="auto-style24"  ></asp:Label>
                         
                      
                      </td>
                  </tr>
                      <tr>
                          <td align="center" colspan="2" class="auto-style23">
                                <asp:Button ID="Button10" runat="server" OnClick="Button10_Click" Text="Delete Product" BackColor="#CC6600" ForeColor="White" Height="54px" Width="326px" Font-Size="X-Large" />
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
          
                <asp:GridView ID="GridView1" runat="server"  AllowPaging="True"  align="center" DataSourceID="SqlDataSource1" EnableModelValidation="True">
  
</asp:GridView>
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
