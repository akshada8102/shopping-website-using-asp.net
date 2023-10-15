<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminHomePage.aspx.cs" Inherits="VivBeads.AdminHomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <style type="text/css">
   .aligncenter {  text-align: center; }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <br />
    
        <div class="aligncenter">
        <br />
        <strong>
           
            <br />
           
        <asp:Label ID="Label2" runat="server" CssClass="auto-style12" EnableViewState="False" Font-Size="60px" Text="Welcome Admin....."></asp:Label>
        </strong>
        <span class="auto-style12">&nbsp;<br />
                <br />
                <br />
        <asp:Button ID="Button6" runat="server" Text="Add Products" BackColor="#CC0000" Font-Size="XX-Large" ForeColor="White" Height="77px" Width="700px" OnClick="Button6_Click" />
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   <asp:Button ID="Button7" runat="server" Text="Add Customer" BackColor="#CC0000" Font-Size="XX-Large" ForeColor="White" Height="77px" Width="700px" OnClick="Button7_Click"/>
            <br />
        <br />
              <asp:Button ID="Button1" runat="server" Text="Delete Products" BackColor="#CC0000" Font-Size="XX-Large" ForeColor="White" Height="77px" Width="700px" OnClick="Button1_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button8" runat="server" Text="Update Customer" BackColor="#CC0000" Font-Size="XX-Large" ForeColor="White" Height="77px" Width="700px" OnClick="Button8_Click" />
            <br />
        <br />
              <asp:Button ID="Button2" runat="server" Text="Update Products" BackColor="#CC0000" Font-Size="XX-Large" ForeColor="White" Height="77px" Width="700px" OnClick="Button2_Click" />
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button9" runat="server" Text="Delete Customer" BackColor="#CC0000" Font-Size="XX-Large" ForeColor="White" Height="77px" Width="700px" OnClick="Button9_Click"  />
            <br />
            <br />
              <asp:Button ID="Button10" runat="server" Text="View Products" BackColor="#CC0000" Font-Size="XX-Large" ForeColor="White" Height="77px" Width="700px" OnClick="Button10_Click1" />
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button12" runat="server" Text="View Customer" BackColor="#CC0000" Font-Size="XX-Large" ForeColor="White" Height="77px" Width="700px" OnClick="Button12_Click1" />
            <br />
            <br />
              <asp:Button ID="Button13" runat="server" Text="View FeedBack" BackColor="#CC0000" Font-Size="XX-Large" ForeColor="White" Height="77px" Width="700px" OnClick="Button13_Click" />
            <br />
            <br />
              <asp:Button ID="Button14" runat="server" Text="View Orders" BackColor="#CC0000" Font-Size="XX-Large" ForeColor="White" Height="77px" Width="700px" OnClick="Button14_Click"  />
            <br />
            <br />
            <br />
        <br />
             
            </span>
             </div>
&nbsp;

          
   
</asp:Content>
