using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using ReportSheet.Models;
using System.Web.Security;
using Microsoft.AspNet.Identity;

namespace ReportSheet
{
    public partial class index : System.Web.UI.Page
    {
        int downloadcount = 0;
        ReportSheetEntities _db = new ReportSheetEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                loadResources();

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
            var resourceList = _db.Resources.OrderByDescending(s => s.DateCreated).Take(6).ToList();
            if (!resourceList.Any())
            {
                DtResources.DataSource = new List<Resource>();
                DtResources.DataBind();

            }

            DtResources.DataSource = resourceList;
            DtResources.DataBind();
            //SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=ReportSheet;Integrated Security=True");
            //SqlDataAdapter sda = new SqlDataAdapter("select* from Resources", con);
            //DataTable dt = new DataTable();
            //sda.Fill(dt);
            //ListView1.DataSource = dt;
            //ListView1.DataBind();
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

        protected void DtResources_ItemCommand(object source, DataListCommandEventArgs e)
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

        protected void lknLogOut_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            Session.Abandon();
            Response.Redirect("~/Login.aspx");

        }

        protected void lnkPreview_Click(object sender, EventArgs e)
        {
            var ViewCommand = (LinkButton)sender;
            int resourcesId = int.Parse(ViewCommand.CommandArgument);
            ViewState["ResourcesId"] = resourcesId;
            var resourcesObj = _db.Resources.FirstOrDefault(m => m.SheetId == resourcesId);
            if (resourcesObj != null)
            {
                Response.Redirect("~/preview.aspx?resoucesId="+resourcesId);
            }
        }
    }
}