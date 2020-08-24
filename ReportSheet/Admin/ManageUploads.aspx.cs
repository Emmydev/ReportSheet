using Microsoft.AspNet.Identity;
using ReportSheet.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ReportSheet
{
    public partial class ManageUploads : System.Web.UI.Page
    {
        ReportSheetEntities _db = new ReportSheetEntities();

         enum ClasspaperStatus
        {
            Pending=1,
            Approved = 2,
            
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            //CheckUser();
            if (!IsPostBack)
            {
                LoadSheets();
                //LoadAge();
                //LoadSub();
                //LoadTitle();
                
                
            }
        }

        //private void LoadAge()
        //{
        //    var LoadAge = _db.AgeGroups.ToList();
        //    grdReports.DataSource = LoadAge;
        //    grdReports.DataBind();
        //}

        //private void LoadCategory()
        //{
        //    var categoryTypes = _db.Resources.ToList();
        //    grdReports.DataSource = categoryTypes;
        //    grdReports.DataBind(); 
        //}

        //private void LoadTitle()
        //{
        //    var title = _db.Resources.OrderBy(m => m.Title).ToList();
        //    grdReports.DataSource = title;
        //    grdReports.DataBind();
        //}

        //private void LoadSub()
        //{
        //    var subjTypes = _db.Subjects.ToList();
        //    grdReports.DataSource = subjTypes;
        //    grdReports.DataBind();
        //}




        private void loadUnapproved()
        {
            var ss = _db.Resources.Where(s => s.Status == 1).ToList();
            grdReports.DataSource = ss;
            grdReports.DataBind();

        }
        //private void CheckUser()
        //{
        //    string userId = User.Identity.GetUserId();
        //    ApplicationDbContext db = new ApplicationDbContext();
        //    //var role = (from r in db.Roles where r.Name.Contains("Admin") select r).FirstOrDefault();
        //    //var users = db.Users.Where(x => x.Roles.Select(y => y.RoleId).Contains(role.Id)).ToList();
        //    if (users.Find(x => x.Id == userId) != null)
        //    {
        //        // User is in the Admin Role
        //        //AdminMenu.Visible = true;
        //        //UserMenu.Visible = true;
        //    }
        //    else
        //    {
        //        //User is not in the Admin Role
        //        //AdminMenu.Visible = false;
        //        //UserMenu.Visible = true;
        //    }
        //}

        private void LoadSheets()
        {
            //var sheetList = _db.Resources.OrderByDescending(m => m.SheetId).ToList();
            var sheetList = _db.Resources.OrderByDescending(m => m.DateCreated).ToList();
            grdReports.DataSource = sheetList;
            grdReports.DataBind();
            Session["sheetList"] = sheetList;
        }

        
        
        protected void grdReports_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grdReports.PageIndex = e.NewPageIndex;
            grdReports.DataSource = Session["sheetList"];
            grdReports.DataBind();
        }


        //protected void lblOrderCompleted_Click(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        if (ViewState["Paper"] == null)
        //        {
        //            Response.Redirect("Login.aspx");
        //        }
        //        var sheet = int.Parse(ViewState["Paper"].ToString());
        //        var paperObj = _db.Resources.FirstOrDefault(m=>m.SheetId==sheet);
        //        paperObj.Status = (int)ClasspaperStatus.Approved;

        //        var notifyObj = new Resource
        //        {
        //            Title = paperObj.Title,
        //            Subject = paperObj.Subject,
        //            CategoryId=paperObj.CategoryId,
        //            AgeId=paperObj.AgeId,
        //            DateCreated=paperObj.DateCreated,
        //            Status = 2
        //        };
        //        _db.Resources.Add(notifyObj);
        //        _db.SaveChanges();
        //        ErrorDisplay1.ShowSuccess("Classpapers Approved! Go to View Classpapers Page.");
        //        grdReports.DataBind();
                
        //            loadUnapproved();  
        //    }
        //    catch (Exception ex)
        //    {

        //    }
        //}

        protected void chkCompleted_CheckedChanged(object sender, EventArgs e)
        {
            try
            {
                // int resourceId = Convert.ToInt32(e.CommandArgument.ToString());
                // var download = _db.Resources.Where(m => m.SheetId.Equals(resourceId)).FirstOrDefault();

                CheckBox viewLinkBtn = (CheckBox)sender;
                viewLinkBtn.Checked = false;
                var sheetId = viewLinkBtn.Attributes["CommandName"];
                

                ViewState["Paper"] = sheetId;
                var jquery = " $(document).ready(function () {" +
                             " $('#confirmCustomerpaid').modal({ backdrop: 'static' });" +
                         "});";

                ClientScript.RegisterStartupScript(typeof(Page), "key", "<script type=\"text/javascript\">" + jquery + "</script>");
                
            }
            catch (Exception ex)
            {

            }
        }
    }
}