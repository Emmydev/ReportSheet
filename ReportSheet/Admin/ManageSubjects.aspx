 <%@ Page Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ManageSubjects.aspx.cs" Inherits="ReportSheet.ManageCourses" %>

<%@ Register Src="~/ErrorControl/ErrorDisplay.ascx" TagPrefix="uc1" TagName="ErrorDisplay" %>

 <asp:Content ID="Content1" ContentPlaceHolderID="headContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
     <div id="page-wrapper">
             <div class="row">
                 <uc1:ErrorDisplay ID="ErrorDisplay1" runat="server" />
                 <uc1:ErrorDisplay runat="server" ID="ErrorDisplay2" style="text-align:center" />

                     <div class="col-lg-12 col-md-12 col-sm-12" runat="server" id="divList">
                         <div class="box" >
          <div class="box-header">
                            <h2 style="text-align:center;"><i class="fa fa-list"></i>Manage Subjects</h2>
                            </div>
                             </div>
									
                                <div class="form-horizontal" role="form" runat="server" id="divPremiseList">
                                      <div class="form-group">
                                                     <div class="col-sm-12 text-right">
                                                  <asp:Button ID="btnAddSubjects"  OnClick="btnAddSubjects_Click" runat="server" CssClass="btn  btn-sm btn-success" Text="Add Subject" />
                                              </div>
                                              </div>
                                         
                                           <asp:GridView ID="grdReports" ShowHeaderWhenEmpty="true"  EmptyDataRowStyle-CssClass="text-center" EmptyDataText="No record to display" CssClass="table table-condensed table-responsive table-hover table-striped table-bordered medium-font" AutoGenerateColumns="False" runat="server" AllowPaging="true" PageSize="10" OnPageIndexChanging="grdReports_PageIndexChanging">
                                                  <Columns>
                                                     
                                                       <asp:TemplateField HeaderText="Sn">
                                                         <ItemTemplate>
                                                             <%# Container.DataItemIndex + 1 %>
                                                         </ItemTemplate>
                                                     </asp:TemplateField>
                                                      
                                                      <asp:BoundField DataField="Name" HeaderText="Subject Name" />
                                                      
                                                     <asp:TemplateField HeaderText="Action" >
                                                        <ItemStyle CssClass="text-center"  />
                                                        <ItemTemplate>
                                                            <table>
                                                                <tr>
                                                                    <td>
                                                                        <asp:LinkButton ID="btnEdit" CommandArgument='<%#Eval("SubjectId") %>'  ClientIDMode="Static" CausesValidation="False"   OnClick="btnEdit_Click" CssClass="btn btn-xs btn-primary" runat="server"><i class="fa fa-edit"></i>Edit</asp:LinkButton> 
                                                                    </td>
                                                                    <td>
                                                                        <asp:LinkButton ID="btnDelete"  OnClick="btnDelete_Click" CommandArgument='<%#Eval("SubjectId") %>'   OnClientClick="javascript:return confirm('Are you sure you want to delete this subject from the list?');" AlternateText="Delete Subject" CssClass="btn btn-xs btn-danger" runat="server"><i class="fa fa-trash-o"></i> Delete</asp:LinkButton> 
                                                                    </td>
                                                                </tr>
                                                             </table>
                                                        </ItemTemplate>
                                                      </asp:TemplateField>
                                                     
                                                   </Columns>
                                              </asp:GridView>
                                </div>
                     </div> 
                                          
                                <div class="col-sm-12" runat="server" visible="false" id="divForm">
                   <div class="col-md-12">
                                       <%--<uc1:ErrorDisplay runat="server" ID="ErrorDisplay2" />--%>
             <div class="form-horizontal" role="form" runat="server" id="detailView" >
                     
                             <div class="form-group" runat="server" >
                                   <div class="box" >
                                <div class="box-header">
                                  <%--<div class="col-sm-10 text-center">--%>
                                      <%--<h2 style="text-align:center;"><i class="fa fa-list"></i>Add Subjects</h2>--%>
                                       <h2><i class="fa fa-list"></i><strong>
                                           <asp:Label ID="lblSubject" runat="server" Text="Add Subject"></asp:Label>
                                        </strong>
                                        </h2>
                                  </div>
                                </div>
                                       </div>
                              </div> 
                       
                         <div class="form-group" runat="server" style="align-content:center">
                               <label for="txtsubjects" class="col-sm-3 control-label">Subject Name: </label>
                               <div class="col-sm-5">
                                    <input id="txtSubject"  type="text" class="col-sm-6" style="text-align:center" ClientIDMode="Static"  runat="server"/>         
                               </div>  
                         </div>

                                       
                         <div class="form-group" >
                                <div class="col-sm-8 text-right">
                          <asp:Button ID="btnBack" CommandName="Save" CssClass="btn btn-sm btn-success" runat="server"  Text="<<Back" OnClick="btnBack_Click" CommandArgument="1"/>
                          <asp:Button ID="BtnSave" CommandName="Save" CssClass="btn btn-sm btn-success" runat="server"  Text="Submit"  OnClick="BtnSave_Click" CommandArgument="1"/>
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
 