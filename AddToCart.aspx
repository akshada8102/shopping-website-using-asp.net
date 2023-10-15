<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="AddToCart.aspx.cs" Inherits="VivBeads.AddToCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .newStyle19 {
            font-size: 50px;
        }
        .auto-style13 {
            color: #0000FF;
        }
         .auto-style14 {
             font-size: xx-large;
             text-decoration: underline;
         }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <strong><span class="auto-style14">Welcome to your Cart....</span></strong><br />
   <br />
    <br />
    <br />
        &nbsp;Total Number of Product In&nbsp; Your Cart is&nbsp;
        <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
        <asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style13" Font-Bold="True" Font-Size="Medium" NavigateUrl="~/Products.aspx">Continue Shopping</asp:HyperLink>
        <br />
    <br />
        </strong>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" EnableModelValidation="True" ForeColor="#333333" GridLines="Vertical" Height="461px" ShowFooter="True" Width="854px" OnRowDeleting="GridView1_RowDeleting">
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
            <asp:CommandField DeleteText="Remove" ShowDeleteButton="True" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" Height="75px" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
    </asp:GridView>
    <asp:Button ID="Button6" runat="server" BackColor="#006699"  Font-Bold="True" Font-Size="Large" ForeColor="White" Height="51px" Text="Check Out" Width="854px" OnClick="Button6_Click" />
    <p>
        &nbsp;</p>
</asp:Content>
