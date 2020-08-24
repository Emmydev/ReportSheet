using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ReportSheet.Models;

namespace ReportSheet.Admin
{
    public partial class DownloadHistory : System.Web.UI.Page
    {
        ReportSheetEntities _db = new ReportSheetEntities();   
        protected void Page_Load(object sender, EventArgs e)
        {
            loadDownloadHistory();
        }

        private void loadDownloadHistory()
        {
            var downloadList = _db.DownloadHistories.OrderByDescending(m => m.DateCreated).ToList();
            if(!downloadList.Any())
            {
                grdReports.DataSource = new List<DownloadHistory>();
                grdReports.DataBind();
            }
            grdReports.DataSource = downloadList;
            grdReports.DataBind();
            Session["showHistory"] = downloadList;
        }

        protected void grdReports_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {

            grdReports.PageIndex = e.NewPageIndex;
            grdReports.DataSource = Session["showHistory"];
            grdReports.DataBind();
            //grdReports.PageIndex = e.NewPageIndex;
            //grdReports.DataSource = Session["sheetList"];
            //grdReports.DataBind();
        }

        protected void grdReports_RowCommand(object sender, GridViewCommandEventArgs e)
        {

            
        }

    }
}