<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="VivBeads.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <style type="text/css">
        .newStyle1 {
            left: 500px;
        }
 
        
        .newStyle2 {
            top: 300px;
            position: fixed;
            left: 1000px;
        }
 
        
        .auto-style2 {
            top: 264px;
            position: fixed;
            left: 1000px;
            transform:translate(-50%,-50%);
            box-sizing:border-box;
            background:rgba(0,0,0,0.5);
        }
        .auto-style3 {
            top: 237px;
            position: fixed;
            left: 531px;
            height: 644px;
            width: 612px;
            transform:translate(-50%,-50%);
            box-sizing:border-box;
            background-color:#ceade4;
        }
 
        
        .auto-style4 {
            font-size: x-large;
            left: 531px;
            height: 644px;
        }
 
        
        .auto-style6 {
            font-size: x-large;
            margin-left: 0px;
            margin-top: 0px;
        }
 
      
        
        .newStyle3 {
            font-size: x-large;
            border-style: none;
         
            height:100%;
            width:100%;
        }
 
      
      
        
          .auto-style7 {
              font-size: xx-large;
              color: #000000;
          }
 
      
      
        
          .auto-style9 {
              font-size: xx-large;
          }
 
      
      
        
          </style>
    <title>Login</title>
   
    
</head>
<body>
    <form id="form1" runat="server">
        
         <asp:Image ID="Image1" runat="server" ImageUrl="~/images/Artboard 1.jpg" BackColor="Black" CssClass="newStyle3" EnableTheming="False"  />
    
            
          
            
            <br />
            <asp:Panel ID="Panel1" runat="server" CssClass="auto-style2" >
                <div class="auto-style3">
                    <br />
                    <br />
                     <span class="auto-style4"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong></span><strong>
                     &nbsp;&nbsp;&nbsp;<asp:Label ID="Label3" runat="server" CssClass="auto-style9" Text="Sign-In"></asp:Label>
                         <br />
                     <br class="auto-style4" />
                     <br class="auto-style4" />
                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; <asp:Label ID="label1"  runat="server" CssClass="auto-style7" Text="Username :" ForeColor="Black" ></asp:Label>
                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                           <br />
                           <br />
                     </strong><span class="auto-style4"><strong>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; </strong></span><strong>
                     <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style4" Height="50px" Width="493px"></asp:TextBox>
                     <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <br class="auto-style4" />
                     <br />
                     <br class="auto-style4" />
                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    
                    <asp:label ID="label2"   runat="server" CssClass="auto-style7" Text="Password :" ForeColor="Black" ></asp:label>
                     </strong><span class="auto-style4"><strong>&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                     <br />
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</strong></span><strong><asp:TextBox ID="TextBox2" TextMode="Password" runat="server" CssClass="auto-style4" Height="50px" Width="493px"></asp:TextBox>
                     <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br class="auto-style4" />
                          <br />
                         <br class="auto-style4" />
                     </strong><span class="auto-style4"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; </strong></span><strong>
                    &nbsp; &nbsp;&nbsp;&nbsp;   <asp:Button ID="Button1" runat="server" BackColor="#993300" BorderStyle="None" CssClass="auto-style6" ForeColor="White" Text="Sign In" Height="47px" Width="148px" OnClick="Button3_Click" />
                     <br class="auto-style4" />
                     <br class="auto-style4" />
                         <br />
                           
                     </strong><span class="auto-style4"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;</strong></span><strong><asp:Button BorderStyle="None"  BackColor="#993300" ID="Button3" ForeColor="White" runat="server" CssClass="newStyle3" Text="Create your VivBeads Account" Width="424px"  Height="54px" OnClick="Button5_Click" />
                     &nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                         <br />
                   
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;  <asp:HyperLink ID="HyperLink1" runat="server" Font-Size="X-Large"  fontcolor="blue" NavigateUrl="~/Homepage.aspx">Not now</asp:HyperLink>
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br class="auto-style4" />
                     </strong>
                </div>
            </asp:Panel>
      
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <br />
         <br />
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VivBeadsConnectionString %>" SelectCommand="SELECT * FROM [Registration]"></asp:SqlDataSource>
    </form>
</body>
</html>
