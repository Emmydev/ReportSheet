using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ReportSheet.Models;
using System.IO;
using System.Configuration;
using System.Data;
using ReportSheet.Account;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using System.Web.Security;

namespace ReportSheet
{
    public partial class Upload : System.Web.UI.Page
    {
        ReportSheetEntities _db = new ReportSheetEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadLabels();
                checkUser();
                LoadMostDownloaded();
                LoadMostRead();
                LoadLatest();
            }

        }

        private void checkUser()
        {
            //var userRoles = new List<ApplicationUser>();
            //var context = new ApplicationDbContext();
            //var userStore = new UserStore<ApplicationUser>(context);
            //var userManager = new UserManager<ApplicationUser>(userStore);

            ////Get all the Roles for our users
            //foreach (var user in userRoles)
            //{
            //    user.UserName = userManager.GetRoles(userStore.Users.First(s => s.UserName == user.UserName).Id);
            //}

            //var users = from user in _db.AspNetUsers
            //            select new
            //            {
            //                Role = user.AspNetRoles.FirstOrDefault().Name,
            //                UserName = user.UserName
            //            };




            //var rolesArray = Roles.GetRolesForUser();

            //var usersList = new List<ApplicationUser>();
            //foreach (ApplicationUser user in UserManager.Users)
            //{
            //    var roles = await UserManager.GetRolesAsync(user.Id);
            //    //var roles = _db.AspNetRoles;
            //    if (roles.contains("Teacher"))
            //    {
            //        AdminMenu.Visible = false;
            //        UserMenu.Visible = true;

            //    }
            //}


            //string[] userroles = Roles.GetRolesForUser(Page.User.Identity.Name);
            //foreach (var role in userroles)
            //{
            //    if (userroles.Contains("Teacher"))
            //    AdminMenu.Visible = false;
            //    UserMenu.Visible = true;
            //}

            //var userManager = Request.GetOwinContext().GetUserManager<ApplicationUserManager>();

            //var roles = userManager.GetRoles(User.Identity.GetUserId());

            //if (roles.Contains("Teacher"))
            //{
            //    AdminMenu.Visible = false;
            //    UserMenu.Visible = true;
            //}

            //if (roles.Contains("Parent"))
            //{
            //    AdminMenu.Visible = false;
            //    UserMenu.Visible = true;
            //}

            //    if (roles.Contains("Admin"))
            //{
            //    AdminMenu.Visible = true;
            //    UserMenu.Visible = true;
            //}
            
            /*string userId = User.Identity.GetUserId();
            ApplicationDbContext db = new ApplicationDbContext();
            var role = (from r in db.Roles where r.Name.Contains("Admin") select r).FirstOrDefault();
            var users = db.Users.Where(x => x.Roles.Select(y => y.RoleId).Contains(role.Id)).ToList();
            if (users.Find(x => x.Id == userId) != null)
            {
                // User is in the Admin Role
                AdminMenu.Visible = true;
                UserMenu.Visible = true;
            }
            else
            {
                //User is not in the Admin Role
                AdminMenu.Visible = false;
                UserMenu.Visible = true;
            }*/

        }
        //private void LoadSheets()
        //{
        //    var sheetList = _db.Sheets.ToList();
        //    grdReports.DataSource = sheetList;
        //    grdReports.DataBind();
        //    Session["sheetList"] = sheetList;

        //}
        //protected void grdReports_PageIndexChanging(object sender, GridViewPageEventArgs e)
        //{
        //    grdReports.PageIndex = e.NewPageIndex;
        //    grdReports.DataSource = Session["sheetList"];
        //    grdReports.DataBind();
        //}



        //protected void UploadBtn_Click(object sender, EventArgs e)
        //{
        //    if (FileUpload.HasFile)
        //    {
        //        string fileName = Path.GetFileName(FileUpload.PostedFile.FileName);
        //        FileUpload.PostedFile.SaveAs(Server.MapPath("~/Uploads/") + fileName);

        //        HttpFileCollection FileCollect = Request.Files;
        //        {
        //            foreach (string uploader in FileCollect)
        //            {
        //                HttpPostedFile file = FileCollect[uploader];

        //                if (file.ContentLength > 0)
        //                {
        //                    BinaryReader br = new BinaryReader(file.InputStream);
        //                    //byte[] buffer = br.ReadBytes(file.ContentLength);
        //                    string UploadedfileName = Path.GetFileName(FileUpload.PostedFile.FileName);
        //                    FileUpload.PostedFile.SaveAs(Server.MapPath("~/Uploads/") + UploadedfileName);


        //                    _db.Sheets.Add(new Sheet
        //                    {
        //                        ContentType = file.ContentType,

        //                        Title = file.FileName,
        //                        Author = txtAuthor.Value,
        //                        //Description = file.FileName,
        //                        FileExtension = Path.GetExtension(file.FileName),
        //                        FileSize = file.ContentLength,
        //                        //FileContent=buffer,
        //                        DateCreated = DateTime.Now,

        //                    });

        //                }
        //            }
        //            _db.SaveChanges();
        //            lblMessage.ForeColor = System.Drawing.Color.Green;
        //            lblMessage.Text = "File Uploaded Successfully";
        //        }


        //        LoadSheets();
        //    }
        //    else
        //    {
        //        lblMessage.Text="Please select a file to upload";
        //    }
        //}

        private void LoadLabels()
        {
            //var userId = Session["LogedinuserId"].ToString();
            var notes = _db.Resources.ToList();
            spnTotalNotes.InnerText = notes.Count().ToString();

            var user = _db.AspNetUsers.ToList();
            spnTotalUsers.InnerText = user.Count().ToString();

            var categories = _db.Categories.ToList();
            spnTotalCategories.InnerText = categories.Count.ToString();

            var newnotes = _db.Resources.Where(m => m.DateCreated.Day == DateTime.Today.Day).ToList();

            //var checkdate = _db.Resources.OrderBy(m => m.DateCreated);
            //var todaydate = DateTime.Today.ToString();
            //var newnotes = _db.Resources.Where(checkdate == todaydate);
            spnNewNotes.InnerText = newnotes.Count().ToString();

        }

        

        private void LoadMostDownloaded()
        {
            try
            {
                var dealList = _db.Resources.Where(m => m.DownloadCount>0).OrderByDescending(m => m.DownloadCount).Take(7).ToList();
                if (!dealList.Any())
                {
                    RptDeals.DataSource = new List<Resource>();
                    RptDeals.DataBind();
                    return;
                }
                RptDeals.DataSource = dealList;
                RptDeals.DataBind();
            }
            catch (Exception ex)
            {

            }
        }


        private void LoadMostRead()
        {
            try
            {
                var readList = _db.Resources.OrderByDescending(m => m.DownloadCount).Take(7).ToList();
                if (!readList.Any())
                {
                    Repeater1.DataSource = new List<Resource>();
                    Repeater1.DataBind();
                    return;
                }
                Repeater1.DataSource = readList;
                Repeater1.DataBind();
            }
            catch (Exception ex)
            {

            }
        }

        private void LoadLatest()
        {
            try
            {
                //var latestList = (from r in _db.Resources select r ).Reverse().Take(5); ;
                var latestList = _db.Resources.OrderByDescending(s => s.DateCreated).Take(7).ToList();
                if (!latestList.Any())
                {
                    Repeater2.DataSource = new List<Resource>();
                    Repeater2.DataBind();
                    return;
                }
                Repeater2.DataSource = latestList;
                Repeater2.DataBind();
            }
            catch
            {

            }
        }
    }
}    
   