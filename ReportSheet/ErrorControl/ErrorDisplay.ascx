<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ErrorDisplay.ascx.cs" Inherits="ReportSheet.ErrorControl.ErrorDisplay" %>
<style>
    .errDv
{
    font-family: Arial, Trebuchet MS, Tw Cen MT, Verdana, Arial;
    font-size: 9pt; color:#b94a48; background-color:#f2dede;
    border-radius: 3px;
    -moz-border-radius: 3px;
    -webkit-border-radius: 3px;
    -o-border-radius: 3px;
    -ms-border-radius: 3px;
    padding: 3px;
    width: 95%;
    margin: 10px auto;  
}
    .messageFrame
{
    
    
   color: #468847;
background-color: #dff0d8;
border-color: #d6e9c6;
  padding: 4px 8px;
margin-bottom: 10px auto;
text-shadow: 0 1px 0 rgba(255, 255, 255, 0.5);
-webkit-border-radius: 2px;
-moz-border-radius: 2px;
border-radius: 2px;  
   
   

}

  .warningFrame
{
    
    
   color: #468847;

  background-image: -webkit-gradient(linear, left 0%, left 100%, from(#fcf8e3), to(#f8efc0));
  background-image: -webkit-linear-gradient(top, #fcf8e3 0%, #f8efc0 100%);
  background-image: -moz-linear-gradient(top, #fcf8e3 0%, #f8efc0 100%);
  background-image: linear-gradient(to bottom, #fcf8e3 0%, #f8efc0 100%);
  background-repeat: repeat-x;
  border-color: #f5e79e;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#fffcf8e3', endColorstr='#fff8efc0', GradientType=0);

border-color: #d6e9c6;
  padding: 4px 8px;
margin-bottom: 10px auto;
text-shadow: 0 1px 0 rgba(255, 255, 255, 0.5);
-webkit-border-radius: 2px;
-moz-border-radius: 2px;
border-radius: 2px;  
   
   

}
.errorMessageFrame
{

    width: 99%; line-height: 18px;

    border-radius: 6px;
    -moz-border-radius: 6px;
    -webkit-border-radius: 6px;
    -o-border-radius: 6px;
    -ms-border-radius: 6px;

}
.errorClass{color:#e80c4d;}
</style>
<div style="width:100%; padding-left: 4px">
	<table width="100%" style="width: 100%; border: none; padding: 0px"  runat="server" id="tbError">
		<tr>
			<td style="width: 100%"  class="errorMessageFrame">
				<div class="errDv"><span style="color:Red; vertical-align:middle; padding-right:4px; font-size:18px; font-weight:bolder">*</span><%= LoadErrorMessage() %></div>
			</td>
		</tr>
	</table>
	<table style="width: 100%; border: none; padding: 0px"  runat="server" id="tbMessage">
			<tr>
				<td style="width: 100%" class="messageFrame">
				    <span style="padding: 4px"><%= LoadPlainMessage()%> </span>	
				</td>   
		</tr>
	</table> 
    <table style="width: 100%; border: none; padding: 0px"  runat="server" id="tbWarning">
			<tr>
				<td style="width: 100%" class="warningFrame">
				    <span style="padding: 4px"><%= LoadPlainMessage()%> </span>	
				</td>   
		</tr>
	</table>   
</div>