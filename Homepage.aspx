<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="Homepage.aspx.cs" Inherits="VivBeads.Homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <style type="text/css">
        .size {
            position: relative;
           
            align-content:center;
            padding:40px;
        }


        .imagesize{

             width :269px;
             height : 371px;
        }
       
        .padding{
            padding:20px;
        }

        .aligncenter { width: 100%; text-align: center; }
       
        
        .auto-style5 {
            width: 358px;
        }

        .auto-style8 {
            width: 358px;
            height: 90px;
        }
        .auto-style9 {
            font-size: x-large;
        }
        .auto-style12 {
            width: 358px;
            height: 142px;
        }
        .auto-style13 {
            width : 269px;
            height : 371px;
            margin-left: 1px;
        }
        .auto-style14 {
            width: 403px;
            height: 142px;
        }
        .auto-style15 {
            width: 403px;
        }
        .auto-style16 {
            width: 403px;
            height: 90px;
        }
        .auto-style17 {
            width: 442px;
        }
        .auto-style18 {
            width: 442px;
            height: 90px;
        }
     
        .newStyle21 {
            font-family: Arial;
            font-size: xx-large;
            text-align: center;
        }
     
        .auto-style19 {
            font-family: Arial;
            font-size: xx-large;
            text-align: center;
            color: #FF3300;
        }
     
        .auto-style20 {
            width: 403px;
            height: 367px;
        }
        .auto-style21 {
            width: 442px;
            height: 367px;
        }
     
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
      <div class="aligncenter ">
          <br />
          <strong>

          <asp:Label ID="Label8" runat="server" CssClass="auto-style19" Text="Label"></asp:Label>

          <br />

          </strong>
          <br />

      </div>
  <!---image slider---->
        <div class="container">
            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                  
                </ol>
                <!-- Wrapper for slides -->
                <div class="carousel-inner">
                    <div class="item active">
                        <img src="ImgSlider/image1.jpg" style="padding: 15px; height:450px; width: 100%;" >
                       
                    </div>
                    <div class="item">
                        <img src="ImgSlider/image2.jpg" style="height:450px" width:"100%">
                      
                    </div>
                   
                </div>
                <!-- Left and right controls -->
                <a class="left carousel-control" href="#myCarousel" data-slide="prev"><span class="glyphicon glyphicon-chevron-left">
                </span><span class="sr-only">Previous</span> </a><a class="right carousel-control"
                    href="#myCarousel" data-slide="next"><span class="glyphicon glyphicon-chevron-right">
                    </span><span class="sr-only">Next</span> </a>
            </div>
        </div>

        <!---image slider End---->
   
     <!---<a aria-label="Chat on WhatsApp" href="https://wa.me/918460265216"> &nbsp;<i class="fab fa-whatsapp fab-icon"></i><br /> ---->
             <br />
             <div  class="aligncenter " >

         <strong><asp:Label ID="Label1" runat="server" Text="Categories"  Font-Size="60px" ></asp:Label>
             </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
             <br />
        <table border="0"   padding="10px" spacing="40px"  align="center">
            <tr align="center">  
            
                <td class="auto-style14">
                       <strong>
                       <br class="auto-style9" />
                       <br />
                       <br />
                       <asp:Label ID="Label2" runat="server" Text="Jewellery Set" CssClass="auto-style9"></asp:Label>
                       <br class="auto-style9" />
                       </strong>
                </td>
                <td class="auto-style17" >
                    <strong>
                    <br />
                    <br />
                    <asp:Label ID="Label3" runat="server" Text="Anklet" CssClass="auto-style9"  ></asp:Label>
                    </strong>
                </td>
                 <td class="auto-style12">
                     <strong>
                     <br />
                     <br />
                    <asp:Label ID="Label4" runat="server" Text="Braclets" CssClass="auto-style9" ></asp:Label>
                     </strong>
            </td>
            </tr >
            <tr align="center">
                <td class="auto-style20">
                      <asp:ImageButton ID="ImageButton1" runat="server"  ImageUrl="~/images/jewelley.jpg" Width="268px" OnClick="ImageButton1_Click"  />
                   
                
                <td class="auto-style21">
                    <asp:ImageButton ID="ImageButton2" runat="server"  ImageUrl="~/images/Anklets.jpg" CssClass="auto-style13" OnClick="ImageButton2_Click" />
                </td>
                <td class="auto-style22">
                    <asp:ImageButton ID="ImageButton3" runat="server"  ImageUrl="~/images/braclet.jpeg"  CssClass="imagesize" OnClick="ImageButton3_Click" />
                </td>
            </tr>
            <br />

            <tr align="center">
                <td class="auto-style16">
                    <strong>
                    <br />
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="Label5" runat="server" Text="Neckace" CssClass="auto-style9"></asp:Label>
                    </strong>
                </td>
                 <td class="auto-style18">
                        <strong>
                        <br />
                        <br />
                        <br />
                        <br />
                        <asp:Label ID="Label6" runat="server" Text="Mangalsutras" CssClass="auto-style9" ></asp:Label>
                        </strong>
                </td>
                 <td class="auto-style8">
                     <br />
                     <strong>
                     <br />
                     <br />
                     <br />
                     <br />
                    <asp:Label ID="Label7" runat="server" Text="Others" CssClass="auto-style9" ></asp:Label>
                     <br class="auto-style9" />
                     </strong>
                </td>
            </tr>
            <tr align="center">
                <td class="auto-style15">
                    <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/images/necklace3.jpg"  CssClass="imagesize" OnClick="ImageButton4_Click"/>
                </td>
                 <td class="auto-style17">
                     <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="~/images/mangal.jpg"  CssClass="imagesize" OnClick="ImageButton5_Click" />
                </td>
                 <td class="auto-style5">
                     <asp:ImageButton ID="ImageButton6" runat="server"  ImageUrl="~/images/others2.jpg" CssClass="imagesize" OnClick="ImageButton6_Click" />
                </td>
            </tr>
           
        </table>
             <br />
                 <br />
                 <br />
          
                 <asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style9" NavigateUrl="~/Employement.aspx">Intrested in Making Bead Jewellery..??</asp:HyperLink><br />
       </div>


    
    </a>
</asp:Content>
