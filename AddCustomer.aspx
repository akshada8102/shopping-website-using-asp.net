<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AddCustomer.aspx.cs" Inherits="VivBeads.AddCustomer" %>
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
          .auto-style22 {
              font-size: x-large;
              color: #FF0000;
          }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 align="center" class="auto-style18">&nbsp;</h1>
    <h1 align="center" class="auto-style18">Add Customer</h1>
             &nbsp;<br /> 
                  <table Border="0" align="center" class="auto-style20">
                       
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
                                <asp:TextBox ID="TextBox1" runat="server" Height="60px"  Width="483px" ></asp:TextBox>
                                <br />
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox1" CssClass="auto-style25" ErrorMessage="Please Enter the Correct Mobile Number.." style="font-size: x-large" ValidationExpression="[0-9]{10}" ></asp:RegularExpressionValidator>
                          </td>
                      </tr>
                      <tr>
                          <td>
                              <asp:Label ID="Label4" runat="server" Text="Username :" CssClass="auto-style18"></asp:Label>
                          </td>
                          <td>
                                <asp:TextBox ID="TextBox7" runat="server" Height="60px"  Width="483px" ></asp:TextBox><br />
                               <asp:RegularExpressionValidator  ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter the Valid Email Address.." ControlToValidate="TextBox7" CssClass="auto-style21" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"   ></asp:RegularExpressionValidator>

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
                              <asp:Label ID="Label6" runat="server" Text="" CssClass="auto-style22"></asp:Label>
                          </td>
                      </tr>
                      <tr>
                          <td align="center" colspan="2">
                                <asp:Button ID="Button10" runat="server" OnClick="Button10_Click" Text="Add Customer" BackColor="#CC6600" ForeColor="White" Height="54px" Width="326px" Font-Size="X-Large" />
                          </td>
                      </tr>
                

                  </table>

             
                <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VivBeadsConnectionString %>" SelectCommand="SELECT * FROM [Registration]"></asp:SqlDataSource>

            <p>
              
                &nbsp;</p>
    <p>
              
                <asp:GridView ID="GridView1" runat="server" align="center" AutoGenerateColumns="False" EnableModelValidation="True" DataSourceID="SqlDataSource1">
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
