<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="bill.aspx.cs" Inherits="VivBeads.bill" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .tab{
            width: 100%;
        }
        .tab2 {
            width: 99%;
            height: 165px;
        }
        .tab3 {
            height: 96px;
        }

       .auto-style4 {
           width: 429px;
            text-align: left;
        }
       .auto-style7 {
           text-align: center;
       }
        .auto-style8 {
            height: 78px;
            text-align: left;
        }
     
        .auto-style9 {
            text-align: left;
        }
     
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
       
            <strong>
            <br class="auto-style2" />
            </strong><span class="auto-style2"><strong>Order id:</strong>&nbsp; </span>
            <asp:Label ID="Label1" runat="server" Text="Label" CssClass="auto-style2"></asp:Label>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" Height="62px" OnClick="Button1_Click" Text="Download pdf" Width="165px" BackColor="#FF3300" ForeColor="White" />
        </p>
        <asp:Panel ID="Panel1" runat="server">
            <table class="tab" border="1" >
                 <tr>
                    <td class="auto-style7"><strong>Bill</strong></td>
                </tr>
                <tr>
                    <td class="auto-style8"><strong>order no </strong> &nbsp;&nbsp;&nbsp; :
                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <strong>order Date</strong> :
                        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <br />
                        <table class="tab2" border="1">
                            <tr >
                                <td class="auto-style4" ><strong>Buyer Address :<br /> </strong>
                                    <asp:Label ID="Label4" runat="server" Text="Label" CssClass="auto-style3"></asp:Label>
                                </td>
                                <td class="auto-style9" ><strong>Seller Address :</strong>
                                    <br />
                                    <asp:Label ID="Label7" runat="server" Text="Ram mandir ,Mumbai."></asp:Label>
                                    <br />
                                    </td>
                            </tr>
                        </table>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td>
                        <br />
                        <asp:GridView ID="GridView1" runat="server" Height="307px" Width="1306px" AutoGenerateColumns="False" class=" auto-style3 ">
                            <Columns>
                                
                                <asp:BoundField DataField="id" HeaderText="SNo.">
                                <ItemStyle Font-Bold="True" />
                                </asp:BoundField>
                                <asp:BoundField DataField="name" HeaderText="Name">
                                <ControlStyle Font-Bold="True" />
                                </asp:BoundField>
                                <asp:BoundField DataField="quantity" HeaderText="Quantity">
                                <ControlStyle Font-Bold="True" />
                                </asp:BoundField>
                                <asp:BoundField DataField="price" HeaderText="price" />
                                <asp:BoundField DataField="totalprice" HeaderText="Total Price" />
                            </Columns>
                        </asp:GridView>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7"><span class="auto-style2"><strong>Total</strong> : </span>
                        <asp:Label ID="Label6" runat="server" Text="Label" CssClass="auto-style2"></asp:Label>
                    </td>
                </tr>

            </table>
            <br />
            <br />
        </asp:Panel>
    <div align="center">
        <strong>
                           Thank You.<br />
      </strong>
   </div>
      
</asp:Content>
