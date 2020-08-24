<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="secondary.aspx.cs" Inherits="ReportSheet.secondary" %>


<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <title>Myclasspapers</title>
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
  <link href="assets2/lib/ionicons/css/ionicons.min.css" rel="stylesheet">
</head>
<body >
<form runat="server">

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
					 <li><a href="#about-sec"> ABOUT US</a></li>
					 
					 <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">RESOURCES</a>
                      <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                      <p><a class="dropdown-item" href="preschool.aspx">PreSchool</a></p>
                      <p><a class="dropdown-item" href="kindergarten.aspx">Kindergarten</a></p>
                      <p><a class="dropdown-item" href="elementary.aspx">Elementary</a></p>                      
					  <p><a class="dropdown-item" href="secondary.aspx">Secondary</a></p> 
                       <p><a class="dropdown-item" href=""></a></p>   					  
                      </div>
					  
                      </li>					 					 			 
                     <%--<li><a href="#resources-sec">RESOURCES</a></li> --%>                  
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
           <div class="row text-center " >           
               <div class="col-lg-12  col-md-12 col-sm-12">
               
                <div class="flexslider set-flexi" id="main-section" >                   
                        <li>
                               <h3 style="color:#e2e2e2; font-family: monospace; " class="text-center"><strong>Delivering Quality Worksheets</strong></h3>
                     <h2 style="color:#e2e2e2; font-family: monospace; padding-bottom: 150px" class="text-center"><b>Secondary Category</b></h2>                             
                                <!---- LOG IN----->
							<asp:Label ID="lblLogIn" runat="server"><a style="color:white; background-color:#217521" class="ready-btn right-btn page-scroll" href="Login.aspx">LOGIN</a></asp:Label>
                   <asp:Label ID="lblRegister" runat="server"><a style="color:white; background-color:#217521" class="ready-btn page-scroll" href="Registration.aspx">REGISTER</a> </asp:Label>                                  								
							<script>
							    // Get the modal
							    var modal = document.getElementById('id01');

							    // When the user clicks anywhere outside of the modal, close it
							    window.onclick = function (event) {
							        if (event.target == modal) {
							            modal.style.display = "none";
							        }
							    }
					</script>										
							
								                            
                        </li>                      
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
           <h4><asp:Label ID="UsernameLabel" visible="false" CssClass="label user-label" style="color:#00A651" runat="server">Welcome, <%: Context.User.Identity.GetUserName()  %>  </asp:Label></h4>     
        <h2 data-scroll-reveal="enter from the bottom after 0.1s" ><i class="fa fa-circle-o-notch"></i>FEEL FREE TO LOOK AROUND<i class="fa fa-circle-o-notch"></i> </h2>
                   </div>
               </div>
             </div>       
    </div>
    <!--HOME SECTION TAG LINE END-->

    <!---- Resources ------>
         <div class="blog-page area-padding">
    <div class="container">
      <div class="row">
     <!-- Start single blog -->
                    
        <div class="col-md-8 col-sm-12 col-xs-12">

          <div class="row">
                 <!-- search option start -->
                    <div class="search-option col-md-8" style="margin-top: 10px"> 
                  <input type="text" runat="server" id="txtSearch" class="input-sm" placeholder="Search Resources by title ..."/>
                         
                </div>
              <div class="col-md-2" style="margin-top: 15px">
                   <%--<button class="button btn-sm" id="btnSearch" runat="server" onclick="btnSearch_Click" type="submit" style="background-color: #217521; color: #ffffff"><i class="fa fa-search"></i></button>--%>
                  <asp:LinkButton runat="server" ID="SearchBtn" OnClick="btnSearch_Click" class="button search-btn btn-lg"><i class="fa fa-search"></i></asp:LinkButton>
              </div> 
              <!-- search option end -->

              <asp:ListView ID="LstResources" runat="server" DataKeyNames="SheetId" GroupItemCount="2" OnPagePropertiesChanging="LstResources_PagePropertiesChanging"> 
                  <EmptyDataTemplate>
                       <table >
                            <tr> 
                                <td>No data was returned.</td> 

                            </tr> 

                       </table>

                  </EmptyDataTemplate> 
                  <EmptyItemTemplate>
                       <td/> 

                  </EmptyItemTemplate> 
                  <GroupTemplate>
                       <tr id="itemPlaceholderContainer" runat="server"> 
                           <td id="itemPlaceholder" runat="server"></td> 
                       </tr> 
                  </GroupTemplate> 
                  <ItemTemplate>
                       <td runat="server">
                            <table> 
                                    <tr> 
                                     <td> 
                                       <asp:LinkButton ID="LinkButton1" CommandArgument='<%#Eval("SheetId") %>' runat="server">
                                           <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/ResourcesImages/"+Eval("PreviewPath") %>' style="max-width:190px;" />
                                       </asp:LinkButton>
                                     </td>
                                </tr>
                                <tr> 
                                     <td> 
                                         <asp:LinkButton ID="BtnName" OnClick="lnkPreview_Click" CommandArgument='<%#Eval("SheetId")%>' runat="server">
                                         <asp:Label ID="lbl" runat="server" Text='<%#Eval("Title")%>' Font-Bold="True" Font-Names="Arial Black" ForeColor="#00003c"></asp:Label>
                                        </asp:LinkButton>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                    <asp:Label ID="Label2" runat="server" Text="Label"> <span class="fa fa-user"></span>&nbsp;Admin<span style="font-size:15px">&nbsp;<b>|</b>&nbsp;</span></asp:Label><span class="fa fa-calendar">&nbsp;</span><asp:Label ID="Label1" runat="server" Text='<%#Eval("DateCreated")%>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label5" runat="server" Font-Bold="true" Text="Category: "></asp:Label><asp:Label ID="Label4" runat="server" Text='<%#Eval("Category.Type") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                     <td class="auto-style14" style="text-align: center">
                            <strong>
                                <%--<a href="preview.aspx?sheetId="<%# Eval("SheetId") %>">Preview</a>--%>
                                <asp:LinkButton ID="lnkPreview" runat="server" CommandArgument='<%#Eval("SheetId") %>' OnClick="lnkPreview_Click" CssClass="btn btn-sm btn-warning" style="color: #ffffff"><i class="fa fa-eye">&nbsp;</i>Preview</asp:LinkButton>&nbsp;&nbsp;
                            <asp:LinkButton ID="lnkDownload" runat="server" CommandArgument='<%# Eval("SheetId") %>' OnClick="lnkDownload_Click" CommandName="Download" CssClass="auto-style20 btn btn-sm btn-primary" style="color:#ffffff"><i class="fa fa-download">&nbsp;</i>Download</asp:LinkButton>
                            </strong>
                        </td>
                                </tr>
                                <tr><td>&nbsp;</td></tr>
                            </table>
                           </p>
                       </td>
                  </ItemTemplate>
                  <LayoutTemplate>
                      <table style="width:100%;">
                          <tbody>
                              <tr>
                                  <td>
                                      <table id="groupPlaceholderContainer" runat="server" style="width:100%">
                                          <tr id="groupPlaceholder"></tr>
                                      </table>
                                  </td>
                              </tr>
                              <tr> <td></td> </tr>
                              <tr></tr>
                          </tbody>
                      </table>
                  </LayoutTemplate>
              </asp:ListView>

              <asp:DataPager ID="DataPager1" runat="server" PagedControlID="LstResources" PageSize="10">
                  <Fields>
                     
                      <asp:NumericPagerField  ButtonType="Link" NumericButtonCssClass="pager-btn btn-primary btn-sm"/>
                    
                          
                      
                
                  </Fields>

              </asp:DataPager>

          </div>
        </div>

             <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
          <div class="page-head-blog">
            <div class="single-blog-page">
              <!-- search option start -->
              <%--<form action="#">
                <div class="search-option">
                  <input type="text" placeholder="Search products, brand, and categories"/>
                  <button class="button" type="submit">
                                            <i class="fa fa-search"></i>
                                        </button>
                </div>
              </form>--%>
              <!-- search option end -->
            </div>
            <div class="single-blog-page">
              <!-- recent start -->
              <div class="left-blog" style="margin-top: 10px">
                <h4><b>recent items</b></h4>
                <div class="recent-post">
                    <asp:ListView ID="LstRecent" runat="server">
                        <ItemTemplate>
                            <table>
                                <tr>
                                    <td>
                                        <asp:LinkButton ID="LinkButton1" OnClick="lnkPreview_Click" CommandArgument='<%#Eval("SheetId")%>' runat="server">
                                           <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/ResourcesImages/"+Eval("PreviewPath") %>' style="max-width:70px; max-height:70px" />&nbsp;
                                       </asp:LinkButton>
                                    </td>
                                    <td>
                                        <asp:LinkButton ID="LinkButton2" OnClick="lnkPreview_Click" CommandArgument='<%#Eval("SheetId")%>' runat="server">
                                         <asp:Label ID="lbl" runat="server" Text='<%#Eval("Title")%>' ForeColor="#0000000" style="text-align: left"></asp:Label>
                                        </asp:LinkButton>
                                    </td>
                                    <hr class="recent-hr" />
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:ListView>
                </div>
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
              <div class="left-tags blog-tags">
                <div class="popular-tag left-side-tags left-blog">
                  <h4><b>Most popular Resources</b></h4>
                      <asp:ListView ID="LstMstDownloaded" runat="server">
                        <ItemTemplate>
                            <table>
                                <tr>
                                    <td>
                                        <asp:LinkButton ID="LinkButton1" OnClick="lnkPreview_Click" CommandArgument='<%#Eval("SheetId")%>' runat="server">
                                           <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/ResourcesImages/"+Eval("PreviewPath") %>' style="max-width:70px; max-height:70px" />&nbsp;
                                       </asp:LinkButton>
                                    </td>
                                    <td>
                                        <asp:LinkButton ID="LinkButton2" OnClick="lnkPreview_Click" CommandArgument='<%#Eval("SheetId")%>' runat="server">
                                         <asp:Label ID="lbl" runat="server" Text='<%#Eval("Title")%>' ForeColor="#0000000" style="text-align: center"></asp:Label>
                                        </asp:LinkButton>
                                    </td>
                                    <hr class="recent-hr" />
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:ListView>

                </div>
              </div>
            </div>
          </div>
        </div>
    <!-- End right sidebar -->

           </div>
        </div>

          <!-- End Single Blog Area -->

      </div>
   
          <!-- End Single Blog Area -->    

	 <!-----ABOUT US------>
			<div id="about-sec" class="set-pad jumbotron" style="margin-bottom: 0px;" >			
			<div class="container">
                <div class="row">				
                    <div class="col-md-6">
                        <hr>
                        <h2>WHO WE ARE</h2>
						<hr>
                        <p style="font-family: Effra,Calibri,arial,helvetica,sans-serif; font-size:20px">We Provide Everything you need to support your teaching career. 
						 Access the world’s best collection of lesson plans and classroom resources made by teachers, for teachers. Use our free, intuitive tools to save time planning your next class.
                        We can also help you train up your staff or improve your own skills with our award-winning Resources to move your school forward, achieving greater results and building your reputation. </p>
                    </div>
                    <div class="col-md-6">
                       <%-- <img src="assets2/img/boy-in-class.jpg" style="max-width: 100%" class="">--%>
                        <img src="assets2/img/boy-in-class.jpg" class="img-thumbnail">
                    </div>
					</div>
                </div>
            </div>           
	<!-----aBOUT US END------>
	
	 <div id="contact-sec">
            <div class="row overlay">
    <div class="col-lg-4 col-md-4 col-sm-4 " data-scroll-reveal="enter from the bottom after 0.4s">
        <hr />
                    <h2 ><strong>Our Location </strong></h2>
        <hr />
                    <div>
                        <h4><span class="ion-ios-pin btn btn-success" style="color: #ffffff"></span> Adeniyi street, Opebi-Allen Ikeja.</h4>
                        <h4>Lagos, Nigeria.</h4>
                        <h4><span class="fa fa-phone btn btn-success" style="color: #ffffff;"></span> &nbsp; 08056445877, 08034546655. &nbsp;</h4>
                        <h4><span class="fa fa-envelope-o btn btn-success" style="color: #ffffff;"></span> &nbsp; contact@myclasspapers.com &nbsp;</h4>
                    </div>


                </div>
                 <div class="col-lg-4 col-md-4 col-sm-4 " data-scroll-reveal="enter from the bottom after 0.4s">
                     <hr />
                    <h2 ><strong>Social Connectivity </strong></h2>
        <hr />
                    <div>
                    <a href="#"> <img src="assets2/img/Social/facebook.png" alt=""  style="background-color: #e1e1e1; border-radius: 40px;"/> </a>
                    <a href="#"> <img src="assets2/img/Social/google-plus.png" alt="" style="background-color: #e1e1e1; border-radius: 40px;" /></a>
                    <a href="#"> <img src="assets2/img/Social/twitter.png" alt="" style="background-color: #e1e1e1; border-radius: 40px;" /></a>
                    </div>
                    </div>

                     <div class="col-lg-4 col-md-4 col-sm-4" data-scroll-reveal="enter from the bottom after 0.4s">
            <hr />
                    <h2><strong>Quick Links</strong></h2>
        <hr />
                    <div>
                    <ul>
                     <li class="footer-li"><a href="index.aspx" class="footer-a">Home</a></li>
					 <li class="footer-li"><a href="#about-sec" class="footer-a">About</a></li>				 					 			                                      
                     <li class="footer-li"><a href="blog.aspx" class="footer-a">Blog</a></li>					 
                     <li class="footer-li"><a href="#contact-sec" class="footer-a">Contact</a></li>
                    </ul>
                    </div>
                    </div>


                </div>
                 </div>
     <!-- CONTACT SECTION END-->	 		 		 		 		 				 
	
        <hr />
    <div id="footer">
          <p class="text-center">&copy; Copyright,<a href="http://www.myclasspapers.com.ng" style="color: #fff" target="_blank"> Myclasspapers.</a> All rights reserved</p>
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

