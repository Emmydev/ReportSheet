<%@ Page Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="ReportSheet.Upload" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">

    <div id="page-wrapper">
            <div class="graphs" >
     	<div class="col_3")">
              <div class="box"> 
                <div class="box-header" style="background:rgba(38, 57, 88, 0.89)">
                    <h2 style="text-align:center"><i class="fa fa-dashboard"></i> <strong>Dashboard</strong></h2>
               </div>
        	<div class="col-md-3 widget widget">
        		<div class="r3_counter_box">
                    <i class="pull-left fa fa-thumbs-up icon-rounded"></i>
                    <div class="stats">
                      <h5 id="spnTotalNotes" runat="server"><strong>0</strong></h5>
                      <span >Total Notes</span>
                    </div>
                </div>
        	</div>
        	<div class="col-md-3 widget widget">
        		<div class="r3_counter_box">
                    <i class="pull-left fa fa-users user1 icon-rounded"></i>
                    <div class="stats">
                      <h5 id="spnTotalUsers" runat="server"><strong>0</strong></h5>
                      <span>Total Users</span>
                    </div>
                </div>
        	</div>
        	<div class="col-md-3 widget widget">
        		<div class="r3_counter_box">
                    <i class="pull-left fa fa-comment user2 icon-rounded"></i>
                    <div class="stats">
                      <h5 id="spnTotalCategories" runat="server"><strong>0</strong></h5>
                      <span>Total Categories</span>
                    </div>
                </div>
        	</div>
        	<div class="col-md-3 widget">
        		<div class="r3_counter_box">
                    <i class="pull-left fa fa-file-text-o icon-rounded"></i>
                    <div class="stats">
                      <h5 id="spnNewNotes" runat="server"><strong>0</strong></h5>
                      <span>Today's Notes</span>
                    </div>
                </div>
        	 </div>
        	<div class="clearfix"> </div>
      </div>
      <div class="col_1">
		    <%--<div class="col-md-4 stats-info">
                <div class="panel-heading">
                    <h4 class="panel-title">Most Read Classpapers</h4>
                </div>
                  <div class="panel-body">
                    <ul class="list-unstyled" style="text-align:justify">

                        <li runat="server" id="catlist"><strong>Activity<%# Eval ("Type")%></strong><div class="text-success pull-center"></div></li>
                        <li><strong>Clip Art</strong><div class="text-success pull-right"></div></li>
                        <li><strong>Game,Quiz</strong><div class="text-success pull-right"></div></li>
                        <li><strong>Homework</strong><div class="text-danger pull-right"></div></li>
                        <li><strong>Presentation</strong><div class="text-danger pull-right"></div></li>
                        <li><strong>Lesson Starter</strong><div class="text-danger pull-right"></div></li>
                        <li class="last"><strong>Others</strong><div class="text-success pull-right"></div></li>

                    </ul>
                 </div>    
		    </div> --%>   
          <div  class="col-md-4 stats-info">
                 <div class="panel-heading" style="font-weight:bold; color:#217521;">
                       Most Read Classpapers
                 </div>
                      
                <div class="panel-body" style="padding:3px;"> 
                     <div style="color:#050000">     
                        <asp:Repeater ID="Repeater1" runat="server">
                            <HeaderTemplate>
                                <div style="overflow-y: scroll;  margin-top:5px; margin-left:3px; min-height:20px;max-height:820px;-moz-box-shadow:1px 1px 1px #ccc;-webkit-box-shadow:1px 1px 1px #ccc;box-shadow:1px 1px 1px #ccc;">
                            </HeaderTemplate>
                            
                            <ItemTemplate>
                                
                                    <ItemTemplate>
                   
                    <div style="margin-bottom:6px;border-bottom: solid 1px #ddd;border-width:1px;-moz-box-shadow:1px 1px 3px #ddd;-webkit-box-shadow:1px 1px 3px #ddd;box-shadow:1px 1px 3px #ddd;">
                     <div style="padding-left:5px;padding-top:20px">
                         
                        <%# Eval("Title") %>
                             
                     </div>
                    
                         <%--<i class="fa fa-shopping-cart" aria-hidden="true"></i>--%>  
                   </div>
                        </a>
                 </ItemTemplate>
                               
                            </ItemTemplate>
                <FooterTemplate>
            </div>  
        </FooterTemplate>
             </asp:Repeater>
                      </div>
            </div>
</div>   		   
           <div  class="col-md-4 stats-info">
                 <div class="panel-heading" style="font-weight:bold; color: #217521;">
                       Most Downloaded Categories
                 </div>
                      
                <div class="panel-body" style="padding:3px;"> 
                     <div style="color:#050000"">     
                        <asp:Repeater ID="RptDeals" runat="server">
                            <HeaderTemplate>
                                <div style="overflow-y: scroll;  margin-top:5px; margin-left:3px; min-height:20px;max-height:820px;-moz-box-shadow:1px 1px 1px #ccc;-webkit-box-shadow:1px 1px 1px #ccc;box-shadow:1px 1px 1px #ccc;">
                            </HeaderTemplate>
                            
                            <ItemTemplate>
                                
                                    <ItemTemplate>
                   
                    <div style="margin-bottom:6px;border-bottom: solid 1px #ddd;border-width:1px;-moz-box-shadow:1px 1px 3px #ddd;-webkit-box-shadow:1px 1px 3px #ddd;box-shadow:1px 1px 3px #ddd;">
                     <div style="padding-left:5px;padding-top:20px">
                         
                        <%# Eval("Category.Type") %> <div class="text-success pull-right"><%# Eval("DownloadCount") %><i class="fa fa-download"></i></div>                             
                     </div>                                                                                                                                       
                         <%--<i class="fa fa-shopping-cart" aria-hidden="true"></i>--%>                   
                   </div>
                        </a>
                 </ItemTemplate>
                               
                            </ItemTemplate>
                <FooterTemplate>
            </div>  
        </FooterTemplate>
             </asp:Repeater>
                      </div>
            </div>
