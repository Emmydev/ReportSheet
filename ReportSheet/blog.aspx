<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="blog.aspx.cs" Inherits="ReportSheet.blogsss" %>
<%@ Register Src="~/ErrorControl/ErrorDisplay.ascx" TagPrefix="uc1" TagName="ErrorDisplay" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <title>Myclasspapers: Blog</title>
    <!-- BOOTSTRAP CORE STYLE CSS -->
    <link href="assets2/css/bootstrap.css" rel="stylesheet"/>
	
	 <!-- Favicons -->
  <link href="img/favicon.png" rel="icon">
  <link href="img/apple-touch-icon.png" rel="apple-touch-icon">
  
    <!-- FONT AWESOME CSS -->
<link href="assets2/css/font-awesome.min.css" rel="stylesheet"/>

     <!-- FLEXSLIDER CSS -->
<link href="assets2/css/flexslider.css" rel="stylesheet"/>

    <!-- CUSTOM STYLE CSS -->
    <link href="assets2/css/style.css" rel="stylesheet"/>
<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
  <!-- Google	Fonts -->
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,300' rel='stylesheet' type='text/css' />
	
	<!-- Libraries CSS Files -->
  <link href="lib/nivo-slider/css/nivo-slider.css" rel="stylesheet">
  <link href="lib/owlcarousel/owl.carousel.css" rel="stylesheet">
  <link href="lib/owlcarousel/owl.transitions.css" rel="stylesheet">
  <link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="lib/animate/animate.min.css" rel="stylesheet">
  <link href="lib/venobox/venobox.css" rel="stylesheet">
    <style type="text/css">
        .auto-style1 {
            font-size: large;
        }
        .newStyle1 {
            border: 0px none #FFFFFF;
        }
        .auto-style3 {
            left: 0px;
            top: 0px;
        }
        .title3 {
            font-family: "Lucida Calligraphy";
        }
        .title2 {
            font-family: "Agency FB";
        }
        .newStyle2 {
            color: rgb(28, 43, 75);
        }
        .auto-style4 {
            font-size: small;
        }
        .auto-style5 {
            background: #f9f9f9 none repeat scroll 0 0;
            margin-bottom: 30px;
            overflow: hidden;
            padding-bottom: 20px;
            height: 201px;
        }
        .auto-style6 {
            border-collapse: collapse;
            width: 100%;
            max-width: 100%;
            text-align: left;
            margin-bottom: 20px;
        }
    </style>
    </head>
<body >

    <form id="form1" runat="server">

<div id="preloader"></div>
  <header>
    <!-- header-area start -->
    <div id="sticker" class="header-area">
      <div class="container">
        <div class="row">
          <div class="col-md-12 col-sm-12">
   <!-- Navigation -->
		<div class="navbar navbar-inverse navbar-fixed-top " id="menu">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#"><img class="logo-custom" src="assets2/img/CLP.png" alt=""  /></a>
            </div>
            <div class="navbar-collapse collapse move-me">
                   <ul class="nav navbar-nav navbar-right" id="submenu">
                    <li ><a href="index.aspx">HOME</a></li>
					 <li><a href="Login.aspx"> LOGIN</a></li>				 					 			                                      
                     <li><a href="Registration.aspx">REGISTER</a></li>					 
                     	<li><asp:LinkButton ID="lknLogOut" runat="server" OnClick="lknLogOut_Click">LOG OUT</asp:LinkButton></li>				 					 
                </ul>
            </div>
           
        </div>
    </div>		
      <!--NAVBAR SECTION END-->
	  </div>
	  </div>
	  </div>
	  </div>
	</header>				
       <%--<div class="home-sec" id="home" >--%>
        <div class="blog-sec">
           <div class="overlay">		   			             
		<div class="container">		
           <div class="row text-center " >           
               <div class="col-lg-12  col-md-12 col-sm-12">               
                <div class="flexslider set-flexi" id="main-section" >				
				<div class="header-bottom">
              <div class="layer2 wow zoomIn" data-wow-duration="1s" data-wow-delay=".4s">
                <h1 class="title2" style="color:white; font-family:effra"><b>Myclasspapers Blog</b></h1>
              </div>
             <%-- <div class="layer3 wow zoomInUp" data-wow-duration="2s" data-wow-delay="1s">
                <h3 class="title3" style="color:black">We Provide Subject-based posts, always check us for Lesson inspiration.</h3>
                  
              </div>--%>
            </div>
          </div>				
                </div>                                                   
            </div>                
               </div>
                </div>
           </div>           
