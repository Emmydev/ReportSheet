<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SecondaryBlog.aspx.cs" Inherits="ReportSheet.SecondaryBlog" %>

<%@ Register Src="~/ErrorControl/ErrorDisplay.ascx" TagPrefix="uc1" TagName="ErrorDisplay" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <title>ClassPaper: Blog</title>
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
        .auto-style4 {
            width: 32px;
            height: 31px;
        }
        .newStyle2 {
            font-family: "Agency FB";
        }
        .title3 {
            font-family: "Lucida Calligraphy";
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
        <div style="background-color:rgb(0, 199, 177); height: 250px;">
           <div class="overlay">		   			             
		<div class="container">		
           <div class="row text-center " >           
               <div class="col-lg-12  col-md-12 col-sm-12">               
                <div class="flexslider set-flexi" id="main-section" >				
				<div class="header-bottom">
              <div class="layer2 wow zoomIn" data-wow-duration="1s" data-wow-delay=".4s">
                <h1 class="title2" style="color:white"><b class="newStyle2">ClassPaper Blog Page</b></h1>
              </div>
              <div class="layer3 wow zoomInUp" data-wow-duration="2s" data-wow-delay="1s">
                <h3 class="title3" style="color:black">We Provide Subject-based posts, always check us for Lesson inspiration.</h3>
                  
              </div>
            </div>
          </div>				
                </div>                                                   
            </div>                
               </div>
                </div>
           </div>           
       </div
<!-- END Header -->
        <div  class="tag-line" >
         <div class="container">
           <div class="row  text-center" >           
               <div class="col-lg-12  col-md-12 col-sm-12">             
                   <h4>             
        <asp:Label ID="UsernameLabel" visible="false" CssClass="label user-label" style="color:#00A651" runat="server">Welcome, <%: Context.User.Identity.GetUserName()  %></asp:Label></h4>
                   <h2 data-scroll-reveal="enter from the bottom after 0.1s" ><i class="fa fa-circle-o-notch"></i>FEEL FREE TO LOOK AROUND<i class="fa fa-circle-o-notch"></i> </h2>
                   </div>
               </div>
             </div>       
    </div>

  <div class="blog-page area-padding">
    <div class="container">
      <div class="row">
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
                  <h4 style="color:seagreen" class="text-center"><b>Secondary Posts</b></h4>

                  <asp:GridView ID="grdReports" ShowHeaderWhenEmpty="true"  EmptyDataRowStyle-CssClass="text-center" EmptyDataText="No record to display" CssClass="table table-condensed table-responsive table-hover table-striped table-bordered medium-font" AutoGenerateColumns="False" runat="server" AllowPaging="true" PageSize="5" OnPageIndexChanging="grdReports_PageIndexChanging" OnRowCommand="grdReports_RowCommand" ShowHeader="False">
                                <Columns> 
                                    <asp:TemplateField HeaderText="Sn">
                                           <ItemTemplate>
                                               <asp:LinkButton ID="lnkPost" CommandArgument='<%#Eval("PostId") %>'  runat="server" OnClick="lnkPost_Click">  <span style="color:#000"><%# Eval ("Title")%></span></asp:LinkButton>
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
                  

                  <%--<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                  <asp:UpdatePanel ID="UpdatePanel1" runat="server"></asp:UpdatePanel>
                  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="RecentPostDS" AllowPaging="True" AllowSorting="True" BorderColor="White" BorderStyle="Solid" BorderWidth="2px" PageSize="5" CssClass="newStyle1">
                      <Columns>
                          <asp:BoundField DataField="Title" HeaderText="" SortExpression="Title" >
                          <ItemStyle BorderColor="White" BorderStyle="Solid" BorderWidth="2px" />
                          </asp:BoundField>
                          <asp:HyperLinkField DataNavigateUrlFields="Title"  DataNavigateUrlFormatString="?Title={0}" HeaderText="" Text="Read" >
                          <ItemStyle BorderColor="White" BorderStyle="Solid" BorderWidth="2px" />
                          </asp:HyperLinkField>
                      </Columns>
                      <PagerSettings FirstPageText="First" LastPageText="Last" />
                  </asp:GridView>



                  <asp:SqlDataSource ID="RecentPostDS" runat="server" ConnectionString="<%$ ConnectionStrings:ReportSheetConnectionString %>" SelectCommand="SELECT [Title] FROM [BlogPosts] ORDER BY [PublishedTime] DESC"></asp:SqlDataSource>--%>



               <%-- <div class="recent-post">
                  <!-- start single post -->
                  <div class="recent-single-post">
                    <div class="post-img">
                      <a href="#">
												   <img src="assets2/img/blog/1.jpg" alt="" height="70">
												</a>
                    </div>
                    <div class="pst-content">
                      <p><a href="#"> Redug Lerse dolor sit amet consect adipis elit.</a></p>
                    </div>
                  </div>
                  <!-- End single post -->
                  <!-- start single post -->
                  <div class="recent-single-post">
                    <div class="post-img">
                      <a href="#">
												   <img src="assets2/img/blog/2.jpg" alt="" height="70">
												</a>
                    </div>
                    <div class="pst-content">
                      <p><a href="#"> Redug Lerse dolor sit amet consect adipis elit.</a></p>
                    </div>
                  </div>
                  <!-- End single post -->
                  <!-- start single post -->
                  <div class="recent-single-post">
                    <div class="post-img">
                      <a href="#">
												   <img src="assets2/img/blog/3.jpg" alt="" height="70">
												</a>
                    </div>
                    <div class="pst-content">
                      <p><a href="#"> Redug Lerse dolor sit amet consect adipis elit.</a></p>
                    </div>
                  </div>
                  <!-- End single post -->
                  <!-- start single post -->
                  <div class="recent-single-post">
                    <div class="post-img">
                      <a href="#">
												   <img src="assets2/img/blog/4.jpg" alt="" height="70">
												</a>
                    </div>
                    <div class="pst-content">
                      <p><a href="#"> Redug Lerse dolor sit amet consect adipis elit.</a></p>
                    </div>
                  </div>
                  <!-- End single post -->
                </div>--%>
              </div>
              <!-- recent end -->
            </div>
            <div class="single-blog-page">
              <div class="left-blog">
                <h4 style="color:seagreen" class="text-center"><b>categories</b></h4>   
                    <ul>
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
                </ul>
              </div>
            </div>
            <%--<div class="single-blog-page">
              <div class="left-blog">
                <h4>archive</h4>
                <ul>
                  <li>
                    <a href="#">07 July 2016</a>
                  </li>
                  <li>
                    <a href="#">29 June 2016</a>
                  </li>
                  <li>
                    <a href="#">13 May 2016</a>
                  </li>
                  <li>
                    <a href="#">20 March 2016</a>
                  </li>
                  <li>
                    <a href="#">09 Fabruary 2016</a>
                  </li>
                </ul>
              </div>
            </div>--%>
            <%--<div class="single-blog-page">
              <div class="left-tags blog-tags">
                <div class="popular-tag left-side-tags left-blog">
                  <h4>popular tags</h4>
                  <ul>
                    <li>
                      <a href="#">Portfolio</a>
                    </li>
                    <li>
                      <a href="#">Project</a>
                    </li>
                    <li>
                      <a href="#">Design</a>
                    </li>
                    <li>
                      <a href="#">Website</a>
                    </li>
                    <li>
                      <a href="#">Joomla</a>
                    </li>
                    <li>
                      <a href="#">Html</a>
                    </li>
                    <li>
                      <a href="#">wordpress</a>
                    </li>
                    <li>
                      <a href="#">Masonry</a>
                    </li>
                  </ul>
                </div>
              </div>
            </div>--%>
          </div>
        </div>
        <!-- End left sidebar -->
        <!-- Start single blog -->
        <div class="col-md-8 col-sm-8 col-xs-12">
          <div class="row">
                                <asp:FormView ID="FormView2" runat="server">
                                    <%--DataSourceID="ViewPostDS"--%>
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
                              <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/BlogImages/"+Eval("ImagePath") %>' Height="350px" Width="450px"/>
                              <br />
                              
                              <strong>
                              <asp:Label ID="TitleLabel" runat="server" CssClass="auto-style1" Text='<%# Bind("Title") %>' />
                              </strong>
                              <br />
                              
                              <em>
                              <asp:Label ID="PublishedTimeLabel" runat="server" Text='<%# Bind("PublishedTime") %>' />
                              </em>
                              <br />
                            
                              <asp:Label ID="ContentLabel" runat="server" Text='<%# Bind("Content") %>' />
                              <br />

                          </ItemTemplate>
                      </asp:FormView>                   
                      <%--<asp:FormView ID="FormView1" runat="server" DataSourceID="ViewPostDS">
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
                              <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                              &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                          </InsertItemTemplate>
                          <ItemTemplate>
                              <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/BlogImages/"+Eval("ImagePath") %>' Height="350px" Width="450px"/>
                              <br />
                              
                              <strong>
                              <asp:Label ID="TitleLabel" runat="server" CssClass="auto-style1" Text='<%# Bind("Title") %>' />
                              </strong>
                              <br />
                              
                              <em>
                              <asp:Label ID="PublishedTimeLabel" runat="server" Text='<%# Bind("PublishedTime") %>' />
                              </em>
                              <br />
                            
                              <asp:Label ID="ContentLabel" runat="server" Text='<%# Bind("Content") %>' />
                              <br />

                          </ItemTemplate>
                      </asp:FormView>
                      <asp:SqlDataSource ID="ViewPostDS" runat="server" ConnectionString="<%$ ConnectionStrings:ReportSheetConnectionString %>" SelectCommand="SELECT [ImagePath], [Title], [PublishedTime], [Content], [PostId] FROM [BlogPosts] WHERE ([Title] = @Title)">
                          <SelectParameters>
                              <asp:QueryStringParameter Name="Title" QueryStringField="Title" Type="String" />
                              
                          </SelectParameters>
                      </asp:SqlDataSource>--%>
    
                    <hr style="color:#000" /> 
              <h2>Leave a Reply</h2>               
    <div style="background-color:#f9f9f9">
        <uc1:ErrorDisplay runat="server" ID="ErrorDisplay2" style="text-align:center" /><br />
        <%--<asp:TextBox ID="txtName" runat="server" Width="230px" Height="19px" placeholder="Your Name"></asp:TextBox>--%>
           
         
        <%--<br/>--%>
        <asp:TextBox id="txtComment" Placeholder="Type your Comment here..." class="col-sm-6" runat="server" TextMode="MultiLine" Height="110px" Width="230px" CssClass="auto-style3"></asp:TextBox>
        
            
        <br />
        
        <asp:Button ID="BtnComment" runat="server" Text="Post Comment" BackColor="seagreen" ForeColor="White" OnClick="PostComment_Click" Height="29px" CssClass="auto-style4" Width="132px" />
            
    </div> 
<hr />
 <div>             
 <asp:GridView ID="grdComment" ShowHeaderWhenEmpty="true"  EmptyDataRowStyle-CssClass="text-center" EmptyDataText="" CssClass="table table-condensed table-responsive table-hover table-striped table-bordered medium-font" AutoGenerateColumns="False" runat="server" AllowPaging="true" PageSize="5" OnPageIndexChanging="grdReports_PageIndexChanging" OnRowCommand="grdReports_RowCommand" ShowHeader="False">
                                <Columns> 
                                    <asp:TemplateField HeaderText="Sn">
                                           <ItemTemplate>
                                               <span><img src="../assets1/img/default.gif" class="img-avatar" height="30" width="30"  /></span> <span><strong><%# Eval ("Name")%>: </strong></span> | <span style="font-size:smaller;"><em><%# Eval ("Date")%></em></span><br />
                                               <span><%# Eval ("Message")%></span>
                                           </ItemTemplate>
                                    </asp:TemplateField> 
                                </Columns>  

<EmptyDataRowStyle CssClass="text-center"></EmptyDataRowStyle>
                           </asp:GridView>   
     </div>                
            <%--<div class="col-md-12 col-sm-12 col-xs-12">
              <div class="single-blog">
                <div class="single-blog-img">
                  <a href="blog-details.html">
											<img src="assets2/img/blog/1.jpg" alt="" height="180">
										</a>
                </div>
                <div class="blog-meta">
                  <span class="comments-type">
											<i class="fa fa-comment-o"></i>
											<a href="#">11 comments</a>
										</span>
                  <span class="date-type">
											<i class="fa fa-calendar"></i>2016-03-05 / 09:10:16
										</span>
                </div>
                <div class="blog-text">
                  <h4>
											<a href="#">Post my imagine Items</a>
										</h4>
                  <p>
                    Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit.
                  </p>
                </div>
                <span>
										<a href="blog-details.html" class="ready-btn">Read more</a>
									</span>
              </div>
            </div>
            <!-- End single blog -->
            <div class="col-md-12 col-sm-12 col-xs-12">
              <div class="single-blog">
                <div class="single-blog-img">
                  <a href="blog-details.html">
											<img src="assets2/img/blog/2.jpg" alt="" height="180">
										</a>
                </div>
                <div class="blog-meta">
                  <span class="comments-type">
											<i class="fa fa-comment-o"></i>
											<a href="#">7 comments</a>
										</span>
                  <span class="date-type">
											<i class="fa fa-calendar"></i>2016-03-05 / 09:10:16
										</span>
                </div>
                <div class="blog-text">
                  <h4>
											<a href="#">Post my imagine Items</a>
										</h4>
                  <p>
                    Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit.
                  </p>
                </div>
                <span>
										<a href="blog-details.html" class="ready-btn">Read more</a>
									</span>
              </div>
            </div>
            <!-- Start single blog -->
            <div class="col-md-12 col-sm-12 col-xs-12">
              <div class="single-blog">
                <div class="single-blog-img">
                  <a href="blog-details.html">
											<img src="assets2/img/blog/3.jpg" alt="" height="180">
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
											<a href="#">Post my imagine Items</a>
										</h4>
                  <p>
                    Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit.
                  </p>
                </div>
                <span>
										<a href="blog-details.html" class="ready-btn">Read more</a>
									</span>
              </div>
            </div>
            <!-- End single blog -->
            <div class="col-md-12 col-sm-12 col-xs-12">
              <div class="single-blog">
                <div class="single-blog-img">
                  <a href="blog-details.html">
											<img src="assets2/img/blog/4.jpg" alt="" height="180">
										</a>
                </div>
                <div class="blog-meta">
                  <span class="comments-type">
											<i class="fa fa-comment-o"></i>
											<a href="#">1 comments</a>
										</span>
                  <span class="date-type">
											<i class="fa fa-calendar"></i>2016-03-05 / 09:10:16
										</span>
                </div>
                <div class="blog-text">
                  <h4>
											<a href="#">Post my imagine Items</a>
										</h4>
                  <p>
                    Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit.
                  </p>
                </div>
                <span>
										<a href="blog-details.html" class="ready-btn">Read more</a>
									</span>
              </div>
            </div>
            <!-- Start single blog -->
            <div class="col-md-12 col-sm-12 col-xs-12">
              <div class="single-blog">
                <div class="single-blog-img">
                  <a href="blog-details.html">
											<img src="assets2/img/blog/5.jpg" alt="" height="180">
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
											<a href="#">Post my imagine Items</a>
										</h4>
                  <p>
                    Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit.
                  </p>
                </div>
                <span>
										<a href="blog-details.html" class="ready-btn">Read more</a>
									</span>
              </div>
            </div>
            <!-- End single blog -->--%>

              <%--<asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">

                  <ItemTemplate>
                      <asp:Image ID="Image1" ImageUrl='<%# "~/BlogImages/"+Eval("ImagePath") %>' runat="server" Height="150px" Width="352px" />
                      <br />
                      <asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' />
                      <br />
                      <asp:Label ID="PublishedTimeLabel" runat="server" Text='<%# Eval("PublishedTime") %>' />
                      <br />
                      <br />
                  </ItemTemplate>
                  
              </asp:DataList>

              <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString="<%$ ConnectionStrings:ReportSheetConnectionString %>" SelectCommand="SELECT [ImagePath], [Title], [PublishedTime] FROM [BlogPosts]"></asp:SqlDataSource>--%>

             


              



             


           <%-- <div class="blog-pagination">
              <ul class="pagination">
                <li><a href="#">&lt;</a></li>
                <li class="active"><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">&gt;</a></li>
              </ul>
            </div>--%>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- End Blog Area -->



  <div class="clearfix"></div>

   
  <!-- Start Footer bottom Area -->
  <footer>
    <div class="footer-area">
      <div class="container">
        <div class="row" style="background-color:#304150 ">
          <div class="col-md-4 col-sm-4 col-xs-12">
            <div class="footer-content">
              <div class="footer-head">
                <div class="footer-logo">
                  <h2 style="color:white; font-family:'Lucida Fax'"><span><b>Class</b></span>Paper</h2>
                </div>

                <p style="color:white">We provide Teachers with News and insight they can Trust.</p>
                <div class="footer-icons">
                  <ul>
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
                  </ul>
                </div>
              </div>
            </div>
          </div>
          <!-- end single footer -->
          <div class="col-md-4 col-sm-4 col-xs-12">
            <div class="footer-content">
              <div class="footer-head">
                <h4 style="color:white; font-family:'Lucida Fax'"><b>Contact Us</b></h4>
                <br />
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
                <h4 style="color:white; font-family:'Lucida Fax'"><b>Instagram</b></h4>
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
    <div class="footer-area-bottom" style="background-color:rgba(28, 43, 75, 1); color:white">
      <div class="container">
        <div class="row">
          <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="copyright text-center">
              <p>
                &copy; Copyright <strong>ClassPaper</strong>. All Rights Reserved | Designed by <a href="https://emedrep.com.ng/">Emedrep</a> <a href="#" class="back-to-top"><i class="fa fa-chevron-up" style="float:right; border:solid; background-color:rgb(66, 139, 202); border-color:rgb(66, 139, 202); color:#fff"></i></a>

              </p>
                
            </div>
            <%--<div class="credits">
             
              Designed by <a href="https://emedrep.com.ng/">Emedrep</a>
            </div>--%>
          </div>
        </div>
      </div>
    </div>
  </footer>

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
	
	<!-- Contact Form JavaScript File -->
  <script src="contactform/contactform.js"></script>

  <script src="js/main.js"></script>
    </form>
</body>
</html>


