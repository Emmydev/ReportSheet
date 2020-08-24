using ReportSheet.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ReportSheet
{
    public partial class HomePage : System.Web.UI.Page
    {
        ReportSheetEntities _db = new ReportSheetEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                loadResources();
                loadRecent();
                loadMstDownloaded();
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


        private void loadResources()
        {
            //var resourceList = _db.Resources.ToList();
            var resourceList = _db.Resources.OrderByDescending(s => s.DateCreated).ToList();
            if (!resourceList.Any())
            {
                LstResources.DataSource = new List<Resource>();
                LstResources.DataBind();

            }

            LstResources.DataSource = resourceList;
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

        protected void LstResources_PagePropertiesChanging(object sender, PagePropertiesChangingEventArgs e)
        {
            DataPager1.SetPageProperties(e.StartRowIndex, e.MaximumRows, false);
            loadResources();
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

        protected void lnkDownload_Click(object sender, EventArgs e)
        {
           
                if (Session["userId"] != null)
                {
                    //int resourceId = Convert.ToInt32(CommandArgument.ToString());

                    LinkButton viewLinkBtn = (LinkButton)sender;

                    int resourcesId = int.Parse(viewLinkBtn.CommandArgument);
                    var download = _db.Resources.Where(m => m.SheetId.Equals(resourcesId)).FirstOrDefault();

                    if (download != null)
                    {
                    //download.DownloadCount = (download.DownloadCount) == null ? 1 : downloadcount + 1;
                     download.DownloadCount = download.DownloadCount + 1;
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

        protected void lknLogOut_Click(object sender, EventArgs e)
        {
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            authenticationManager.SignOut();
            Response.Redirect("~/Login.aspx");
            Session["userId"] = null;
        }

        protected void btnSearch_Click(object sender, EventArgs e )
        {
            if(txtSearch.Value == "")
            {
                loadResources();
            }
            else
            {
                var resourceList = _db.Resources.Where(m => m.Title == txtSearch.Value).ToList();
                if (!resourceList.Any())
                {
                    LstResources.DataSource = new List<Resource>();
                    LstResources.DataBind();
                }

                LstResources.DataSource = resourceList;
                LstResources.DataBind();
            }
        }
    }
}