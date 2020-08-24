<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="ReportSheet.Registration" %>

<%@ Register src="ErrorControl/ErrorDisplay.ascx" tagname="ErrorDisplay" tagprefix="uc1" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!--[if lt IE 7]> <html class="no-js ie6 oldie" lang="en"> <![endif]-->
    <!--[if IE 7]>    <html class="no-js ie7 oldie" lang="en"> <![endif]-->
    <!--[if IE 8]>    <html class="no-js ie8 oldie" lang="en"> <![endif]-->
    <!--[if IE 9]> <html class="no-js ie9 oldie" lang="en"> <![endif]-->
    <meta charset="utf-8">
    <!-- Set the viewport width to device width for mobile -->`
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="description" content="">
    <title>Myclasspapers: Registration</title>
    <!-- ============ Google fonts ============ -->
    <link href='http://fonts.googleapis.com/css?family=EB+Garamond' rel='stylesheet'
        type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700,300,800'
        rel='stylesheet' type='text/css' />
    <!-- CUSTOM STYLE CSS -->
    <link href="assets2/css/style.css" rel="stylesheet"/>
    <!-- ============ Add custom CSS here ============ -->
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="css/style1.css" rel="stylesheet" type="text/css" />
    <link href="css/font-awesome.css" rel="stylesheet" type="text/css" />
    
    <style type="text/css">
        .auto-style1 {
            color: #006600;
        }
        .auto-style2 {
            font-size: x-large;
        }
        .newStyle1 {
            font-family: "Lucida Sans", "Lucida Sans Regular", "Lucida Grande", "Lucida Sans Unicode", Geneva, Verdana, sans-serif;
        }
        .auto-style3 {
            left: -15px;
            top: -805px;
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
      
    <form id="form1" runat="server">
        
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
                    <li><a href="Index.aspx" style="color:#fff"><b>BACK TO HOME</b></a> </li>
                    <%--<li><a href="Login.aspx"><strong>Login</strong></a> </li>  --%>                 
                    
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
        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 text-center">
            <div id="banner">
                <h1>
                    <span class="auto-style1"><strong>Registration Form</strong></span></h1>
                <h5 class="auto-style2">
                    <span class="newStyle1"><em>Register to gain access to our Resources</em><p><img src="assets2/img/reg1.png" class="img-responsive" /></p></span></h5>
            </div>
        </div>
        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
            <uc1:ErrorDisplay ID="ErrorDisplay1" runat="server" />
            <div class="registrationform">
                <div class="form-horizontal">
                    <fieldset>
                        <legend><strong></strong> <i class="fa fa-pencil pull-right"></i></legend>
                        <hr />
                        
                        <div class="form-group">
                            <strong>
                            <asp:Label ID="Label5" runat="server" Text="Name:" CssClass="col-lg-2 control-label"></asp:Label>
                            </strong>
                            <div class="col-lg-10">
                                <asp:TextBox ID="txtName" runat="server" placeholder="" CssClass="form-control"></asp:TextBox>
                                           <%--<asp:RequiredFieldValidator runat="server" ControlToValidate="txtName"
                                CssClass="text-danger" Display="Dynamic" ErrorMessage="*Name field is required." /> --%>
                                <asp:RequiredFieldValidator
                                                runat="server"
                                                Display="None"
                                                ValidationGroup="register"
                                                ControlToValidate="txtName"
                                                ErrorMessage="Name is required"> </asp:RequiredFieldValidator>
                            </div>
                        </div>

                        <div class="form-group">
                            <strong>
                            <asp:Label ID="Label4" runat="server" Text="Phone: " CssClass="col-lg-2 control-label"></asp:Label>
                            </strong>
                            <div class="col-lg-10">
                                <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control"></asp:TextBox>
                                               <%--<asp:RequiredFieldValidator runat="server" ControlToValidate="txtPhone"
                                CssClass="text-danger" Display="Dynamic" ErrorMessage="*Phone Number field is required." /> --%>
                            <asp:RequiredFieldValidator
                                                runat="server"
                                                Display="None"
                                                ValidationGroup="register"
                                                ControlToValidate="txtPhone"
                                                ErrorMessage="Phone Number is required"> </asp:RequiredFieldValidator>
                            </div>
                        </div>

                        <div class="form-group">
                            <strong>
                            <asp:Label ID="Label1" runat="server" Text="Email:" CssClass="col-lg-2 control-label"></asp:Label>
                            </strong>
                            <div class="col-lg-10">
                                <asp:TextBox ID="txtEmail" runat="server"  CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator
                                                runat="server"
                                                Display="None"
                                                ValidationGroup="register"
                                                ControlToValidate="txtEmail"
                                                ErrorMessage="Email is required"> </asp:RequiredFieldValidator>
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <strong>
                            <asp:Label ID="Label2" runat="server" Text="Password:" CssClass="col-lg-2 control-label"></asp:Label>
                            </strong>
                            <div class="col-lg-10">
                                <asp:TextBox ID="txtPassword" runat="server"  CssClass="form-control"
                                    TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator
                                                runat="server"
                                                Display="None"
                                                ValidationGroup="register"
                                                ControlToValidate="txtPassword"
                                                ErrorMessage="Password is required"> </asp:RequiredFieldValidator>
                               <%-- <div class="checkbox">
                                    <label>
                                        <asp:CheckBox ID="CheckBox1" runat="server" Text="Remember Me" />
                                    </label>
                                </div>--%>
                            </div>
                        </div>
                        <div class="form-group">
                            <strong>
                            <asp:Label ID="Label3" runat="server" Text="I am a:" CssClass="col-lg-2 control-label"></asp:Label>
                            </strong>
                            <div class="col-lg-10">
                                <asp:DropDownList ID="ddlUserType" ForeColor="Black" runat="server" CssClass="form-control"></asp:DropDownList>  
                            </div>
                        </div>
                        
                        <%--<div class="form-group">
                          <asp:Label ID="Label5" runat="server" Text="Country" CssClass="col-lg-2 control-label"></asp:Label>                          
                            <div class="col-lg-10">
                                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control ddl">
                                    <asp:ListItem>Nigeria</asp:ListItem>
                                    <asp:ListItem>USA</asp:ListItem>
                                    <asp:ListItem>UK</asp:ListItem>
                                </asp:DropDownList>                              
                            </div>
                        </div>--%>

                        <div class="form-group">
                            <div class="auto-style3">
                                <asp:Button ID="btnBack" runat="server" CssClass="btn btn-primary" Text="<<Back" OnClick="btnBack_Click" BackColor="#339933" style="background-color: #3366CC" />
                                <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-primary" Text="Submit" OnClick="btnSubmit_Click" BackColor="#339933" />
                                  <asp:Button ID="btnCancel" runat="server" CssClass="btn btn-warning" Text="Cancel" OnClick="btnCancel_Click" BackColor="#CC3300" />                              
                            </div>
                        </div>
                    </fieldset>
                </div>
            </div>
        </div>
    </div>
    <script src="js/jquery.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <script src="js/jquery.backstretch.js" type="text/javascript"></script>
   
    </form>
    

    <div id="regis" class="container set-pad" >			
	<div class="container">
      <div class="row">	
        <div class="col-md-6">
        
       </div>
        
       <div class="col-md-6">
       <img src="assets2/img/reg.jpg" class="img-responsive">
       </div>


    </div>
    </div>
    </div><br />



  <div class="clearfix"></div>
                <div id="footer" style="text-align: center">
          All Rights Reserved |  <a href="http://myclasspapers.com.ng" style="color: #fff" target="_blank">Myclasspapers.com.ng</a>
    </div>
     <!-- FOOTER SECTION END-->         
</body>

</html>
