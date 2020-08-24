using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using ReportSheet.Models;
using System.Web.ModelBinding;
using Microsoft.AspNet.Identity;

namespace ReportSheet
{

    public partial class Preview : System.Web.UI.Page
    {
        int downloadcount = 0;
        ReportSheetEntities _db = new ReportSheetEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                loadRecent();
                loadMstDownloaded();
                if(Request.QueryString["resoucesId"]==null)
                {
                    loadLatest();
                }
                else
                {
                    loadResources();
                }
                
                if (Session["userId"] != null)
                {
                    UsernameLabel.Visible = true;
                    lknLogOut.Visible = true;
                    lblLogIn.Visible = false;
                    lblRegister.Visible = false;



                }
                else
                {
                    UsernameLabel.Visible = false;
                    lknLogOut.Visible = false;
                }
            }
        }

        protected void lknLogOut_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            Session.Abandon();
            Response.Redirect("~/Login.aspx");

        }
        private void loadResources()
        {
           int resoucesId = int.Parse(Request.QueryString[0]);
            var resourcesList = _db.Resources.Where(m => m.SheetId == resoucesId).ToList();
            if (!resourcesList.Any())
            {
                LstResources.DataSource = new List<Resource>();
                LstResources.DataBind();
            }
            LstResources.DataSource = resourcesList;
            LstResources.DataBind();


        }

        private void loadLatest()
        {
            var resourcesList = _db.Resources.OrderByDescending(m=>m.DateCreated).Take(1).ToList();
            if (!resourcesList.Any())
            {
                LstResources.DataSource = new List<Resource>();
                LstResources.DataBind();
            }
            LstResources.DataSource = resourcesList;
            LstResources.DataBind();
        }

        public void loadRecent()
        {
            var recent = _db.Resources.OrderByDescending(m => m.DateCreated).Take(5).ToList();
            LstRecent.DataSource = recent;
            LstRecent.DataBind();
        }

        public void loadMstDownloaded()
        {
            var mstDownloaded = _db.Resources.OrderByDescending(m => m.DownloadCount).Take(5).ToList();
            LstMstDownloaded.DataSource = mstDownloaded;
            LstMstDownloaded.DataBind();
        }

        protected void lnkPreview_Click(object sender, EventArgs e)
        {
            var ViewCommand = (LinkButton)sender;
            int resourcesId = int.Parse(ViewCommand.CommandArgument);
            ViewState["ResourcesId"] = resourcesId;
            var resourcesObj = _db.Resources.FirstOrDefault(m => m.SheetId == resourcesId);
            if (resourcesObj != null)
            {
                Response.Redirect("~/preview.aspx?resoucesId=" + resourcesId);
            }
        }

        protected void LstResources_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            if (e.CommandName == "Download")
            {
                if (Session["userId"] != null)
                {
                    int resourceId = Convert.ToInt32(e.CommandArgument.ToString());

                    var download = _db.Resources.Where(m => m.SheetId.Equals(resourceId)).FirstOrDefault();

                    if (download != null)
                    {
                        download.DownloadCount = (download.DownloadCount) == null ? 1 : downloadcount + 1;

                        _db.SaveChanges();

                        Response.ContentType = download.ContentType;
                        Response.AddHeader("content-disposition", "attachment; filename=" + download.FilePath);
                        //Response.WriteFile(Server.MapPath("~/Uploads/") + resourceId.ToString());
                        Response.BinaryWrite(download.FileContent);
                        //downloadcount++;
                        //downloadcount = downloadcount + 1;
                        Response.Flush();
                        Response.End();
                    }
                }
                else
                {
                    Response.Redirect("~/Login.aspx");
                }
            }
        }

        protected void lnkDownload_Click(object sender, EventArgs e)
        {
            if (Session["userId"] != null)
            {
                try
                {
                    var DownloadsObj = new DownloadHistory
                    {

                        Email = Session["Email"].ToString(),
                        Id = User.Identity.GetUserId(),
                        DateCreated = DateTime.Now,


                    };
                    _db.DownloadHistories.Add(DownloadsObj);
                    _db.SaveChanges();
                }
                catch
                {

                }
            }
        }

        // The id parameter should match the DataKeyNames value set on the control
        // or be decorated with a value provider attribute, e.g. [QueryString]int id

        //public object FormView1_GetItem(int id)
        //{
        //    return null;
        //}

        //public IQueryable<Resource> GetResources([QueryString("resourcesId")] int? sheetId)
        //{
        //    var _db = new ReportSheetEntities();
        //    IQueryable<Resource> query = _db.Resources;
        //    if (sheetId.HasValue && sheetId > 0)
        //    {
        //        query = query.Where(p => p.SheetId == sheetId );

        //    }
        //    else
        //    {
        //        query = null;
        //    }
        //    return query;
        //}




    }
}