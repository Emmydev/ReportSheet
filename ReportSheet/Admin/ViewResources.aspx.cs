using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ReportSheet.Models;
using Microsoft.AspNet.Identity;

namespace ReportSheet
{
    public partial class ViewResources : System.Web.UI.Page
    {
        int downloadcount = 0;
        ReportSheetEntities _db = new ReportSheetEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            //CheckUser();
            if (!IsPostBack)
            {
                LoadSheets();
                LoadCurriculum();
                /*LoadAge()*/;
                LoadSubjects();
                LoadCategory();

                //ResourcesDistributionList();

            }
        }

        private void LoadCategory()
        {
            var LoadResourceTypes = _db.Categories.ToList();
            ddlCategory.DataSource = LoadResourceTypes;
            ddlCategory.DataTextField = "Type";
            ddlCategory.DataValueField = "Id";
            ddlCategory.DataBind();
            ddlCategory.Items.Insert(0, new ListItem("--Select Category--", "0"));
        }

        private void LoadCurriculum()
        {
            var LoadCurrriculum = _db.Curricula.ToList();
            ddlCurriculum.DataSource = LoadCurrriculum;
            ddlCurriculum.DataTextField = "Name";
            ddlCurriculum.DataValueField = "Id";
            ddlCurriculum.DataBind();
            ddlCurriculum.Items.Insert(0, new ListItem("--Select Curriculum--", "0"));
        }
        private void LoadSubjects()
        {
            var LoadSubject = _db.Subjects.ToList();
            ddlSubject.DataSource = LoadSubject;
            ddlSubject.DataTextField = "Name";
            ddlSubject.DataValueField = "SubjectId";
            ddlSubject.DataBind();
            ddlSubject.Items.Insert(0, new ListItem("--Select Subject--", "0"));
        }

        //private void LoadAge()
        //{
        //    var LoadAge = _db.AgeGroups.ToList();
        //    ddlAge.DataSource = LoadAge;
        //    ddlAge.DataTextField = "AgeClass";
        //    ddlAge.DataValueField = "Id";
        //    ddlAge.DataBind();
        //    ddlAge.Items.Insert(0, new ListItem("--Select Age Class--", "0"));
        //}

        //private void CheckUser()
        //{
        //    string userId = User.Identity.GetUserId();
        //    ApplicationDbContext db = new ApplicationDbContext();
        //    var role = (from r in db.Roles where r.Name.Contains("Admin") select r).FirstOrDefault();
        //    var users = db.Users.Where(x => x.Roles.Select(y => y.RoleId).Contains(role.Id)).ToList();
        //    //if (users.Find(x => x.Id == userId) != null)
        //    //{
        //    //    // User is in the Admin Role
        //    //    AdminMenu.Visible = true;
        //    //    UserMenu.Visible = true;
        //    //}
        //    //else
        //    //{
        //    //    //User is not in the Admin Role
        //    //    AdminMenu.Visible = false;
        //    //    UserMenu.Visible = true;
        //    //}
        //}

        //private void TryCat()
        //{
        //    var cat = _db.Resources.FirstOrDefault(m=>m.cat).ToList();
        //    grdReports.DataSource = cat;
        //    grdReports.DataBind();
        //}
        //private void LoadSheets()
        //{
        //    var sheetList = _db.Resources.Where(m => m.Status == 2).ToList();
        //    grdReports.DataSource = sheetList;
        //    grdReports.DataBind();
        //    //Session["sheetList"] = sheetList;
        //}

        private void LoadSheets()
        {
            var showSheets= _db.Resources.OrderByDescending(m => m.DateCreated).ToList();
            grdReports.DataSource = showSheets;
            grdReports.DataBind();
            Session["showSheets"] = showSheets;

            //var resourceList = _db.Resources.ToList();
            //if (!resourceList.Any())
            //{
            //    grdReports.DataSource = new List<Resource>();
            //    grdReports.DataBind();

            //}

            //grdReports.DataSource = resourceList;
            //grdReports.DataBind();
        }

        protected void grdReports_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {

            grdReports.PageIndex = e.NewPageIndex;
            grdReports.DataSource = Session["showSheets"];
            grdReports.DataBind();
            //grdReports.PageIndex = e.NewPageIndex;
            //grdReports.DataSource = Session["sheetList"];
            //grdReports.DataBind();
        }


        protected void grdReports_RowCommand(object sender, GridViewCommandEventArgs e)
        {

            if (e.CommandName == "Download")
            {
                int resourceId = Convert.ToInt32(e.CommandArgument.ToString());

                var download = _db.Resources.Where(m => m.SheetId.Equals(resourceId)).FirstOrDefault();

                if (download != null)
                {
                    download.DownloadCount = (download.DownloadCount) == null ? 1 : downloadcount + 1;

                    _db.SaveChanges();

                    Response.ContentType = download.ContentType;
                    Response.AddHeader("content-disposition", "attachment; filename=" + download.Title);
                    //Response.WriteFile(Server.MapPath("~/Uploads/") + resourceId.ToString());
                    Response.BinaryWrite(download.FileContent);
                    //downloadcount++;
                    //downloadcount = downloadcount + 1;
                    Response.Flush();
                    Response.End();
                }
            }
        }

        //public void ResourcesDistributionList()
        //{
        //    try
        //    {
        //        ErrorDisplay1.ClearError();
        //        var resources = _db.Resources.Where(m=>m.Status==2).OrderByDescending(m => m.DateCreated).ToList();
        //        if (!resources.Any())
        //        {
        //            grdReports.DataSource = new List<Resource>();
        //            grdReports.DataBind();
        //            ErrorDisplay1.ShowWarning("No record found");
        //            return;
        //        }
        //        grdReports.DataSource = resources;
        //        grdReports.DataBind();
        //        Session["sheetList"] = resources;

