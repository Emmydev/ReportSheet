<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Success.aspx.cs" Inherits="ReportSheet.Success" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <title>Myclasspapers: Success</title>
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
        .newStyle1 {
            font-family: "Arial Black";
            border-style: solid;
            border-width: medium;
        }
        .newStyle2 {
            border-style: ridge;
            border-width: medium;
            font-family: "Arial Black";
            font-size: medium;
        }
        .newStyle3 {
            font-family: "Lucida Calligraphy";
        }
        .newStyle4 {
            font-family: "Effra";
            color: white;
        }
        .newStyle5 {
            font-family: "Lucida Calligraphy";
            font-size: 10px;
        }
        .auto-style1 {
            font-family: "Effra";
            font-size: x-large;
        }
    </style>
</head>
<body >

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
                <a class="navbar-brand" href="index.aspx"><img class="logo-custom" src="assets2/img/CLP.png" alt=""  /></a>
                <%--<a class="navbar-brand" href="index.aspx"> <img src="images/classpaperlogo.png" /> </a>--%>
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
                     <%--<li><a href="#resources-sec">RESOURCES</a></li> --%>                  
                     <li><a href="blog.aspx">BLOG</a></li>					 
                     <li><a href="#contact-sec">CONTACT</a></li>					 					 
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
           <%--<div class="overlay">--%>		   			             
		<div class="container">		
           <div class="row text-center " >           
               <div class="col-lg-12  col-md-12 col-sm-12">
               
                <div class="flexslider set-flexi" id="main-section" >                   
                        
                              <h3 style="color:#000000; font-family:'Effra'"><strong>Delivering Quality Worksheet</strong></h3>
                           <h1 style="color:#000000; font-family:'Effra'">WELCOME TO CLASS PAPER</h1>                            
                                <!---- LOG IN----->
                           
                                    <%--<a style="color:white" class="auto-style3" href="Login.aspx">LOGIN</a><a style="color:white" class="auto-style3" href="Registration.aspx">REGISTER</a>--%>
                                    
								<%--<button onclick="document.getElementByurl('id01').style.display='block'" style="width:auto;">Login</button>--%>
                                 
                               
								<%--<div id="id01" class="modal"> 
								<form class="modal-content animate" action="/action_page.php">
									<div class="imgcontain">
									<span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>									
								</div>
								<div class="contain">
								<h1>LOG IN</h1>
								<label for="uname"><b>Username</b></label>
								<input type="text" placeholder="Enter Username" name="uname" required> 
								<p>
								<label for="psw"><b>Password</b></label>
								<input type="password" placeholder="Enter Password" name="psw" required></p>        
								<button type="submit">Login</button>
								<label>
								<input type="checkbox" checked="checked" name="remember"> Remember me
									</label>
								</div>
							<div class="contain" style="background-color:#f1f1f1">
							<button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
						<span class="psw">Forgot<a href="#">password?</a></span>
										</div>
								</form>
							</div>--%>
							<script>
				// Get the modal
					var modal = document.getElementById('id01');

				// When the user clicks anywhere outside of the modal, close it
					window.onclick = function(event) {
							if (event.target == modal) {
								modal.style.display = "none";
														}													}
					</script>	
							
						<%--	<button onclick="document.getElementById('id02').style.display='block'" style="width:auto;">Register</button>
								<div id="id02" class="modal">
									<form class="modal-content animate" action="/action_page.php">
										<div class="imgcontain">
											<span onclick="document.getElementById('id02').style.display='none'" class="close" title="Close Modal">&times;</span>									
										</div>
												<div class="contain">
												<h1>SIGN UP</h1>
												<p>Please fill in this form to create an account.</p>
												<hr>
												<label for="email"><b>Email</b></label>
												<input type="text" placeholder="Enter Email" name="email" required>
												
												<p><label for="psw"><b>Password</b></label>
												<input type="password" placeholder="Enter Password" name="psw" required></p>

												<p><label for="psw-repeat"><b>Repeat Password</b></label>
												<input type="password" placeholder="Repeat Password" name="psw-repeat" required></p>
    
												<label>
												<input type="checkbox" checked="checked" name="remember" style="margin-bottom:15px"> Remember me </label>
											<p>By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p>												
												<div class="contain" style="background-color:#f1f1f1">
												<button type="button" onclick="document.getElementById('id02').style.display='none'" class="cancelbtn">Cancel</button>						
												</div>																																					
													<button type="submit" class="signupbtn">Submit</button>																																								</div>							
									</form>																																										
								</div>--%>							                            
                        </li>                      
                </div>                                                   
            </div>
                
               </div>
                </div>
           </div>
           
       <%--</div>--%>

       <!--HOME SECTION END-->

    <div  class="tag-line" >
         <div class="container">
           <div class="row  text-center" >
           
               <div class="col-lg-12  col-md-12 col-sm-12">
               
        <h2 data-scroll-reveal="enter from the bottom after 0.1s" ><i class="fa fa-circle-o-notch"></i><i class="fa fa-circle-o-notch"></i> </h2>
                   </div>
               </div>
             </div>       
    </div>
    <!--HOME SECTION TAG LINE END-->

    <!---- Resources ------>
	
     <div id="resources-sec" >
    <div class="container set-pad">
             <div class="row text-center">
                 <form id="form1" runat="server">
                <h1 style="color:green; text-align: center" ><span class="newStyle4"><strong>Successfully Registered!</strong></span></h1>
                <p style="color:black; text-align: center"><span class="auto-style1">Welcome to Myclasspapers, proceed to Login page</span> <br/> 
                    <div class="form-group">
                            <div  style="text-align:center">
                                <asp:Button ID="btnOk" runat="server" CssClass="btn btn-primary" Text="Ok" OnClick="btnO_Click" />
                                  
                            </div>
                        </div>
                </p>
            </div>

             
       
   
        
    
    </form>

                <%-- <div class="col-lg-8 col-lg-offset-2 col-md-8 col-sm-8 col-md-offset-2 col-sm-offset-2">
                     <h1 data-scroll-reveal="enter from the bottom after 0.1s" class="header-line" style="color:green"> LATEST WORKSHEETS</h1>
                     <p data-scroll-reveal="enter from the bottom after 0.3s" style="color:black">
                       Access the world’s best collection of lesson plans and classroom resources made by teachers, for teachers. 
                         </p>
                 </div>--%>

             </div>
             <!--/.HEADER LINE END-->

           <div class="row" >
               <div class="col-lg-4  col-md-4 col-sm-4" data-scroll-reveal="enter from the bottom after 0.4s">
              
               </div>
                                        
                 <%--<div class="col-lg-4  col-md-4 col-sm-4" data-scroll-reveal="enter from the bottom after 0.4s">
                     <div class="about-div">                                                             
                   <a href="assets2/Upload/d1.png" download>
						<img src="assets2/Upload/d1.png" alt="thumbnail" width="130" height="150">
						</a>					   				   				   				   				   		   
				   
                </div>
                   </div>
                   <div class="col-lg-4  col-md-4 col-sm-4" data-scroll-reveal="enter from the bottom after 0.5s">
                     <div class="about-div">
					    <a href="assets2/Upload/d2.jpg" download>
						<img src="assets2/Upload/d2.jpg" alt="thumbnail" width="130" height="150">
						</a>							
                </div>
                   </div>
                 <div class="col-lg-4  col-md-4 col-sm-4" data-scroll-reveal="enter from the bottom after 0.6s">
                     <div class="about-div">
                     <a href="assets2/Upload/d3.jpg" download>
						<img src="assets2/Upload/d3.jpg" alt="thumbnail" width="130" height="150">
						</a>						
                </div>
                   </div>  
						<div class="col-lg-4  col-md-4 col-sm-4" data-scroll-reveal="enter from the bottom after 0.7s">
                     <div class="about-div">
                     <a href="assets2/Upload/PEN.jpg" download>
						<img src="assets2/Upload/PEN.jpg" alt="thumbnail" width="130" height="150">
						</a>						
                </div>
                   </div>
					<div class="col-lg-4  col-md-4 col-sm-4" data-scroll-reveal="enter from the bottom after 0.8s">
                     <div class="about-div">
                     <a href="assets2/Upload/SHE.jpg" download>
						<img src="assets2/Upload/SHE.jpg" alt="thumbnail" width="130" height="150">
						</a>						
                </div>
                   </div>
						<div class="col-lg-4  col-md-4 col-sm-4" data-scroll-reveal="enter from the bottom after 0.9s">
                     <div class="about-div">
                     <a href="assets2/Upload/PEN2.jpg" download>
						<img src="assets2/Upload/PEN2.jpg" alt="thumbnail" width="130" height="150">
						</a>						
                </div>
                   </div>--%>    
					  
               </div>
             </div>
             </div>
        </div>    		 		 	

	<!-----ABOUT US------>
			<%--<div id="about-sec" class="container set-pad" >			
			<div class="container">
                <div class="row">				
                    <div class="col-md-6">
                        <h2>Children are our Future</h2>
						<hr></hr>
                        <p>Everything you need to support your teaching career is all in one place, 
						 whether you’re looking for a new job in education or to hire your next staff member.</p>
                        <p>We can also help you train up your staff or improve your own skills with our award-winning courses.</p>
                    </div>
                    <div class="col-md-6">
                        <img src="assets2/img/pre.jpg" class="img-responsive"">
                    </div>
					</div>
                </div>
            </div>--%>
           
	<!-----aBOUT US END------>
	
	
		 		 		 		 				 
				
    <!---CONTACT --->
   <%-- <div id="contact-sec"   >
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
     <div class="container">
             <div class="row set-row-pad"  >
    <div class="col-lg-4 col-md-4 col-sm-4   col-lg-offset-1 col-md-offset-1 col-sm-offset-1 " data-scroll-reveal="enter from the bottom after 0.4s">

                    <h2 ><strong>Our Location </strong></h2>
        <hr />
                    <div ">
                        <h4>234/80 -UFG , New Street,</h4>
                        <h4>Switzerland.</h4>
                        <h4><strong>Call:</strong>  + 67-098-907-1269 / 70 / 71 </h4>
                        <h4><strong>Email: </strong>info@yourdomain.com</h4>
                    </div>


                </div>
                 <div class="col-lg-4 col-md-4 col-sm-4   col-lg-offset-1 col-md-offset-1 col-sm-offset-1" data-scroll-reveal="enter from the bottom after 0.4s">

                    <h2 ><strong>Social Conectivity </strong></h2>
        <hr />
                    <div >
                    <a href="#">  <img src="assets2/img/Social/facebook.png" alt="" /> </a>
                    <a href="#"> <img src="assets2/img/Social/google-plus.png" alt="" /></a>
                    <a href="#"> <img src="assets2/img/Social/twitter.png" alt="" /></a>
                    </div>
                    </div>


                </div>
                 </div>
     <!-- CONTACT SECTION END-->
    <div id="footer">
          All Rights Reserved |  <a href="http://emedrep.com.ng/" style="color: #fff" target="_blank">Design by : emedrep.com.ng</a>
    </div>
     <!-- FOOTER SECTION END-->
   
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


