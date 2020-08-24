<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="DownloadHistory.aspx.cs" Inherits="ReportSheet.Admin.DownloadHistory" %>
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
	  <div class="box" >
          <div class="box-header">
                <h2 style="text-align:center;"><strong><i class="fa fa-files-o  "></i> Download Histories</strong></h2>
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
                                   <asp:BoundField DataField="Email" HeaderText=" Users Email" />
                                  <%--<asp:TemplateField HeaderText="Category">
                                          <ItemTemplate>
                                                <%# Eval ("AspNetUsers.Email")%>  
                                          </ItemTemplate>
                                    </asp:TemplateField>--%>

                                    <asp:TemplateField HeaderText="Date">
                                          <ItemTemplate>
                                                <%# Eval ("DateCreated")%>  
                                          </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>  
                           </asp:GridView> 
                       </div>
                </div>
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
