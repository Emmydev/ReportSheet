<%@ Page Language="C#" MasterPageFile="~/Admin.Master"  AutoEventWireup="true" CodeBehind="AddCategory.aspx.cs" Inherits="ReportSheet.AddCourse" %>

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
                            <h2 style="text-align:center;"><i class="fa fa-list"></i>Manage Categories</h2>
                                </div>
									</div>
                                <div class="form-horizontal" role="form" runat="server" id="divPremiseList">
                                      <div class="form-group">
                                                     <div class="col-sm-12 text-right">
                                                  <asp:Button ID="btnAddReports"  OnClick="btnAddReports_Click" runat="server" CssClass="btn  btn-sm btn-success" Text="Add Category" />
                                              </div>
                                              </div>
                                               
                                         
                                           <asp:GridView ID="grdReports" ShowHeaderWhenEmpty="true"  EmptyDataRowStyle-CssClass="text-center" EmptyDataText="No record to display" CssClass="table table-condensed table-responsive table-hover table-striped table-bordered medium-font" AutoGenerateColumns="False" runat="server" AllowPaging="true" PageSize="10" OnPageIndexChanging="grdReports_PageIndexChanging">
                                                  <Columns>
                                                     
                                                       <asp:TemplateField HeaderText="Sn">
                                                         <ItemTemplate>
                                                             <%# Container.DataItemIndex + 1 %>
                                                         </ItemTemplate>
                                                     </asp:TemplateField>
                                                      
                                                      <asp:BoundField DataField="Type" HeaderText="Category" />
                                                      
                                                        
                                                       
                                                        <asp:TemplateField HeaderText="Action" >
                                                        <ItemStyle CssClass="text-center"  />
                                                        <ItemTemplate>
                                                            <table>
                                                                <tr>
                                                                    
                                                                      <td>
                                                                        <asp:LinkButton ID="btnEdit" CommandArgument='<%#Eval("Id") %>'  ClientIDMode="Static" CausesValidation="False"   OnClick="btnEdit_Click" CssClass="btn btn-xs btn-primary" runat="server"><i class="fa fa-edit"></i>Edit</asp:LinkButton> 
                                                                    </td>
                                                                    <td>
                                                            
                                                              <asp:LinkButton ID="btnDelete"  OnClick="btnDelete_Click" CommandArgument='<%#Eval("Id") %>'   OnClientClick="javascript:return confirm('Are you sure you want to delete this category from the list?');" AlternateText="Delete Category" CssClass="btn btn-xs btn-danger" runat="server"><i class="fa fa-trash-o"></i> Delete</asp:LinkButton> 
                          
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
                                   
                                    <div class="col-sm-10 text-center">
                                        <div class="box" >
                            <div class="box-header">
                                               <%--<h2 style="text-align:center;"><i class="fa fa-list"></i>Add Categories</h2>--%>
                                <h2><i class="fa fa-list"></i><strong>
                                               <asp:Label ID="lblcategory" runat="server" Text="Add Category"></asp:Label>
                                    </strong>
                                        </h2>

                                </div>
                                            </div>
                                    </div>
                                    </div> 
                                <div class="form-group" runat="server" style="align-content:center">
                                    <label for="txtcategory" class="col-sm-3 control-label">Category Name: </label>
                                    <div class="col-sm-5">
                                        <input id="txtCategory"  type="text" class="col-sm-6" style="text-align:center" ClientIDMode="Static"  runat="server"/>
                                             
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



