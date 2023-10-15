<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="VivBeads.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <style type="text/css">
      body{
            padding: 0 100px;
            background-image: url("images\\Artboard 1.jpg");
            background-repeat: no-repeat;
            background-size: 100%;

            
        }
      .newStyle3 {
        
              font-size: x-large;
            border-style: none;
         
            height:100%;
            width:100%;
        }
 
        .tablealignment {
            margin-top: 100px;
            float: right;
        }
        .auto-style11 {
          width: 559px;
      }
                   
        .auto-style5 {
            font-size: xx-large;
        }
         
      
         .auto-style12 {
             font-size: large;
         }
         
      
         .auto-style13 {
             color: #FF3300;
             font-size: large;
         }
         
      
         .auto-style14 {
             color: #0000FF;
             font-size: x-large;
             text-decoration: underline;
         }
         
      
         </style>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
      <div class="auto-style9">
       <table border="0" class="tablealignment" padding="15px">
           
            <tr>
               <td align="center" class="auto-style11" >
                    &nbsp;&nbsp; &nbsp;&nbsp;  <asp:Label ID="Label3" runat="server" CssClass="auto-style5" Text="Create Account" Font-Size="40px"></asp:Label>
               </td>
           </tr>
           <tr>
               <td class="auto-style11" >
                     &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;  <asp:Label ID="Label1" runat="server" CssClass="auto-style5" Text="Full Name :"></asp:Label>
               </td>
           </tr>
            <tr>
               <td class="auto-style11" >
                  &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;  <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style4" Height="41px" Width="447px"></asp:TextBox><br />
                    &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; <strong> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter your Name" ControlToValidate="TextBox1" Font-Size="Large"></asp:RequiredFieldValidator>
                   </strong>
                   <br />
               </td>
           </tr>
            <tr>
               <td class="auto-style11" >
                  &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;    <asp:Label ID="Label2" runat="server" CssClass="auto-style5" Text="Mobile Number :"></asp:Label>
               &nbsp;<strong><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" CssClass="auto-style12" ErrorMessage="Please Enter a valid Phone Number." ValidationExpression="[0-9]{10}" ControlToValidate="TextBox2"></asp:RegularExpressionValidator>
                   </strong>
               </td>
           </tr>
            <tr>
               <td class="auto-style11" >
                  &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;   <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style4" Height="41px" Width="451px"></asp:TextBox><br />
                     
                      &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;     <strong>     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"  Font-Size="Large" ErrorMessage="Please Enter your Mobile Number" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                   </strong>
               </td>
           </tr>
           <tr>
               <td class="auto-style11" >
                &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;     <asp:Label ID="Label7" runat="server" Text="UserName(Email) :" CssClass="auto-style5"></asp:Label>
               &nbsp;<strong><asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" CssClass="auto-style12" ErrorMessage="Please Enter a Valid Email Address." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="TextBox5"></asp:RegularExpressionValidator>
                   &nbsp;<asp:Label ID="Label8" runat="server" CssClass="auto-style13" Text=""></asp:Label>
                   </strong>
               </td>
           </tr>
           <tr>
               <td class="auto-style11" >
                   &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;   <asp:TextBox ID="TextBox5" runat="server" CssClass="auto-style4" Height="40px" Width="448px" ></asp:TextBox><br />
                     &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;    <strong>    <asp:RequiredFieldValidator ID="RequiredFieldValidator3"  Font-Size="Large" runat="server" ErrorMessage="Please Enter your Username" ControlToValidate="TextBox5"></asp:RequiredFieldValidator>
                   </strong>
               </td>
           </tr>
           <tr>
               <td class="auto-style11" >
                &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;      <asp:Label ID="Label4" runat="server" CssClass="auto-style5" Text="Password :"></asp:Label>
               </td>

           </tr>
            <tr>
               <td class="auto-style11" >
                &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;      <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style4"  TextMode="Password" Height="41px" Width="450px"></asp:TextBox><br />
                    &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;  <strong>  <asp:RequiredFieldValidator ID="RequiredFieldValidator5"  Font-Size="Large" runat="server" ErrorMessage="Please Enter your Password " ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                   </strong>&nbsp;<br />
               </td>

           </tr>
            <tr>
               <td class="auto-style11" >
                   &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;   <asp:Label ID="Label5" runat="server" CssClass="auto-style5" TextMode="Password" Text="Re-enter Password :"></asp:Label>
                   <strong>
                   <asp:CompareValidator ID="CompareValidator1" runat="server" Font-Size="Large" ErrorMessage="Password did not matched" ControlToCompare="TextBox3" ControlToValidate="TextBox4"></asp:CompareValidator>
                   </strong>
               </td>

           </tr>
            <tr>
               <td class="auto-style11" >
                  
                   &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;   <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style10" TextMode="Password" Height="41px" Width="449px"></asp:TextBox><br />
                   &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"  Font-Size="Large" ErrorMessage="Please Enter your Password again" ControlToValidate="TextBox4" ></asp:RequiredFieldValidator>
               </td>

           </tr>
            <tr align="center">
               <td class="auto-style11" >
                    <asp:Button ID="Button2" runat="server" BackColor="#993300" BorderStyle="None" CssClass="auto-style6" ForeColor="White" Text="Register" Height="47px" Width="148px" OnClick="Button2_Click" Font-Size="Large" />
               </td>

           </tr>

            <tr>
               <td align="center" class="auto-style11">
                                       <asp:Label ID="Label6" runat="server" Font-Size="X-Large"></asp:Label>
               </td>

           </tr>
            <tr>
               <td align="center" class="auto-style11">
                                  <asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style14" NavigateUrl="~/Login.aspx">Login</asp:HyperLink>
               </td>
               

           </tr>
       </table>
              </div> 
    </form>
</body>
</html>
