<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="UpdateCustomer.aspx.cs" Inherits="VivBeads.UpdateCustomer" %>
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
     <h1 align="center" class="auto-style18">&nbsp;</h1>
    <h1 align="center" class="auto-style18">Update Customer</h1>
             &nbsp;<br /> 
                  <table Border="0" align="center" class="auto-style20">
                        <tr>
                          <td>
                               <asp:Label ID="Label6" runat="server" Text="Customer Id :" CssClass="auto-style18"></asp:Label>
                          </td>
                          <td>
                               <asp:TextBox ID="TextBox5" runat="server" Height="60px" Width="483px"></asp:TextBox>
                          </td>
                      </tr>
                      <br /> 
                      <tr>
                          <td>
                               <asp:Label ID="Label2" runat="server" Text="Customer Name :" CssClass="auto-style18"></asp:Label>
                          </td>
                          <td>
                               <asp:TextBox ID="TextBox2" runat="server" Height="60px" Width="483px"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td>
                               <asp:Label ID="Label3" runat="server" Text="Mobile Number :" CssClass="auto-style18"></asp:Label>
                          </td>
                          <td>
                                <asp:TextBox ID="TextBox1" runat="server" Height="60px"  Width="483px" ></asp:TextBox><br />
                              <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Please Enter the Correct Mobile Number.." style="font-size: x-large" ValidationExpression="[0-9]{10}" ControlToValidate="TextBox1" ></asp:RegularExpressionValidator>
                          </td>
                      </tr>
                      <tr>
                          <td>
                              <asp:Label ID="Label4" runat="server" Text="Username :" CssClass="auto-style18"></asp:Label>
                          </td>
                          <td>
                                <asp:TextBox ID="TextBox7" runat="server" Height="60px"  Width="483px" ></asp:TextBox><br />
                                    <asp:RegularExpressionValidator  ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter the Valid Email Address.."  ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="TextBox7" CssClass="auto-style21"   ></asp:RegularExpressionValidator>

                          </td>
                      </tr>
                      <tr>
                          <td>
                              <asp:Label ID="Label5" runat="server" Text="Password :" CssClass="auto-style18"></asp:Label>
                          </td>
                          <td>
                               <asp:TextBox ID="TextBox4" runat="server" Height="60px"  Width="483px"></asp:TextBox>
                          </td>
                      </tr>
                      
                       <tr>
                          <td>
                               <asp:Label ID="Label7" runat="server" Text="Confirm Password :" CssClass="auto-style18"></asp:Label>
                          </td>
                          <td>
                                 <asp:TextBox ID="TextBox6" runat="server" Height="60px"  Width="483px"></asp:TextBox>
                          </td>

                      </tr>
                       <tr>
                          <td>
                               <asp:Label ID="Label1" runat="server" Text="Usertype :" CssClass="auto-style18"></asp:Label>
                          </td>
                          <td>
                                 <asp:TextBox ID="TextBox3" runat="server" Height="60px"  Width="483px"></asp:TextBox>
                          </td>

                      </tr>
                      <tr>
                          <td align="center" colspan="2">
                                <asp:Button ID="Button10" runat="server" OnClick="Button10_Click" Text="Update Customer" BackColor="#CC6600" ForeColor="White" Height="54px" Width="326px" Font-Size="X-Large" />
                          </td>
                      </tr>
                  <tr>
                      <td   align="center"  class="auto-style19" colspan="2">
                             <asp:Label ID="Label8" runat="server" CssClass="auto-style18" ></asp:Label>
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
