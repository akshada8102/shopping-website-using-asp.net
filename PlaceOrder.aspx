<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="PlaceOrder.aspx.cs" Inherits="VivBeads.PlaceOrder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .auto-style12 {
            width: 49%;
            background-color:burlywood;
            height: 418px;
        }
        .auto-style17 {
            margin-top: 0px;
             font-size: large;
         }
        .auto-style18 {
            width: 314px;
            height: 97px;
            font-size: x-large;
            
        }
        .auto-style19 {
            height: 97px;
        }
        .auto-style20 {
            width: 314px;
            height: 66px;
            font-size: x-large;
        }
        .auto-style21 {
            height: 66px;
        }
        .auto-style22 {
            width: 314px;
            height: 67px;
            font-size: x-large;
        }
        .auto-style23 {
            height: 67px;
        }
        .auto-style25 {
            text-align: left;
        }
        .auto-style26 {
            color: #0066FF;
        }
        .auto-style27 {
            font-size: x-large;
        }
         .auto-style28 {
             width: 314px;
             height: 84px;
             font-size: x-large;
         }
         .auto-style29 {
             height: 84px;
         }
         .auto-style30 {
             font-size: large;
         }
         .auto-style31 {
             width: 49%;
             background-color: burlywood;
             height: 418px;
             font-size: large;
         }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style12" >
        <tbody class="auto-style25">
        <tr>
            <td class="auto-style22"><strong><span class="auto-style26">Order ID</span> :</strong></td>
            <td class="auto-style23">
                <asp:Label ID="Label1" runat="server" CssClass="auto-style27"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style20"><strong><span class="auto-style26">Order Date</span> :</strong></td>
            <td class="auto-style21">
                <asp:Label ID="Label3" runat="server" CssClass="auto-style27"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style28"><strong><span class="auto-style26">Type Your Address</span> :</strong></td>
            <td class="auto-style29">
               
                <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style17" Height="93px" Width="468px"></asp:TextBox>
               
            &nbsp;<br />
                <strong>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass="auto-style30" ErrorMessage="Please...Enter your Address." ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
&nbsp;</strong></td>
        </tr>
        <tr>
            <td class="auto-style18"><strong><span class="auto-style26">mobile Number</span>&nbsp; :</strong></td>
            <td class="auto-style19">
            
                <asp:TextBox ID="TextBox2" runat="server" Height="39px" Width="462px" CssClass="auto-style30"></asp:TextBox>
            
                <br />
                <strong>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" CssClass="auto-style30" ErrorMessage="Please...Enter your Mobile Number." ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" CssClass="auto-style31" ErrorMessage="Please Enter a valid Phone Number." ValidationExpression="[0-9]{10}" ControlToValidate="TextBox2"></asp:RegularExpressionValidator>
                   </strong>
            
            </td>
        </tr>
        <tr >
            <td colspan="2">
             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" EnableModelValidation="True" ForeColor="#333333" GridLines="Vertical" Height="461px" ShowFooter="True" Width="854px" >
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="sno" HeaderText="Sr No.">
            <HeaderStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="id" HeaderText="Product ID ">
            <HeaderStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:ImageField DataImageUrlField="image" HeaderText="Product Image"  >
                <ControlStyle  width="269px" height ="371px"  />
                <HeaderStyle HorizontalAlign="Center" />
            </asp:ImageField>
            <asp:BoundField DataField="name" HeaderText="Product Name">
            <HeaderStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="price" HeaderText="Price">
            <HeaderStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="quantity" HeaderText="Quantity">
            <HeaderStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="totalprice" HeaderText="Total Price">
            <HeaderStyle HorizontalAlign="Center" />
            </asp:BoundField>
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" Height="75px" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
    </asp:GridView>
                </td>
        </tr>
         <tr>
            <td colspan="2" align="center">

                <strong>

                <asp:Button ID="Button6" runat="server" Text="Place Order"  BackColor="#5D7B9D" Height="55px" Width="267px" BorderColor="BurlyWood" OnClick="Button6_Click" CssClass="auto-style27" ForeColor="White" />

                </strong>

            </td>
        </tr>
    </table>
</asp:Content>
