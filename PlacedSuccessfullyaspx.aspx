<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="PlacedSuccessfullyaspx.aspx.cs" Inherits="VivBeads.PlacedSuccessfullyaspx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <style type="text/css">
        .auto-style12 {
            font-size: xx-large;
            color: #FF0000;
        }
        .auto-style13 {
            color: #0066FF;
            font-size: x-large;
        }
          </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
           <strong>
    <asp:Label ID="Label2" runat="server" Text="Your Order has been Successfully Placed......" CssClass="auto-style12" style="font-size: xx-large" ForeColor="#FF3300"></asp:Label>
    <br />
    <br />

    <br />
             <asp:HyperLink ID="HyperLink2" runat="server" CssClass="auto-style13" NavigateUrl="~/bill.aspx" style="font-size: x-large">Download Your Bill....</asp:HyperLink>
               <br />
               <br />
    <br />

         <asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style13" NavigateUrl="~/feedback.aspx" style="font-size: x-large">FeedBack</asp:HyperLink>
    </strong>
</asp:Content>
