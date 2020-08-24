<%@ Page Language="C#" AutoEventWireup="true" async="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="ReportSheet.ForgotPassword" %>

<%@ Register src="ErrorControl/ErrorDisplay.ascx" tagname="ErrorDisplay" tagprefix="uc1" %>

<!DOCTYPE html>
<html>
<head>
<title>Myclasspapers: Forgot Password</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- CUSTOM STYLE CSS -->
    <link href="assets2/css/style.css" rel="stylesheet"/>
<!-- Custom Theme files -->
<link href="css1/style.css" rel="stylesheet" type="text/css" media="all" /> 
<!-- //Custom Theme files -->

<!-- ============ Add custom CSS here ============ -->
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="css/style1.css" rel="stylesheet" type="text/css" />
<link href="css/font-awesome.css" rel="stylesheet" type="text/css" />



<!-- js -->
<script src="js/jquery-2.2.3.min.js"></script>
<!-- //js -->  

<!-- web font -->
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'><!--web font-->
<!-- //web font -->
    
    
    
    <style type="text/css">
        .newStyle1 {
            font-family: "Arial Black";
        }

    </style>
</head>
<body>
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
                    <li ><a href="index.aspx" style="color:white">BACK TO HOME</a></li>					 				 					 
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

    <div class="container">	
        <div class="row">
             <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 text-center">
            <div id="banner">
                <h1>
                    <span class="auto-style1">ClassPaper <strong>Reset Password</strong></span></h1>                
                    <%--<img src="assets2/img/login.jpg" class="img-responsive" />--%>
                        <h1>Enter your Email to Reset your Password</h1>                   
            </div>
        </div>
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                <div class="main-agileits" id="tem">      
                    <div class="mainw3-agileinfo form" style="margin-top:100px; background-color: #1C2B4B; width: 400px; height: 450px; color: white ">
                        <h1>Forgot Password</h1>
                        <form class="field-wrap" id="frmLogin" name="Login" runat="server">
                            <asp:Panel ID="responsePanel" runat="server" Visible="false" Style="font-size: 12px;">
                                <button type="button" class="button button-block" data-dismiss="alert" aria-hidden="true">&times;</button>
                                <asp:Literal runat="server" ID="responseLabel"></asp:Literal>
                            </asp:Panel>
                            <asp:ValidationSummary ID="vsLogin"  CssClass="alert alert-danger text-small" runat="server" />
                              <uc1:ErrorDisplay ID="ErrorDisplay1" runat="server" />
                             
&nbsp;<%-- <asp:login id="UserLogin" runat="server" OnLoggingIn="UserLogin_LoggingIn">
            <LayoutTemplate>--%><fieldset>
                                <legend></legend>
                                <label for="" style="margin-bottom: 2px"></label>
                                <asp:TextBox ID="txtEmail" runat="server" placeholder="Email:" Width="319px"></asp:TextBox>
                              
                                <asp:RequiredFieldValidator
                                    ID="usernameRFV"
                                    runat="server"
                                    ControlToValidate="txtEmail"
                                    Display="None"
                                    ErrorMessage="Email Address is required">
                                </asp:RequiredFieldValidator>
                                <asp:Button ID="btnForgotPassword" runat="server" CommandName="Login" Text="Reset Password" CssClass="button button-block" style="margin-top:20px" BackColor="#339933" OnClick="btnForgotPassword_Click"  />
                                
                            </fieldset>
               <%-- </LayoutTemplate>
                </asp:login>--%>
                            
                        </form>
                        <%--<b>Forgot Password?</b>--%>
                        <%--<p>--%>
                          <asp:HyperLink ID="HomeHyperLink" CssClass="badge badge-warning" runat="server" NavigateUrl="index.aspx"><span style="color: white">Home</span></asp:HyperLink> | <asp:HyperLink ID="LoginHyperLink" CssClass="badge badge-warning" runat="server" NavigateUrl="Login.aspx"><span style="color: white">Sign In</span></asp:HyperLink> | 
                            <asp:HyperLink ID="SignUpHyperLink" CssClass="badge badge-warning" runat="server" NavigateUrl="Registration.aspx"><%--<span style="color:#339933 ">New User?  </span>--%> <span>Sign Up</span></asp:HyperLink>
                                <%--</p>--%>
                        
                                                    
                    </div>
                </div>
        </div>
	<script>
	    $('.form').find('input, textarea').on('keyup blur focus', function (e) {
	        var $this = $(this),
                label = $this.prev('label');

	        if (e.type === 'keyup') {
	            if ($this.val() === '') {
	                label.removeClass('active highlight');
	            } else {
	                label.addClass('active highlight');
	            }
	        } else if (e.type === 'blur') {
	            if ($this.val() === '') {
	                label.removeClass('active highlight');
	            } else {
	                label.removeClass('highlight');
	            }
	        } else if (e.type === 'focus') {

	            if ($this.val() === '') {
	                label.removeClass('highlight');
	            }
	            else if ($this.val() !== '') {
	                label.addClass('highlight');
	            }
	        }

	    });
	</script>
            
            </div>               
        
    </div>
        


    <div id="footer">			
		<p>Copyright &copy; 2017 Class Notes. All Rights Reserved | Design by <a href="http://emedrep.com.ng//" style="color: #fff" target="_blank">Emedrep Nigeria Limited</a> </p>
					
	</div>
</body>
</html>

