<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ViewResources.aspx.cs" Inherits="ReportSheet.ViewResources" %>

<%@ Register Src="~/ErrorControl/ErrorDisplay.ascx" TagPrefix="uc1" TagName="ErrorDisplay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <div class="col-sm-12" runat="server" id="divList">
    <div id="page-wrapper">
             <div class="row">
             <uc1:ErrorDisplay  runat="server" ID="ErrorDisplay1" />   
                 <uc1:ErrorDisplay runat="server" ID="ErrorDisplay2" style="text-align:center" />
        <div class="col-lg-12 col-md-12 col-sm-12">
             
            <%--<asp:Panel ID="responsePanel" runat="server" Visible="false" CssClass="alert alert-info alert-dismissable">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                <asp:Literal runat="server" ID="responseLabel"></asp:Literal>
            </asp:Panel>--%>
	  <div class="box" >
          <div class="box-header">
                <h2 style="text-align:center;"><strong><i class="fa fa-files-o  "></i> View Resources</strong></h2>
          </div>
          
          <div class="form-horizontal alert alert-success " role="form" runat="server">
                                     <div class="form-group" style="margin-bottom: 0px;">
                                     <%--<div class="col-sm-3">
                                             <asp:DropDownList runat="server" id="ddlAge"  CssClass="form-control"  Width="100%" ClientIDMode="Static"></asp:DropDownList>
                                        </div>--%>
                                   

                                       <div class="col-sm-3">
                                             <asp:DropDownList runat="server" id="ddlCategory"  CssClass="form-control"  Width="100%" ClientIDMode="Static"></asp:DropDownList>
                                        </div>

                                     

                                    <div class="col-sm-3">
                                        <asp:Button ID="SearchBtn" runat="server" CssClass="btn btn-sm btn-primary" OnClick="SearchBtn_Click" Text="Search" />
                                    </div>

                                </div>
                            </div>

<div class="row">
    <div class="col-lg-12 col-md-12 col-sm-12">
          <div class="box">
             <div class="box-content">
                 <div class="row">
                       <div class="col-sm-12" runat="server" id="div1">                    
                
                            <asp:GridView ID="grdReports" ShowHeaderWhenEmpty="true"  EmptyDataRowStyle-CssClass="text-center" EmptyDataText="No record to display" CssClass="table table-condensed table-responsive table-hover table-striped table-bordered medium-font" AutoGenerateColumns="False" runat="server" AllowPaging="true" PageSize="10" OnPageIndexChanging="grdReports_PageIndexChanging" OnRowCommand="grdReports_RowCommand">
                                <Columns> 
                                    <asp:TemplateField HeaderText="Sn">
                                           <ItemTemplate>
                                                <%# Container.DataItemIndex + 1 %>
                                           </ItemTemplate>
                                    </asp:TemplateField> 
                                   <asp:BoundField DataField="Title" HeaderText="Title" />  
                                    
                                      <%--<asp:BoundField DataField="" HeaderText="Author" />--%>
                                    <%--<asp:TemplateField HeaderText="Subject">
                                          <ItemTemplate>
                                                <%# Eval ("Subject.Name")%>  
                                          </ItemTemplate>
                                    </asp:TemplateField>--%>

                                    <asp:TemplateField HeaderText="Category">
                                          <ItemTemplate>
                                                <%# Eval ("Category.Type")%>  
                                          </ItemTemplate>
                                    </asp:TemplateField>

                                    <%--<asp:TemplateField HeaderText="Age Group">
                                          <ItemTemplate>
                                                <%# Eval ("AgeGroup.AgeClass")%>  
                                          </ItemTemplate>
                                    </asp:TemplateField>--%>

                                  
                                    <%--<asp:BoundField DataField="DateCreated" HeaderText="Date Uploaded" />--%>
                                    <asp:TemplateField ItemStyle-HorizontalAlign="left">  
                    <ItemTemplate> 
                                 <table>
                                           <tr>
                                                <td>
                                                                        <asp:LinkButton ID="btnEdit" CommandArgument='<%#Eval("SheetId") %>'  ClientIDMode="Static" CausesValidation="False"   OnClick="btnEdit_Click" CssClass="btn btn-xs btn-primary" runat="server"><i class="fa fa-edit"></i>Edit</asp:LinkButton> 
                                                                 </td>
                                                                    <td>
                                                            
                                                              <asp:LinkButton ID="btnDelete"  OnClick="btnDelete_Click" CommandArgument='<%#Eval("SheetId") %>'   OnClientClick="javascript:return confirm('Are you sure you want to delete this from the list?');" AlternateText="Delete Inventory" CssClass="btn btn-xs btn-danger" runat="server"><i class="fa fa-trash-o"></i> Delete</asp:LinkButton> 
                          
                                                              </td>
                                                                </tr>
                                                            </table> 
                        <%--<asp:LinkButton ID="lnkDownload" runat="server"  
                            CommandArgument='<%# Eval("SheetId") %>' CommandName="Download"><i class="fa fa-download">&nbsp</i>Download</asp:LinkButton>  --%>
                    </ItemTemplate>  
                </asp:TemplateField>
                                </Columns>  
                           </asp:GridView> 
                       </div>
                </div>
             </div>
         </div>
                                  
        <%-- <div class="col-sm-10" runat="server" id="divList">
		<div class="box box-primary">
              <div class="col-md-3">

              </div>
        </div>
                                              
  </div>--%>
            
     </div>
