 <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ind.aspx.cs" Inherits="ReportSheet.index" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <title>Myclasspapers: Home</title>
    <!-- BOOTSTRAP CORE STYLE CSS -->
    <link href="assets2/css/bootstrap.css" rel="stylesheet"/>
	
	 <!-- Favicons -->
  <link href="img/favicon.png" rel="icon">
  <link href="img/apple-touch-icon.png" rel="apple-touch-icon">
  
    <!-- FONT AWESOME CSS -->
<link href="assets2/css/font-awesome.min.css" rel="stylesheet"/>

     <!-- FLEXSLIDER CSS -->
<link href="assets2/css/flexslider.css" rel="stylesheet"/>
    <!-- ICONS --->
<link href="assets2/css/ionicons" rel="stylesheet"/>

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
            color: #000000;

        }
        .newStyle1 {
            font-family: "Arial Black";
            border-style: solid;
            border-width: medium;
        }
        .auto-style2 {
            font-family: "Arial Black";
            border-style: solid;
            border-width: medium;
            background-color: #339933;
        }
        .newStyle2 {
            border-style: ridge;
            border-width: medium;
            font-family: "Arial Black";
            font-size: medium;
        }
               
    </style>
</head>
<body >
    <form runat="server">

<div id="preloader"></div>

    <!-- HEADER -->
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
                <a class="navbar-brand" href="index.aspx"><img class="logo-custom" src="assets2/img/CLP.png" alt=""  /></a>                
            </div>

            <div class="navbar-collapse collapse move-me">
                <ul class="nav navbar-nav navbar-right" id="submenu">
                    <li ><a href="index.aspx">HOME</a></li>
					 <li><a href="#about-sec"> ABOUT US</a></li>
					 
					 <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">RESOURCES</a>
                      <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                      <p><a class="dropdown-item" href="preschool.aspx">PreSchool</a></p>
                      <p><a class="dropdown-item" href="kindergarten.aspx">Kindergarten</a></p>
                      <p><a class="dropdown-item" href="elementary.aspx">Elementary</a></p>                      
					  <p><a class="dropdown-item" href="secondary.aspx">Secondary</a></p> 					  
                      </div>  
					  
                      </li>					 					 			                                      
                     <li><a href="blog.aspx">BLOG</a></li>					 
                     <li><a href="#contact-sec">CONTACT</a></li>
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
       <div class="home-sec" id="home" >
           <div class="overlay">		   			             
		<div class="container">		
           <div class="row text-center" > 
                  <%--<div class="col-lg-10 col-lg-offset-2 col-md-8 col-sm-2 col-xs-1 col-md-offset-2 col-sm-offset-2">  --%>     
               <div class="col-lg-12  col-md-12 col-sm-12">
               
                <div class="flexslider set-flexi" id="main-section" style="text-align: center" >                   
                        
                    <h3 style="color:#000000; font-family:effra" class="text-center"><strong>Delivering Quality Worksheets</strong></h3>
                               <h2 style="color:#000000; font-family:effra" class="text-center"><b>MYCLASSPAPERS</b></h2>
                              
                               
                                                    
                                <!---- LOG IN----->
                    

                  <asp:Label ID="lblLogIn" runat="server"><a style="color:white; background-color:#217521" class="ready-btn right-btn page-scroll" href="Login.aspx">LOGIN</a></asp:Label>
                   <asp:Label ID="lblRegister" runat="server"><a style="color:white; background-color:#217521" class="ready-btn page-scroll" href="Registration.aspx">REGISTER</a></asp:Label>                                  								
							<script>
				// Get the modal
					var modal = document.getElementById('id01');

				// When the user clicks anywhere outside of the modal, close it
					window.onclick = function(event) {
							if (event.target == modal) {
								modal.style.display = "none";														}													}
					</script>														
                                             
                </div>                                                   
            </div>  
               </div>             
               </div>
                </div>
           </div>                 
       <!--HOME SECTION END-->

    <div  class="tag-line" >
         <div class="container">
           <div class="row  text-center" >           
               <div class="col-lg-12  col-md-12 col-sm-12">             
                   <h4 class="text-center">             
        <asp:Label ID="UsernameLabel" visible="false" CssClass="label user-label" style="color:#00A651" runat="server">Welcome, <%: Context.User.Identity.GetUserName()  %>  </asp:Label></h4>
                    <h2 data-scroll-reveal="enter from the bottom after 0.1s" class="text-center" ><i class="fa fa-circle-o-notch"></i>FEEL FREE TO LOOK AROUND<i class="fa fa-circle-o-notch"></i> </h2>
                    </div>
               </div>
             </div>       
    </div>
    <!--HOME SECTION TAG LINE END-->

    <!---- Resources ------>	
     <div id="resources-sec" style="background-color:#ffffff" >
    <div class="container set-pad">
             <div class="row text-center">
                 <%--<div class="col-lg-8 col-lg-offset-2 col-md-8 col-sm-8 col-md-offset-2 col-sm-offset-2">--%>
                 <div class="col-md-12 col-sm-12 col-xs-12">
                     <h1 data-scroll-reveal="enter from the bottom after 0.1s" class="header-line text-center"  style="color:#217521"> LATEST WORKSHEETS</h1>
                    
                       <h3 data-scroll-reveal="enter from the bottom after 0.3s" class="text-center" style="color: #ffffff; font-family:Effra,Calibri,arial,helvetica,sans-serif; font-size:14px">Best collection of lesson plans and classroom resources made by teachers, for teachers.</h3>
                        
                 </div>
             </div>
             <!--/.HEADER LINE END-->

           <div class="row">
              <div class="col-lg-10 col-lg-offset-2 col-md-8 col-sm-2 col-xs-1 col-md-offset-2 col-sm-offset-2" data-scroll-reveal="enter from the bottom after 0.4s" >
              <%--<div class=" col-lg-10 col-md-12 col-sm-12 col-xs-12">--%>
                   <%--<form id="form1" runat="server">--%>
                     <div Id="Resources" class="form-group" runat="server" style="overflow-x: auto;">
                    <asp:DataList runat="server"  ID="DtResources" RepeatColumns="3" RepeatDirection="Horizontal" BorderColor="Silver" CssClass="auto-style16" OnItemCommand="DtResources_ItemCommand" CellSpacing="-1" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" Width="800px">
                      <ItemTemplate>
                          <table align ="center">
                              <tr>
                                <td class="auto-style2" colspan="2" style="background-color: #1C2B4B; color: #FFFFFF; text-align: center;">
                                <asp:Label ID="Label1" runat="server" Font-Bold="True" Text='<%# Eval("Title") %>' CssClass="text-light"></asp:Label>
                                </td>
                             </tr>
                             <tr>
                                <td class="auto-style19" style="background-color: #4CAF50">
                                  <strong>
                                 <asp:Label ID="Label5" runat="server" CssClass="auto-style18" style="color: #FFFFFF;" Text='<%# Eval("Category.Type") %>'></asp:Label>
                                </strong> </td>
                                <%--<td class="auto-style17" style="background-color: black">&nbsp;</td>--%>
                                </tr>
                    <tr>
                        <td class="auto-style13" colspan="2">
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/ResourcesImages/"+Eval("PreviewPath") %>' Height="100px" Width="193px"/>
                        </td>
                    </tr>
                              <tr>
                        <td class="auto-style14" colspan="2"><strong>
                            <asp:Label ID="Label4" runat="server" CssClass="auto-style4" Text="Label" style="color: #4CAF50" >Author:     </asp:Label>
                        </strong>
                            <b><asp:Label ID="Label2" runat="server" Text='<%# Eval("Author") %>' CssClass="auto-style1" ></asp:Label></b>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style14" style="text-align: center">
                            <strong>
                                <%--<a href="preview.aspx?sheetId="<%# Eval("SheetId") %>">Preview</a>--%>
                                <asp:LinkButton ID="lnkPreview" runat="server" CommandArgument='<%#Eval("SheetId") %>' OnClick="lnkPreview_Click" style="color:	#FF0000"><i class="fa fa-eye"></i>Preview</asp:LinkButton>&nbsp; | &nbsp;
                            <asp:LinkButton ID="lnkDownload" runat="server" CommandArgument='<%# Eval("SheetId") %>' CommandName="Download" CssClass="auto-style20" OnClick="lnkDownload_Click" style="color:#0000FF"><i class="fa fa-download">&nbsp;</i>Download</asp:LinkButton>
                            </strong>
                        </td>
                    </tr>
                              </table>
                </ItemTemplate>
                </asp:DataList>
                        </div>
                       <%--</form>--%>
             
               </div>
               </div>                                                        
					  
               </div>
             </div>                   		 		 	
	<!-----ABOUT US------>
			<div id="about-sec" class="container set-pad" >			
			<div class="container">
                <div class="row">				
                    <div class="col-md-6">
                        
                        <h2>Children are our Future</h2>
						<hr>
                        <p style="font-family: Effra,Calibri,arial,helvetica,sans-serif; font-size:20px">We Provide Everything you need to support your teaching career. 
						 Access the world’s best collection of lesson plans and classroom resources made by teachers, for teachers. Use our free, intuitive tools to save time planning your next class.
                        We can also help you train up your staff or improve your own skills with our award-winning Resources to move your school forward, achieving greater results and building your reputation. </p>
                    </div>
                    <div class="col-md-6">
                        <img src="assets2/img/pre.jpg" class="img-responsive">
                    </div>
					</div>
                </div>
            </div>           
	<!-----aBOUT US END------>
			
    <!-- Start Blog Area -->
  <%--<div id="blog-sec" class="container set-pad">
  <div id="blog" class="blog-area">
    <div class="blog-inner area-padding">
      <div class="blog-overly"></div>
      <div class="container ">
        <div class="row">
          <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="section-headline text-center">
              <h2>Latest Blog Post</h2>
            </div>
          </div>
        </div>
        <div class="row">
          <!-- Start Left Blog -->
          <div class="col-md-4 col-sm-4 col-xs-12">
            <div class="single-blog">
              <div class="single-blog-img">
                <a href="blog.html">
										<img src="assets2/img/blog/1.jpg" alt="" height="180">
									</a>
              </div>
              <div class="blog-meta">
                <span class="comments-type">
										<i class="fa fa-comment-o"></i>
										<a href="#">13 comments</a>
									</span>
                <span class="date-type">
										<i class="fa fa-calendar"></i>2016-03-05 / 09:10:16
									</span>
              </div>
              <div class="blog-text">
                <h4>
                  <a href="blog.html">Assumenda repud eum veniam</a>
									</h4>
                <p>
                  Lorem ipsum dolor sit amet conse adipis elit Assumenda repud eum veniam optio modi sit explicabo nisi magnam quibusdam.sit amet conse adipis elit Assumenda repud eum veniam optio modi sit explicabo nisi magnam quibusdam.
                </p>
              </div>
              <span>
									<a href="blog.html" class="ready-btn">Read more</a>
								</span>
            </div>
            <!-- Start single blog -->
          </div>
          <!-- End Left Blog-->
          <!-- Start Left Blog -->
          <div class="col-md-4 col-sm-4 col-xs-12">
            <div class="single-blog">
              <div class="single-blog-img">
                <a href="blog.html">
										<img src="assets2/img/blog/2.jpg" alt="" height="180">
									</a>
              </div>
              <div class="blog-meta">
                <span class="comments-type">
										<i class="fa fa-comment-o"></i>
										<a href="#">130 comments</a>
									</span>
                <span class="date-type">
										<i class="fa fa-calendar"></i>2016-03-05 / 09:10:16
									</span>
              </div>
              <div class="blog-text">
                <h4>
                                        <a href="blog.html">Explicabo magnam quibusdam.</a>
									</h4>
                <p>
                  Lorem ipsum dolor sit amet conse adipis elit Assumenda repud eum veniam optio modi sit explicabo nisi magnam quibusdam.sit amet conse adipis elit Assumenda repud eum veniam optio modi sit explicabo nisi magnam quibusdam.
                </p>
              </div>
              <span>
									<a href="blog.html" class="ready-btn">Read more</a>
								</span>
            </div>
            <!-- Start single blog -->
          </div>
          <!-- End Left Blog-->
          <!-- Start Right Blog-->
          <div class="col-md-4 col-sm-4 col-xs-12">
            <div class="single-blog">
              <div class="single-blog-img">
                <a href="blog.html">
										<img src="assets2/img/blog/3.jpg" alt="" height="180">
									</a>
              </div>
              <div class="blog-meta">
                <span class="comments-type">
										<i class="fa fa-comment-o"></i>
										<a href="#">10 comments</a>
									</span>
                <span class="date-type">
										<i class="fa fa-calendar"></i>2016-03-05 / 09:10:16
									</span>
              </div>
              <div class="blog-text">
                <h4>
                                        <a href="blog.html">Lorem ipsum dolor sit amet</a>
									</h4>
                <p>
                  Lorem ipsum dolor sit amet conse adipis elit Assumenda repud eum veniam optio modi sit explicabo nisi magnam quibusdam.sit amet conse adipis elit Assumenda repud eum veniam optio modi sit explicabo nisi magnam quibusdam.
                </p>
              </div>
              <span>
									<a href="blog.html" class="ready-btn">Read more</a>
								</span>
            </div>
          </div>
          <!-- End Right Blog-->
        </div>
      </div>
    </div>
  </div>
  </div>--%>
  <!-- End Blog -->
    	 		 		 		 				 				
    <!---CONTACT --->
    <%--<div id="contact-sec"   >
           <div class="overlay">
 <div class="container set-pad">
      <div class="row text-center">
                 <div class="col-lg-8 col-lg-offset-2 col-md-8 col-sm-8 col-md-offset-2 col-sm-offset-2">
                     <h1 data-scroll-reveal="enter from the bottom after 0.1s" class="header-line" >CONTACT US  </h1>
                     <p data-scroll-reveal="enter from the bottom after 0.3s">
                      For any inquiries, send us a message.
                         </p>
                 </div>
             </div>
             <!--/.HEADER LINE END-->
           <div class="row set-row-pad"  data-scroll-reveal="enter from the bottom after 0.5s" >
                          
                 <div class="col-lg-8 col-lg-offset-2 col-md-8 col-md-offset-2 col-sm-8 col-sm-offset-2">
                    <form>
                        <div class="form-group">
                            <input type="text" class="form-control "  required="required" placeholder="Your Name" />
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control " required="required"  placeholder="Your Email" />
                        </div>
                        <div class="form-group">
                            <textarea name="message" required="required" class="form-control" style="min-height: 150px;" placeholder="Message"></textarea>
                        </div>
                        <div class="form-group">
                            <button type="submit" class="btn btn-info btn-block btn-lg">SUBMIT REQUEST</button>
                        </div>

                    </form>
                </div>                                                                    
               </div>
                </div>
          </div> 
       </div>--%>
     <div class="container" id="contact-sec">
             <div class="row set-row-pad"  >
    <div class="col-lg-4 col-md-4 col-sm-4   col-lg-offset-1 col-md-offset-1 col-sm-offset-1 " data-scroll-reveal="enter from the bottom after 0.4s">

                    <h2 ><strong>Our Location </strong></h2>
        <hr />
                    <div ">
                        <h4>234/80 -UFG , New Street,</h4>
                        <h4>Switzerland.</h4>
                        <h4><strong>Call:</strong>  </h4>
                        <h4><strong>Email: </strong>info@yourdomain.com</h4>
                    </div>


                </div>
                 <div class="col-lg-4 col-md-4 col-sm-4   col-lg-offset-1 col-md-offset-1 col-sm-offset-1" data-scroll-reveal="enter from the bottom after 0.4s">

                    <h2 ><strong>Social Connectivity </strong></h2>
        <hr />
                    <div >
                    <a href="#">  <img src="assets2/img/Social/facebook.png" alt=""  style="background-color: white; border-radius: 40px;"/> </a>
                    <a href="#"> <img src="assets2/img/Social/google-plus.png" alt="" style="background-color: white; border-radius: 40px;" /></a>
                    <a href="#"> <img src="assets2/img/Social/twitter.png" alt="" style="background-color: white; border-radius: 40px;" /></a>
                    </div>
                    </div>


                </div>
                 </div>
     <!-- CONTACT SECTION END-->
    <hr />
    <div id="footer">
          <p class="text-center">All Rights Reserved |<a href="http://www.myclasspapers.com.ng" style="color: #fff" target="_blank"> Myclasspapers.com.ng</a></p>
    </div>
     <!-- FOOTER SECTION END-->
        </form>
   
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
</body>
</html>