<!-- END Header -->

<div  class="tag-line" >
         <div class="container">
           <div class="row  text-center" >           
               <div class="col-lg-12  col-md-12 col-sm-12">             
                   <h4>             
        <asp:Label ID="UsernameLabel" visible="false" CssClass="label user-label" style="color:#00A651"  runat="server">Welcome, <%: Context.User.Identity.GetUserName()  %></asp:Label></h4>
                   <h2 data-scroll-reveal="enter from the bottom after 0.1s"><i class="fa fa-circle-o-notch"></i>FEEL FREE TO LOOK AROUND<i class="fa fa-circle-o-notch"></i> </h2>
                   </div>
               </div>
             </div>       
    </div>
  <div class="blog-page area-padding">
    <div class="container">
      <div class="row">
        <div class="col-md-8 col-sm-8 col-xs-12">
          <div class="row set-pad">
                                <div class="set-hpad">
                              <asp:FormView ID="FormView2" runat="server" HorizontalAlign="Center">
                          <EditItemTemplate>
                              ImagePath:
                              <asp:TextBox ID="ImagePathTextBox" runat="server" Text='<%# Bind("ImagePath") %>' />
                              <br />
                              Title:
                              <asp:TextBox ID="TitleTextBox" runat="server" Text='<%# Bind("Title") %>' />
                              <br />
                              PublishedTime:
                              <asp:TextBox ID="PublishedTimeTextBox" runat="server" Text='<%# Bind("PublishedTime") %>' />
                              <br />
                              Content:
                              <asp:TextBox ID="ContentTextBox" runat="server" Text='<%# Bind("Content") %>' />
                              <br />
                              <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                              &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                          </EditItemTemplate>
                          <InsertItemTemplate>
                              ImagePath:
                              <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("ImagePath") %>' />
                              <br />
                              Title:
                              <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Title") %>' />
                              <br />
                              PublishedTime:
                              <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("PublishedTime") %>' />
                              <br />
                              Content:
                              <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Content") %>' />
                              <br />
                              <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                              &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                          </InsertItemTemplate>
                          <ItemTemplate>
                              <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/BlogImages/"+Eval("ImagePath") %>' Height="300px" style="max-width:350px;"/>
                              <br />
                              
                              <strong>
                              <asp:Label ID="TitleLabel" runat="server" CssClass="auto-style1" Text='<%# Bind("Title") %>' />
                              </strong>
                              <br />
                              
                              <em>
                              <asp:Label ID="PublishedTimeLabel" runat="server" Text='<%# Bind("PublishedTime") %>' />
                              </em>
                              <br />
                            
                              <p class="text-center"><asp:Label ID="ContentLabel" runat="server" Text='<%# Bind("Content") %>' /></p>
                              <br />

                          </ItemTemplate>
                      </asp:FormView>   
                                
                      </div>
                                                  
                     
                    <hr style="color:#000" /> 
             <div class="jumbotron">
              <h2 class="text-left">Leave a Reply</h2>
    <div style="background-color:#f9f9f9">
        <uc1:ErrorDisplay runat="server" ID="ErrorDisplay2" style="text-align:center" /><br />
        <%--<asp:TextBox ID="txtName" runat="server" Width="230px" Height="19px" placeholder="Your Name"></asp:TextBox>--%>
           
        <%--<br/>--%>
        <asp:TextBox id="txtComment" Placeholder="Type your Comment here..." class="col-sm-6" runat="server" TextMode="MultiLine" Height="110px" Width="230px" CssClass="auto-style3"></asp:TextBox>
        
            
        <br />
        
        <asp:Button ID="BtnComment" runat="server" Text="Post Comment"  BackColor="seagreen" ForeColor="White" OnClick="PostComment_Click" BorderStyle="None"  Height="29px" CssClass="auto-style4" Width="132px" />
            
    </div> 
<hr />
 <div>             
 <asp:GridView ID="grdComment" ShowHeaderWhenEmpty="true"  EmptyDataRowStyle-CssClass="text-center" EmptyDataText="" CssClass="table table-condensed table-responsive table-hover table-striped table-bordered medium-font" AutoGenerateColumns="False" runat="server" AllowPaging="true" PageSize="5" OnPageIndexChanging="grdComment_PageIndexChanging" OnRowCommand="grdComment_RowCommand" ShowHeader="False" OnSelectedIndexChanged="grdComment_SelectedIndexChanged">
                                <Columns> 
                                    <asp:TemplateField HeaderText="Sn">
                                           <ItemTemplate>
                                               <span style="float:left"><span><img src="../assets1/img/default.gif" class="img-avatar" height="30" width="30"  /></span> <span><strong><%# Eval ("Name")%></strong></span> | <span style="font-size:smaller;"><em><%# Eval ("Date")%></em></span><br />
                                               <span><%# Eval ("Message")%></span>
                                           </ItemTemplate>
                                    </asp:TemplateField> 
                                </Columns>  