</div>
              
      </div>
            </div>

             </div>
    </div>
    </div>

     <div class="col-sm-12" runat="server" visible="false" id="divForm">
	        <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <asp:Panel ID="Panel1" runat="server" Visible="false" CssClass="alert alert-info alert-dismissable">
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                        <asp:Literal runat="server" ID="Literal1"></asp:Literal>
                    </asp:Panel>

                   <div class="box"> 
                <div class="box-header">
                    <h2 style="text-align:center"><i class="fa fa-file-text-o  "></i> <strong>Update Resources</strong></h2>
               </div>
                    </div>
                     <div class="row">
                       <div class="col-sm-12" runat="server">
                             <div class="col-md-12">
                                       
                                  <div class="form-horizontal" role="form" runat="server" id="Div2" style="align-content:center" >
                     
                                       <div class="form-group" runat="server" >
                                   
                                    <%--<div class="col-sm-10 text-left">
                                           <h3><strong>
                                              <i class="fa fa-upload "></i> <asp:Label ID="lbladdresource" runat="server" Text="(Upload a resource)"></asp:Label>
                                        </strong>
                                        </h3>
                                    </div>--%>
                                    </div> 
                                       <div class="form-group" runat="server" >
                                            <label for="txtTitles" class="col-sm-3 control-label">Title: </label>
                                            <div class="col-sm-5" >
                                                <input id="txtTitle" class="col-sm-6" type="text"  ClientIDMode="Static"  runat="server"/>
                                            </div>  
                                       </div>

                                 <div class="form-group" runat="server" >
                                    <label for="txtDescription" class="col-sm-3 control-label">Description: </label>
                                    <div class="col-sm-5" runat="server">
                                        <asp:TextBox id="txtDescription" class="col-sm-6" runat="server" TextMode="MultiLine" Height="100px"></asp:TextBox>
                                    </div>  
                                 </div>

                                      <div class="form-group" runat="server" >
                                            <label for="txtTitles" class="col-sm-3 control-label">Author: </label>
                                            <div class="col-sm-5" >
                                                <input id="txtAuthor" class="col-sm-6" type="text"  ClientIDMode="Static"  runat="server"/>
                                            </div>  
                                       </div>

                                      <%--<div class="form-group" runat="server" >
                                            <label for="txtAge" class="col-sm-3 control-label">Age Class: </label>
                                            <div class="col-sm-5" >
                                                <asp:DropDownList runat="server" CssClass="col-sm-5" id="DropDownList1" Width="50%" ClientIDMode="Static"></asp:DropDownList>
                                            </div>  
                                       </div>--%>

                                       <div class="form-group" runat="server" >
                                            <label for="txtCategory" class="col-sm-3 control-label">Category: </label>
                                             <div class="col-sm-5">
                                                 <asp:DropDownList runat="server" CssClass="col-sm-5" id="ddlCate" Width="50%" ClientIDMode="Static"></asp:DropDownList>
                                             </div>
                                       </div>

                                       <div class="form-group" runat="server" >
                                            <label for="txtSubject" class="col-sm-3 control-label">Subject: </label>
                                            <div class="col-sm-5" >
                                                <asp:DropDownList runat="server" CssClass="col-sm-5" id="ddlSubject" Width="50%" ClientIDMode="Static"></asp:DropDownList>
                                            </div>  
                                       </div>

                                       <div class="form-group" runat="server" >
                                            <label for="txtAge" class="col-sm-3 control-label">Add a Curiculum (Optional): </label>
                                            <div class="col-sm-5" >
                                                <asp:DropDownList runat="server" CssClass="col-sm-5" id="ddlCurriculum" Width="50%" ClientIDMode="Static"></asp:DropDownList>
                                            </div>  
                                       </div>
                                    

                                 <div class="form-group" runat="server" >
                                    <label for="txtZnCorPhone" class="col-sm-3 control-label">Upload File </label>
                                    <div class="col-sm-5">
                                        <asp:FileUpload ID="FileUpload" class="col-sm-12" ClientIDMode="Static" runat="server" />
                                    </div>  
                                 </div>

                                      <div class="form-group" runat="server" >
                                    <label for="txtZnCorPhone" class="col-sm-3 control-label">Upload Preview </label>
                                    <div class="col-sm-5">
                                        <asp:FileUpload ID="previewUpload" class="col-sm-12" ClientIDMode="Static" runat="server" />
                                    </div>  
                                 </div>
                                      <asp:Label ID="lblMessage" runat="server"></asp:Label>

                              <div class="form-group" >
                                     <div class="col-sm-8 text-right">
                                         <asp:Button ID="btnBack" CssClass=" btn btn-sm btn-danger" runat="server" Text="<<Back" OnClick="btnBack_Click" />
                                        <asp:Button ID="BtnUpload" CommandName="Save" CssClass="btn btn-sm btn-success" runat="server"  Text="Upload"  OnClick="BtnCategoryPost_Click" CommandArgument="1"/>
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





