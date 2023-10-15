<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="VivBeads.Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
       <style type="text/css">
        .auto-style12 {
            font-size: xx-large;
        }
        .auto-style13 {
            height: 86px;
        }
        .auto-style14 {
            height: 98px;
        }
        .auto-style17 {
            height: 85px;
        }
        .auto-style18 {
            font-size: x-large;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div align="center">
              <br />
              <br />
                   <br />
             <br />  <strong><span class="auto-style18">Total Number of Products&nbsp;in Cart : </span> <asp:Label ID="Label1" runat="server" Text="" CssClass="auto-style18"></asp:Label>
              </strong>
           
             
            
            <asp:DataList ID="DataList11" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="4" RepeatDirection="Horizontal" Height="228px" Width="312px" CellSpacing="80" OnItemCommand="DataList11_ItemCommand"  >
                 <ItemTemplate>
                <table border="0">
                   
                     <tr>
                        <td>
                            <asp:ImageButton    width="269px" height ="371px" ID="ProductImage" runat="server" Text='<%# Eval("ProductImage") %>' ImageUrl='<%# Eval("ProductImage") %>'  />
                        </td>
                    </tr>
                     <tr>
                        <td  align="center" class="auto-style14">
                            <span class="auto-style12"><strong>Price :</strong> Rs .</span> <asp:Label ID="ProductPriceLabel" runat="server" Font-Size="XX-Large" Text='<%# Eval("ProductPrice") %>' />
                        </td>
                    </tr>
                     <tr>
                        <td align="center" class="auto-style17"  Font-Size="XX-Large" >
                            <span class="auto-style12"><strong>Quantity </strong></span>:&nbsp;
                            <asp:DropDownList ID="DropDownList1" runat="server" Height="40px" Width="102px" Font-Bold="True" Font-Size="Large">
                                <asp:ListItem font="X-Large">1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                         <tr>
                             <td align="center">
                                 <asp:ImageButton ID="ImageButton1" runat="server"  height="50px"    width="160px" ImageUrl="~/images/addtocart.png" CommandArgument='<%# Eval("ProductId") %>' CommandName="addtocart"   />
                                
                             </td>
                         </tr>
                    </tr>
                </table>
               
                  
                </ItemTemplate>
            </asp:DataList>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VivBeadsConnectionString %>" SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>
            <br />
              <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:VivBeadsConnectionString %>" SelectCommand="SELECT * FROM [Product] WHERE ([Category] = @Category)">
                  <SelectParameters>
                      <asp:QueryStringParameter Name="Category" QueryStringField="cat" Type="String" />
                  </SelectParameters>
              </asp:SqlDataSource>
            <br />
            <br />
            <br />
            <br />
        </div>
</asp:Content>