        //    }
        //    catch (Exception ex)
        //    {

        //    }

        //}

        protected void SearchBtn_Click(object sender, EventArgs e)
        {
            //RecourcesList(ddlAge.SelectedValue, ddlCategory.SelectedValue);
            ResourcesDistributionList(ddlCategory.SelectedValue);

        }



        public void ResourcesDistributionList(string category)
        {
            try
            {
                ErrorDisplay1.ClearError();

                //var res = _db.Resources.Where(m => m.Status == 2).ToList();
                var res = _db.Resources.ToList();


                //if (int.Parse(ageClass) > 0)
                //{
                //    res = res.Where(m => m.AgeId == int.Parse(ageClass)).ToList();
                //}

                if (int.Parse(category) > 0)
                {
                    res = res.Where(m => m.CategoryId == int.Parse(category)).ToList();
                }

                if (!res.Any())
                {
                    grdReports.DataSource = new List<Resource>();
                    grdReports.DataBind();
                    ErrorDisplay1.ShowWarning("No record found");
                    return;
                }
                grdReports.DataSource = res;
                grdReports.DataBind();


            }
            catch (Exception ex)
            {


            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            try
            {
                LinkButton viewLinkBtn = (LinkButton)sender;
                var sheetId = int.Parse(viewLinkBtn.CommandArgument);
                var insObj = _db.Resources.FirstOrDefault(m => m.SheetId == sheetId);

                if (insObj != null)
                {
                    _db.Resources.Remove(insObj);
                    _db.SaveChanges();
                    LoadSheets();
                    ErrorDisplay1.ShowError("Resources Deleted Successfully");
                }
            }
            catch (Exception ex)
            {

            }
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
           
            LoadCurriculum();
            //LoadAge();
            LoadSubjects();
            LoadCategory();

            LinkButton viewLinkBtn = (LinkButton)sender;
         
            BtnUpload.CommandArgument = "2";
            // lblInstitution.Text = "Update Stock";
            BtnUpload.Text = "Update Stock";
            var sheetId = int.Parse(viewLinkBtn.CommandArgument);
            //int stockId = int.Parse(ddlStock.SelectedValue);
            ViewState["SheetId"] = sheetId;
            var sheetObj = _db.Resources.FirstOrDefault(m => m.SheetId == sheetId);
            if (sheetObj != null)
            {

                //ddlStock.Text = (inventoryObj.StockId).ToString();
                txtTitle.Value = sheetObj.Title.ToString().Trim();
                txtDescription.Text = sheetObj.Description.ToString();
                txtAuthor.Value = sheetObj.Author.ToString().Trim();
                //ddlAge.Text = (sheetObj.AgeId).ToString();
                ddlCate.Text = sheetObj.CategoryId.ToString();
                ddlSubject.Text = sheetObj.SubjectId.ToString();
                ddlCurriculum.SelectedValue = (sheetObj.CurriculumId).ToString();
            }

            divList.Visible = false;
            divForm.Visible = true;

            BtnUpload.Visible = true;
            btnBack.Visible = true;
            BtnUpload.Text = "Update";
           
        }

        protected void btnView_Click(object sender, EventArgs e)
        {

        }
        protected void BtnCancel_Click(object sender, EventArgs e)
        {
            txtTitle.Value = "";
            txtDescription.Text = "";
            txtAuthor.Value = "";
            //ddlAge.SelectedIndex = 0;
            ddlCategory.SelectedIndex = 0;
            ddlCurriculum.SelectedIndex = 0;
            ddlSubject.SelectedIndex = 0;
        }

        protected void BtnCategoryPost_Click(object sender, EventArgs e)
        {
            UpdateResources();
            divList.Visible = true;
            divForm.Visible = false;
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            divForm.Visible = false;
            divList.Visible = true;
        }

        private string UploadPicture()
        {
            try
            {

                string savePath = Server.MapPath("~/ResourcesImages/");
                string ext = System.IO.Path.GetExtension(previewUpload.PostedFile.FileName);
                var fileName = txtTitle.Value + "_" + Guid.NewGuid().ToString("N") + ext;
                savePath += fileName;

                previewUpload.SaveAs(savePath);

                return fileName;
            }
            catch (Exception ex)
            {
                return "";

            }

        }

        public void UpdateResources()
        {
            try
            {
                var resourcesId = int.Parse(ViewState["resourcesId"].ToString());
                var resourcesObj = _db.Resources.FirstOrDefault(m => m.SheetId == resourcesId);
                resourcesObj.Title = txtTitle.Value;
                resourcesObj.Description = txtDescription.Text;
                resourcesObj.Author = txtAuthor.Value;
                //resourcesObj.AgeId = int.Parse(ddlAge.SelectedValue.ToString());
                resourcesObj.CategoryId = int.Parse(ddlCategory.SelectedValue.ToString());
                resourcesObj.SubjectId = int.Parse(ddlSubject.SelectedValue.ToString());
                resourcesObj.CurriculumId = int.Parse(ddlCurriculum.SelectedValue.ToString());
                resourcesObj.PreviewPath = UploadPicture();
                _db.SaveChanges();
                LoadSheets();
                divForm.Visible = false;
                divList.Visible = true;
                ErrorDisplay2.ShowSuccess("Subject Updated Successfully");
            }
            catch (Exception ex)
            {

            }
        }
    }

}
