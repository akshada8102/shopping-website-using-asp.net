<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="feedback.aspx.cs" Inherits="VivBeads.feedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style12 {
            color: #0000FF;
        }
        .auto-style13 {
            font-size: large;
        }
        .auto-style15 {
            font-size: x-large;
        }
        .auto-style16 {
            color: #FF0000;
            font-size: x-large;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center">

        <asp:Image ID="Image2" runat="server" ImageUrl="~/images/feedback.png" Height="302px" Width="608px" />

        <br />
        <h1 class="auto-style12">Anything to be Improved...??</h1>

    </div>
    <div align="center">
        <asp:TextBox ID="TextBox1" runat="server" Height="149px" Width="478px" CssClass="auto-style13"></asp:TextBox>

        <p class="auto-style12">


            <asp:Label  ID="error" runat="server" CssClass="auto-style15" ForeColor="#FF3300" Text=" "></asp:Label>


            <asp:Label ID="Label1" runat="server" CssClass="auto-style16" Text=""></asp:Label>


    </div>
    <div align="center">

        <asp:Button ID="Button7" runat="server" BackColor="Blue" Font-Size="Large" ForeColor="White" Height="54px" Text="Submit" Width="227px" OnClick="Button7_Click" />

    </div>
    <div align="center">

        <p class="auto-style12">
            &nbsp;</p>

    </div>
</asp:Content>
