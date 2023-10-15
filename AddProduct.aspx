<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeFile="AddProduct.aspx.cs" Inherits="VivBeads.AddProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <style type="text/css">
        .auto-style18 {
            font-size: 50px;
        }
        .auto-style19 {
            height: 28px;
        }
          .auto-style22 {
              text-align: left;
          }
          .auto-style23 {
              width: 458px;
          }
          .auto-style24 {
              font-size: xx-large;
          }
          .auto-style25 {
              font-size: x-large;
          }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 align="center" class="auto-style18">&nbsp;</h1>
    <h1 align="center" class="auto-style18">Add Products</h1>
             &nbsp;<br /> 
                  <table Border="0" align="center" >
                       
                  
                      <tr>
                          <td class="auto-style23">
                               <asp:Label ID="Label3" runat="server" Text="New Product Name :" CssClass="auto-style18"></asp:Label>
                          </td>
                          <td>
                                <asp:TextBox ID="TextBox1" runat="server" Height="60px"  Width="483px" Font-Size="Large" ></asp:TextBox>
                                <br />
                          </td>
                      </tr>
                      <tr>
                          <td class="auto-style23">
                              <asp:Label ID="Label4" runat="server" Text="New Product Image :" CssClass="auto-style18"></asp:Label>
                          </td>
                          <td>
                                <asp:FileUpload ID="FileUpload1" runat="server"  Height="60px"  Width="483px"/>
                          </td>
                      </tr>
                      <tr>
                          <td class="auto-style23">
                              <asp:Label ID="Label5" runat="server" Text="New Product Price :" CssClass="auto-style18"></asp:Label>
                          </td>
                          <td class="auto-style22">
                               <asp:TextBox ID="TextBox4" runat="server" Height="60px"  Width="483px" Font-Size="Large"></asp:TextBox><br />
                            
                              <asp:RegularExpressionValidator  ID="RegularExpressionValidator1" runat="server" ErrorMessage="Only Numbers are allowed.." CssClass="auto-style25" ControlToValidate="TextBox4" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
                          </td>
                     
                      </tr>
                      
                       <tr>
                          <td class="auto-style23">
                               <asp:Label ID="Label7" runat="server" Text="New Category Name :" CssClass="auto-style18"></asp:Label>
                          </td>
                          <td>
                                 <asp:TextBox ID="TextBox6" runat="server" Height="60px"  Width="483px" Font-Size="Large"></asp:TextBox><br />
                            
                                 <br />
                          </td>
                      </tr>
                      <tr>
                      <td   align="center"  class="auto-style19" colspan="2">
                             <asp:Label ID="Label1" runat="server" Text="" ForeColor="Red" CssClass="auto-style24" ></asp:Label>
                             <br />
                      </td>
                      <tr>
                          <td align="center" colspan="2">
                                <asp:Button ID="Button10" runat="server" OnClick="Button10_Click" Text="Add Product" BackColor="#CC6600" ForeColor="White" Height="54px" Width="326px" Font-Size="X-Large" />
                          </td>
                      </tr>
                  <tr>
                      <td   align="center"  class="auto-style19" colspan="2">
                             <asp:Label ID="Label8" runat="server" CssClass="auto-style18" ></asp:Label>
                             <br />
                      </td>
                  </tr>
                  </table>

             
              
             
                <br />
                &nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VivBeadsConnectionString %>" SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>

            <p>
                 <asp:GridView ID="GridView1" runat="server" align="center" EnableModelValidation="True" CellPadding="4" ForeColor="#333333" GridLines="None" DataSourceID="SqlDataSource1" >
                     <AlternatingRowStyle BackColor="White" />
                     <EditRowStyle BackColor="#2461BF" />
                     <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                     <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                     <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                     <RowStyle BackColor="#EFF3FB" />
                     <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
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
