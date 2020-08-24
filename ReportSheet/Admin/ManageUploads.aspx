<%@ Page Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ManageUploads.aspx.cs" Inherits="ReportSheet.ManageUploads" %>

<%@ Register Src="~/ErrorControl/ErrorDisplay.ascx" TagPrefix="uc1" TagName="ErrorDisplay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
<div id="page-wrapper">
             <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12">
            <asp:Panel ID="responsePanel" runat="server" Visible="false" CssClass="alert alert-info alert-dismissable">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                <asp:Literal runat="server" ID="responseLabel"></asp:Literal>
            </asp:Panel>
	  <div class="box" >
          <div class="box-header">
                <h2 style="text-align:center;"><i class="fa fa-archive  "></i> Manage Uploads</h2>
          </div>
          </div>

          

<%--<div class="row">
    <div class="col-lg-12 col-md-12 col-sm-12">

          <div class="box">
             <div class="box-content">
                 <div class="row">
                       <div class="col-sm-12" runat="server" id="div1">                    
                
                            <asp:GridView ID="grdReports" ShowHeaderWhenEmpty="true"  EmptyDataRowStyle-CssClass="text-center" EmptyDataText="No record to display" CssClass="table table-condensed table-responsive table-hover table-striped table-bordered medium-font" AutoGenerateColumns="False" runat="server" AllowPaging="true" PageSize="10" OnPageIndexChanging="grdReports_PageIndexChanging">
                                <Columns> 
                                    <asp:TemplateField HeaderText="Sn">
                                           <ItemTemplate>
                                                <%# Container.DataItemIndex + 1 %>
                                           </ItemTemplate>
                                    </asp:TemplateField> 
                                   <asp:BoundField DataField="Title" HeaderText="Title" />  
                                    
                                    <asp:BoundField DataField="Description" HeaderText="Decsription" />
                                    <asp:TemplateField HeaderText="Category">
                                          <ItemTemplate>
                                                <%# Eval ("Category.Type")%>  
                                          </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Class Group">
                                          <ItemTemplate>
                                                <%# Eval ("AgeGroup.AgeClass")%>  
                                          </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:BoundField DataField="DateCreated" HeaderText="Date Uploaded" />
                                    <asp:TemplateField HeaderText="Approve Upload?" >
                                        <ItemStyle CssClass="text-center"  />
                                        <ItemTemplate>
                                            <table style="text-align:center;">                
                                                <tr>
                                                    <td style="text-align:center; margin-left:0;margin-right:0;width:5%">
                                                        <asp:CheckBox ID="chkApprove" CommandName='<%#Eval("SheetId")%>' AutoPostBack="true"  OnCheckedChanged="chkApprove_CheckedChanged"  runat="server" />
                                                    </td>                   
                                                </tr>
                                            </table>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>  
                           </asp:GridView> 
                       </div>

    <div class="modal fade" id="confirmDeactivateUser" tabindex="-1" role="dialog" aria-labelledby="confirmLogoutModalLabel" aria-hidden="true">
             <div class="modal-dialog"  style="width:30%; margin-top:10%">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h3 class="modal-title" id="confirmCustomerpaidLabel"><b><asp:Label runat="server" ID="lblActivationTitle"></asp:Label> ?</b></h3>
                    </div>
                    <div class="modal-body">
                       <span class="text-center">
                            Are you sure you want to <asp:Label runat="server" ID="lblActionType"></asp:Label> this pharmacy ? 
                      </span>    
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal"><i class="fa fa-ban"></i>No</button>
                        <asp:LinkButton CssClass="btn btn-success" runat="server" ID="linkActivate"  OnClick="linkActivate_Click" ><i class="fa fa-sign-out"></i> Yes</asp:LinkButton>
                    </div>
                </div>
            </div>
    </div>
                </div>
             </div>
          </div>
     </div>