<%--<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Class Notes: Success</title>
    <!-- Bootstrap Css -->
    
    <link href="css/bootstrap.home.css" type="text/css" rel="Stylesheet" />
    <link rel="stylesheet" type="text/css" href="css/animate.css" />
    <link rel="stylesheet" type="text/css" href="css/stylehome.css" />
    <link href="css/default.css" rel="stylesheet" type="text/css" />
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
     <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
</head>
<body id="page-top" data-spy="scroll" data-target=".navbar-custom">
    <form id="form1" runat="server">
    <div id="preloader">
        <div id="load">
        </div>
    </div>
    <nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-main-collapse">
                    <i class="fa fa-bars"></i>
                </button>
            
                    <a href="Registration.aspx">Register  | </a> 
                    <a href="Login.aspx">Login</a>
                  
            </div>--%>

            <!-- Collect the nav links, forms, and other content for toggling -->
          <%--<div class="collapse navbar-collapse navbar-right navbar-main-collapse">
      <ul class="nav navbar-nav">
        <li class="active"><a href="Home.aspx">Home</a></li> --%> 
       <%-- <li><a href="Home#categories">Category</a></li>--%>
          <%--<li><a href="#">Gallery</a></li>
          <li><a href="#">Login</a></li>
		<li><a href="Contact.aspx">Contact</a></li>
          
       
      </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
    
        <div class="container">
           <div class="center wow fadeInDown">
                <h1 class="home-section text-center">Successfully Registered!</h1>
                <p class="lead">Welcome to Classpapapers, proceed to Home page <br/> 
                    <div class="form-group">
                            <div  style="text-align:center">
                                <asp:Button ID="btnOk" runat="server" CssClass="btn btn-primary" Text="Ok" OnClick="btnO_Click" />
                                  
                            </div>
                        </div>
                </p>
            </div>

             
       
   
        
    
    </form>--%>
            
    <!-- /Section: contact -->
    <%--<footer>
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-lg-12">
					<div class="wow shake" data-wow-delay="0.4s">
					<div class="page-scroll marginbot-30">
						<a href="#intro" id="totop" class="btn btn-circle">
							<i class="fa fa-angle-double-up animated"></i>
						</a>
					</div>
					</div>
					<p>Copyright &copy; 2017 Class Notes. All Rights Reserved | Design by <a href="http://emedrep.com.ng//" target="_blank">Emedrep Nigeria Limited</a> </p>
				</div>
			</div>	
		</div>
	</footer>--%>
    <!-- Core JavaScript Files -->
    <%--<script src="js/jquery.min.js" type="text/javascript"></script>
    <script src="js/bootstrap.home.js" type="text/javascript"></script>
    <script src="js/jquery.easing.min.js" type="text/javascript"></script>
    <script src="js/jquery.scrollTo.js" type="text/javascript"></script>
    <script src="js/wow.min.js"></script>
    <!-- Custom Theme JavaScript -->
    <script src="js/custom.js" type="text/javascript"></script>
    
</body>
</html>--%>
