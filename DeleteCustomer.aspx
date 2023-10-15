<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="DeleteCustomer.aspx.cs" Inherits="VivBeads.DeleteCustomer" %>
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
            height: 389px;
        }
          .auto-style21 {
              height: 150px;
          }
          .auto-style22 {
              font-size: x-large;
          }
          .auto-style23 {
              height: 70px;
          }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <h1 align="center" class="auto-style18">&nbsp;</h1>
    <h1 align="center" class="auto-style18">Delete Customer</h1>
             &nbsp;<br /> 
                  <table Border="0" align="center" class="auto-style20">
                      <tr>
                          <td class="auto-style21">
                               <asp:Label ID="Label2" runat="server" Text="Customer ID :" CssClass="auto-style18"></asp:Label>
                          </td>
                          <td class="auto-style21">
                               <asp:TextBox ID="TextBox2" runat="server" Height="60px" Width="483px"></asp:TextBox><br />
                              <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ValidationExpression="^\d+$" ErrorMessage="Please Enter the Valid Id." CssClass="auto-style22" ControlToValidate="TextBox2"></asp:RegularExpressionValidator>
                          </td>
                      </tr>
                     <tr>
                          <td align="center" colspan="2" class="auto-style23">
               <asp:Label ID="Label1" runat="server" Text="" ForeColor="Red" CssClass="auto-style22" ></asp:Label>
                          </td>
                      </tr>

                      <tr>
                          <td align="center" colspan="2">
                                <asp:Button ID="Button10" runat="server" OnClick="Button10_Click" Text="Delete Customer" BackColor="#CC6600" ForeColor="White" Height="54px" Width="326px" Font-Size="X-Large" />
                          </td>
                      </tr>

                  
                  </table>

             
                <br />
                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VivBeadsConnectionString %>" SelectCommand="SELECT * FROM [Registration]"></asp:SqlDataSource>

            <p>
              
                <asp:GridView ID="GridView1" runat="server" align="center" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EnableModelValidation="True">
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="Cus_Id" HeaderText="Cus_Id" ReadOnly="True" SortExpression="Cus_Id" />
                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                        <asp:BoundField DataField="num" HeaderText="num" SortExpression="num" />
                        <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                        <asp:BoundField DataField="pass" HeaderText="pass" SortExpression="pass" />
                        <asp:BoundField DataField="newpass" HeaderText="newpass" SortExpression="newpass" />
                        <asp:BoundField DataField="Usertype" HeaderText="Usertype" SortExpression="Usertype" />
                    </Columns>
                </asp:GridView>
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