</div>
  		   
			<div  class="col-md-4 stats-info">
                 <div class="panel-heading" style="font-weight:bold; color:  #217521;">
                       Latest ClassNotes
                 </div>
                      
                <div class="panel-body" style="padding:3px;"> 
                     <div style="color:#050000">     
                        <asp:Repeater ID="Repeater2" runat="server">
                            <HeaderTemplate>
                                <div style="overflow-y: scroll;  margin-top:5px; margin-left:3px; min-height:20px;max-height:820px;-moz-box-shadow:1px 1px 1px #ccc;-webkit-box-shadow:1px 1px 1px #ccc;box-shadow:1px 1px 1px #ccc;">
                            </HeaderTemplate>
                            
                            <ItemTemplate>
                                
                                    <ItemTemplate>
                   
                    <div style="margin-bottom:6px;border-bottom: solid 1px #ddd;border-width:1px;-moz-box-shadow:1px 1px 3px #ddd;-webkit-box-shadow:1px 1px 3px #ddd;box-shadow:1px 1px 3px #ddd;">
                     <div style="padding-left:5px;padding-top:20px">
                         
                        <%# Eval("Title") %>
                             
                     </div>
                    
                         <%--<i class="fa fa-shopping-cart" aria-hidden="true"></i>--%>  
                   </div>
                        </a>
                 </ItemTemplate>
                               
                            </ItemTemplate>
                <FooterTemplate>
            </div>  
        </FooterTemplate>
             </asp:Repeater>
                      </div>
            </div>

</div>   
            
            <div class="clearfix"> </div>
	  </div>
	  <div class="span_11">
		<%--<div class="col-md-6 col_4">
		  <div class="map_container"><div id="vmap" style="width: 100%; height: 400px;"></div></div>
		  <!----Calender -------->
			<link rel="stylesheet" href="css/clndr.css" type="text/css" />
			<script src="js/underscore-min.js" type="text/javascript"></script>
			<script src= "js/moment-2.2.1.js" type="text/javascript"></script>
			<script src="js/clndr.js" type="text/javascript"></script>
			<script src="js/site.js" type="text/javascript"></script>
			<!----End Calender -------->
		</div>--%>

		<%--<div class="col-md-6 col_5">
		 <%-- <div id="chart_container">
		   <div id="chart"></div>
	       <div id="slider"></div>
<%--<script>

var seriesData = [ [], [], [], [], [] ];
var random = new Rickshaw.Fixtures.RandomData(50);

for (var i = 0; i < 75; i++) {
	random.addData(seriesData);
}

var graph = new Rickshaw.Graph( {
	element: document.getElementById("chart"),
	renderer: 'multi',
	
	dotSize: 5,
	series: [
		{
			name: 'temperature',
			data: seriesData.shift(),
			color: '#AFE9FF',
			renderer: 'stack'
		}, {
			name: 'heat index',
			data: seriesData.shift(),
			color: '#FFCAC0',
			renderer: 'stack'
		}, {
			name: 'dewpoint',
			data: seriesData.shift(),
			color: '#555',
			renderer: 'scatterplot'
		}, {
			name: 'pop',
			data: seriesData.shift().map(function(d) { return { x: d.x, y: d.y / 4 } }),
			color: '#555',
			renderer: 'bar'
		}, {
			name: 'humidity',
			data: seriesData.shift().map(function(d) { return { x: d.x, y: d.y * 1.5 } }),
			renderer: 'line',
			color: '#ef553a'
		}
	]
} );


graph.render();

var detail = new Rickshaw.Graph.HoverDetail({
	graph: graph
});
</script>--%>
        </div>
	      <!-- map -->

 <link href="../css1/counter.css" rel="stylesheet" />
<%--<link href="css1/counter.css" rel="stylesheet" />--%>
<link href="css/jqvmap.css" rel='stylesheet' type='text/css' />
<script src="js/jquery.vmap.js"></script>
<script src="js/jquery.vmap.sampledata.js" type="text/javascript"></script>
<script src="js/jquery.vmap.world.js" type="text/javascript"></script>
<script type="text/javascript">
	jQuery(document).ready(function() {
		jQuery('#vmap').vectorMap({
		    map: 'world_en',
		    backgroundColor: '#333333',
		    color: '#ffffff',
		    hoverOpacity: 0.7,
		    selectedColor: '#666666',
		    enableZoom: true,
		    showTooltip: true,
		    values: sample_data,
		    scaleColors: ['#C8EEFF', '#006491'],
		    normalizeFunction: 'polynomial'
		});
	});
</script>
<!-- //map -->
       </div>
        <div class="clearfix"> </div>
    
        </div>

        <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrapDashboard.min.js"></script>

</div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scriptsContentPlaceHolder" runat="server">
</asp:Content>