<EmptyDataRowStyle CssClass="text-center"></EmptyDataRowStyle>
                           </asp:GridView>   
     </div> 
              
              </div>             
          </div>
        </div>

          <!-- End Blog Area -->

          <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
          <div class="page-head-blog">
            <div class="single-blog-page">
              <!-- search option start -->
              <%--  <div class="search-option">
                  <input type="text" placeholder="Search...">
                  <button class="button" type="submit">
                                            <i class="fa fa-search"></i>
                                        </button>
                </div>--%>
              <!-- search option end -->
            </div>
            <div class="single-blog-page">
              <!-- recent start -->
              <div class="left-blog" style="border: 2px solid #FFFFFF">
                  <h4 class="text-center"><b>recent posts</b></h4>

                  <asp:GridView ID="grdReports" ShowHeaderWhenEmpty="true"  EmptyDataRowStyle-CssClass="text-left" EmptyDataText="No record to display" CssClass="table table-condensed table-responsive table-hover table-striped table-bordered medium-font" AutoGenerateColumns="False" runat="server" AllowPaging="true" PageSize="5" OnPageIndexChanging="grdReports_PageIndexChanging" OnRowCommand="grdReports_RowCommand" ShowHeader="False">
                                <Columns> 
                                    <asp:TemplateField HeaderText="Sn">
                                           <ItemTemplate>
                                               <asp:LinkButton ID="lnkPost" CommandArgument='<%#Eval("PostId") %>'  runat="server" OnClick="lnkPost_Click" CssClass="text-left">  <span style="color:#000; float:left"><%# Eval ("Title")%></span></asp:LinkButton>
                                                <%--<%# Container.DataItemIndex + 1 %>--%>
                                           </ItemTemplate>
                                    </asp:TemplateField> 
                                   
                                    <%--<asp:BoundField DataField="Title" HeaderText="Title" /> --%> 

                                    <%--<asp:TemplateField HeaderText="Age Group">
                                          <ItemTemplate>
                                                <%# Eval ("AgeGroup.AgeClass")%>  
                                          </ItemTemplate>
                                    </asp:TemplateField>--%>
                                </Columns>  
                           </asp:GridView> 
               
              </div>
              <!-- recent end -->
            </div>

               <div class="single-blog-page">
              <div class="left-blog">
                <h4><b>categories</b></h4>
                <ul>
                  <li>
                    <a href="preschool.aspx">Preschool</a>
                  </li>
                  <li>
                    <a href="kindergarten.aspx">Kindergarten</a>
                  </li>
                  <li>
                    <a href="elementary.aspx">Elementary</a>
                  </li>
                  <li>
                    <a href="secondary.aspx">Secondary</a>
                  </li>
                  
                  <%--<li>
                    <a href="#">Html</a>
                  </li>
                  <li>
                    <a href="#">Website</a>
                  </li>--%>
                </ul>
              </div>
            </div>

            <div class="single-blog-page">
              <div class="auto-style5">
                <h4 style="color:seagreen" class="text-center"><b>Adverts</b></h4>   
                  <hr />
                  <%--  <ul>
                  <li>
                    <a href="PreschoolBlog.aspx">Preschool</a>
                  </li>
                  <li>
                    <a href="KindergartenBlog.aspx">Kindergarten</a>
                  </li>
                  <li>
                    <a href="ElementaryBlog.aspx">Elementary</a>
                  </li>
                  <li>
                    <a href="SecondaryBlog.aspx">Secondary</a>
                  </li>
                </ul>--%>
              </div>
            </div>          
           
          </div>
        </div>

           <!-- End left sidebar -->
        <!-- Start single blog -->

      </div>
    </div>
  </div>
  



  <div class="clearfix"></div>

   
  <!-- Start Footer bottom Area -->
  <footer>
    <div class="footer-area">
      <div class="container-fluid">
        <div class="row" style="background-color:#304150 ">
          <div class="col-md-4 col-sm-4 col-xs-12">
            <div class="footer-content">
              <div class="footer-head">
                <div class="footer-logo">
                  <h2 style="color:white; font-family:'Lucida Fax'"><span><b>Myclass</b></span>paper</h2>
                </div>

                <p style="color:white"> We provide Teachers with News and insight they can Trust.</p>
                <div class="footer-icons">
                    <div >
                    <a href="#">  <img src="assets2/img/Social/facebook.png" alt="" style="background-color: white; border-radius: 40px;" height="50" width="50"/> </a>
                    <a href="#"> <img src="assets2/img/Social/google-plus.png" alt="" style="background-color: white; border-radius: 40px;" height="50" width="50""/></a>
                    <a href="#"> <img src="assets2/img/Social/twitter.png" alt="" style="background-color: white; border-radius: 40px;" height="50" width="50"/></a>
                    </div>
                  <%--<ul>
                    <li>
                      <a href="#"><i class="fa fa-facebook"></i></a>
                    </li>
                    <li>
                      <a href="#"><i class="fa fa-twitter"></i></a>
                    </li>
                    <li>
                      <a href="#"><i class="fa fa-google"></i></a>
                    </li>
                    <li>
                      <a href="#"><i class="fa fa-pinterest"></i></a>
                    </li>
                  </ul>--%>
                </div>
              </div>
            </div>
          </div>
          <!-- end single footer -->
          <div class="col-md-4 col-sm-4 col-xs-12">
            <div class="footer-content">
              <div class="footer-head">
                <h2 style="color:white; font-family:'Lucida Fax'"><b>Contact Us</b></h2>
                <div class="footer-contacts" style="color:white">
                  <p><span>Tel:</span> +123 456 789</p>
                  <p><span>Email:</span> contact@example.com</p>
                  <p><span>Working Hours:</span> 9am-5pm</p>
                </div>
              </div>
            </div>
          </div>
          <!-- end single footer -->
          <div class="col-md-4 col-sm-4 col-xs-12">
            <div class="footer-content">
              <div class="footer-head">
                <h2 style="color:white; font-family:'Lucida Fax'"><b>Instagram</b></h2>
                <div class="flicker-img">
                  <a href="#"><img src="img/portfolio/1.jpg" alt=""></a>
                  <a href="#"><img src="img/portfolio/2.jpg" alt=""></a>
                  <a href="#"><img src="img/portfolio/3.jpg" alt=""></a>
                  <a href="#"><img src="img/portfolio/4.jpg" alt=""></a>
                  <a href="#"><img src="img/portfolio/5.jpg" alt=""></a>
                  <a href="#"><img src="img/portfolio/6.jpg" alt=""></a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
      <hr />
 <div id="footer">
          <p class="text-center">&copy; Copyright,<a href="http://www.myclasspapers.com.ng" style="color: #fff" target="_blank"> Myclasspapers.</a> All rights reserved</p>
    </div>
     <!-- FOOTER SECTION END-->
  </footer>

  <%--<a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>--%>

  <!-- JavaScript Libraries -->
  <script src="lib/jquery/jquery.min.js"></script>
  <script src="lib/bootstrap/js/bootstrap.min.js"></script>
  <script src="lib/owlcarousel/owl.carousel.min.js"></script>
  <script src="lib/venobox/venobox.min.js"></script>
  <script src="lib/knob/jquery.knob.js"></script>
  <script src="lib/wow/wow.min.js"></script>
  <script src="lib/parallax/parallax.js"></script>
  <script src="lib/easing/easing.min.js"></script>
  <script src="lib/nivo-slider/js/jquery.nivo.slider.js" type="text/javascript"></script>
  <script src="lib/appear/jquery.appear.js"></script>
  <script src="lib/isotope/isotope.pkgd.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD8HeI8o-c1NppZA-92oYlXakhDPYR7XMY"></script>
	
        <!--  Jquery Core Script -->
    <script src="assets2/js/jquery-1.10.2.js"></script>
    <!--  Core Bootstrap Script -->
    <script src="assets2/js/bootstrap.js"></script>
    <!--  Flexslider Scripts --> 
         <script src="assets2/js/jquery.flexslider.js"></script>
     <!--  Scrolling Reveal Script -->
    <script src="assets2/js/scrollReveal.js"></script>
    <!--  Scroll Scripts --> 
    <script src="assets2/js/jquery.easing.min.js"></script>
    <!--  Custom Scripts --> 
         <script src="assets2/js/custom.js"></script>

	<!-- Contact Form JavaScript File -->
  <script src="contactform/contactform.js"></script>

  <script src="js/main.js"></script>
    </form>
</body>
</html>

