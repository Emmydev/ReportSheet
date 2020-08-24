<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="CreatePost.aspx.cs" Inherits="ReportSheet.Admin.CreatePost" %>
<%@ Register Src="~/ErrorControl/ErrorDisplay.ascx" TagPrefix="uc1" TagName="ErrorDisplay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">

   <div id="page-wrapper">
	        <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <asp:Panel ID="Panel1" runat="server" Visible="false" CssClass="alert alert-info alert-dismissable">
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                        <asp:Literal runat="server" ID="Literal1"></asp:Literal>
                    </asp:Panel>

                   <div class="box"> 
                <div class="box-header">
                    <h2 style="text-align:center"><i class="fa fa-file-text-o  "></i> <strong>Create Post</strong></h2>
               </div>
                    </div>
                     <div class="row">
                       <div class="col-sm-12" runat="server">
                             <div class="col-md-12">
                                       <uc1:ErrorDisplay runat="server" ID="ErrorDisplay2" style="text-align:center" />
                                  <div class="form-horizontal" role="form" runat="server" id="Div1" style="align-content:center" >
                     
                                       <div class="form-group" runat="server" >
                                   
                                    <%--<div class="col-sm-10 text-left">
                                           <h3><strong>
                                              <i class="fa fa-upload "></i> <asp:Label ID="lbladdresource" runat="server" Text="(Upload a resource)"></asp:Label>
                                        </strong>
                                        </h3>
                                    </div>--%>
                                    </div> 
                                       <div class="form-group" runat="server" >
                                            <label for="txtTitles" class="col-sm-3 control-label"></label>
                                            <div class="col-sm-5" >
                                                <input id="txtTitle" class="col-sm-6" type="text" placeholder="Title"  ClientIDMode="Static"  runat="server" style="width: 627px; height: 41px;"/>
                                                <%--<asp:RequiredFieldValidator runat="server" ControlToValidate="txtTitle"
                                CssClass="text-danger" Display="Dynamic" ErrorMessage="*Title field is required." /> --%>
                                            </div>  
                                       </div>

                                 <div class="form-group" runat="server" >
                                    <label for="txtDescription" class="col-sm-3 control-label"></label>
                                    <div class="col-sm-5" runat="server">
                                        <asp:TextBox id="txtDescription" Placeholder="Blog Description..." class="col-sm-6" runat="server" TextMode="MultiLine" Height="416px" Width="627px"></asp:TextBox>
                                        <%--<asp:RequiredFieldValidator runat="server" ControlToValidate="txtDescription"
                                CssClass="text-danger" Display="Dynamic" ErrorMessage="*Description field is required." /> --%>
                                    </div>  
                                 </div>
                                      <%-- <div class="form-group" runat="server" >
                                            <label for="txtSubject" class="col-sm-3 control-label"></label>
                                            <div class="col-sm-5" >
                                                <asp:DropDownList runat="server" CssClass="col-sm-5" id="ddlCategory" Width="50%" ClientIDMode="Static">
                                                    <asp:ListItem Value="0">--Select Category--</asp:ListItem>
                                                    <asp:ListItem Value="1">Preschool</asp:ListItem>
                                                    <asp:ListItem Value="2">Kindergarten</asp:ListItem>
                                                    <asp:ListItem Value="3">Elementary</asp:ListItem>
                                                    <asp:ListItem Value="4">Secondary</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>  
                                       </div>--%>
                                      <div class="form-group" runat="server" >
                                    <label for="txtZnCorPhone" class="col-sm-3 control-label"></label>
                                    <div class="col-sm-5">
                                        <asp:FileUpload ID="imageUpload" class="col-sm-12" ClientIDMode="Static" runat="server" Width="50%" />
                                    </div>  
                                 </div>
                                      <asp:Label ID="lblMessage" runat="server"></asp:Label>

                              <div class="form-group" >
                                     <div class="col-sm-8 text-right">
                                         <asp:Button ID="BtnCancel" CssClass=" btn btn-sm btn-danger" runat="server" Text="Cancel" OnClick="btnCancel_Click" />
                                        <asp:Button ID="Button2" CommandName="Save" CssClass="btn btn-sm btn-success" runat="server"  Text="Submit Post"  OnClick="BtnPost_Click" CommandArgument="1"/>
                                    </div>
                              </div> 
                                       
                                 </div>
                        </div>
                     </div>
               
</div>
            </div>
                </div> 
     </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scriptsContentPlaceHolder" runat="server">
</asp:Content>