</div>--%>

          <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12">
            <asp:Panel ID="Panel1" runat="server" Visible="false" CssClass="alert alert-info alert-dismissable">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                <asp:Literal runat="server" ID="Literal1"></asp:Literal>
            </asp:Panel>

            <asp:ValidationSummary ID="pageValidationSummary" runat="server" CssClass="errormsg" ShowMessageBox="True" ShowSummary="False" />

                  <div class="box">
                <div class="box-header">
                    
                    
                </div>
                <div class="box-content">
                               <div class="row">
                                   <div class="col-sm-12" runat="server" id="divList">      
                                          <div class="col-sm-12" runat="server" id="divForm1">
										 
                                      
                              <uc1:ErrorDisplay  runat="server" ID="ErrorDisplay1" />
                                             
                                              <input id="hidMapValues"  type="hidden" />
                                                <asp:GridView ID="grdReports" AllowPaging="true" PageSize="10"  OnPageIndexChanging="grdReports_PageIndexChanging" CssClass="table table-condensed table-responsive table-hover table-striped table-bordered medium-font" AutoGenerateColumns="False" runat="server" >
                                                  <Columns>
                                                     
                                                       <asp:TemplateField HeaderText="Sn">
                                                         <ItemTemplate>
                                                             <%# Container.DataItemIndex + 1 %>
                                                         </ItemTemplate>
                                                     </asp:TemplateField>
                                                      <asp:BoundField DataField="Title" HeaderText="Title" />
                                                      
                                                     <asp:BoundField DataField="Description" HeaderText="Description" />
                                    <asp:TemplateField HeaderText="Category">
                                          <ItemTemplate>
                                                <%# Eval ("Category.Type")%>  
                                          </ItemTemplate>
                                    </asp:TemplateField>

                                    <%--<asp:TemplateField HeaderText="Class Group">
                                          <ItemTemplate>
                                                <%# Eval ("AgeGroup.AgeClass")%>  
                                          </ItemTemplate>
                                    </asp:TemplateField>--%>

                                    <asp:BoundField DataField="DateCreated" HeaderText="Date Uploaded" />
                                                      
                                                      
                                                  
                                                <asp:TemplateField HeaderText="Approve Classpaper?" >
                                                        <ItemStyle CssClass="text-center"  />
                                                        <ItemTemplate>
                                                            <table style="text-align:center;">
                                                                
                                                                <tr>
                                                                    <td style="text-align:center; margin-left:0;margin-right:0;width:5%">
                                                                       <asp:CheckBox ID="chkCompleted" CommandName='<%#Eval("SheetId")%>'  AutoPostBack="true"  OnCheckedChanged="chkCompleted_CheckedChanged"  runat="server" />
                                                                    </td>
                                                                    
                                                                </tr>
                                                            </table>
                                               
                                                        </ItemTemplate>
                                                      </asp:TemplateField>
                                                     
                                                  </Columns>
                                              </asp:GridView>
                                           
                                               </div> 

                      </div>
                                     

<%-- <div class="modal fade" id="confirmCustomerpaid" tabindex="-1" role="dialog" aria-labelledby="confirmLogoutModalLabel" aria-hidden="true">
              <div class="modal-dialog"  style="width:30%; margin-top:10%">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h3 class="modal-title" id="confirmCustomerpaidLabel"><b>Classpaper Approval </b></h3>
                    </div>
                    <div class="modal-body">
                       <span class="text-center">
                            Approve Classpaper ? 
                       </span>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal"><i class="fa fa-ban"></i>No</button>
                        <asp:LinkButton CssClass="btn btn-success" runat="server" ID="lblOrderCompleted" OnClick="lblOrderCompleted_Click"  ><i class="fa fa-sign-out"></i> Yes</asp:LinkButton>
                    </div>
                </div>
            </div>
        </div>--%>
                          
                                   </div>
                    
     
                                 
                              
    <!-- /.modal -->
                                  
                         
                                      
                                    
                                 
                  
                                   </div>
                                       
                    
                                   </div>
                    </div>
                       
                </div>
              
      </div>
            </div></div>
    </div>
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scriptsContentPlaceHolder" runat="server">
</asp:Content>