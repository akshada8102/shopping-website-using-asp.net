<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Report1.aspx.cs" Inherits="VivBeads.Report1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     
        <div>
        </div>
        <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true" DisplayToolbar="False" ReportSourceID="CrystalReportSource1" ToolPanelView="None" ReuseParameterValuesOnRefresh="True" />
        <CR:CrystalReportSource ID="CrystalReportSource1" runat="server">
            <Report FileName="CrystalReport2.rpt">
            </Report>
        </CR:CrystalReportSource>
   
</asp:Content>
