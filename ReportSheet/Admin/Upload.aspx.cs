using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ReportSheet.Models;
using System.Data;
using Microsoft.AspNet.Identity;

namespace ReportSheet
{
    public partial class Upload1 : System.Web.UI.Page
    {
        ReportSheetEntities _db = new ReportSheetEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            //CheckUser();
            if (!IsPostBack)
            {
                LoadCurriculum();
                //LoadAge();
                LoadSubjects();
                LoadCategory();
            }
        }


        private void CheckUser()
        {
            //string userId = User.Identity.GetUserId();
            //ApplicationDbContext db = new ApplicationDbContext();
            //var role = (from r in db.Roles where r.Name.Contains("Admin") select r).FirstOrDefault();
            //var users = db.Users.Where(x => x.Roles.Select(y => y.RoleId).Contains(role.Id)).ToList();
            //if (users.Find(x => x.Id == userId) != null)
            //{
            //    // User is in the Admin Role
            //    AdminMenu.Visible = true;
            //    UserMenu.Visible = true;
            //}
            //else
            //{
            //    //User is not in the Admin Role
            //    AdminMenu.Visible = false;
            //    UserMenu.Visible = true;
            //}
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

        //private void LoadAge()
        //{
        //    var LoadAge = _db.AgeGroups.ToList();
        //    ddlAge.DataSource = LoadAge;
        //    ddlAge.DataTextField = "AgeClass";
        //    ddlAge.DataValueField = "Id";
        //    ddlAge.DataBind();
        //    ddlAge.Items.Insert(0, new ListItem("--Select Age Class--", "0"));
        //}

        private void LoadSubjects()
        {
            var LoadSubject = _db.Subjects.ToList();
            ddlSubject.DataSource = LoadSubject;
            ddlSubject.DataTextField = "Name";
            ddlSubject.DataValueField = "SubjectId";
            ddlSubject.DataBind();
            ddlSubject.Items.Insert(0, new ListItem("--Select Subject--", "0"));
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

        private string UploadPicture()
        {
            try
            {

                string savePath = Server.MapPath("~/ResourcesImages/");
                string ext = System.IO.Path.GetExtension(previewUpload.PostedFile.FileName);
                var imagefileName = txtTitle.Value + "_" + Guid.NewGuid().ToString("N") + ext;
                savePath += imagefileName;

                previewUpload.SaveAs(savePath);

                return imagefileName;
            }
            catch (Exception ex)
            {
                return "";

            }
        }

        protected void BtnCategoryPost_Click(object sender, EventArgs e)
        {
            if (FileUpload.HasFile)
            {

                string fileName = Path.GetFileName(FileUpload.PostedFile.FileName);
                FileUpload.PostedFile.SaveAs(Server.MapPath("~/Uploads/") + fileName);
                HttpPostedFile file = FileUpload.PostedFile;
                BinaryReader br = new BinaryReader(file.InputStream);
                byte[] buffer = br.ReadBytes(file.ContentLength);
                string UploadedfileName = Path.GetFileName(FileUpload.PostedFile.FileName);
                FileUpload.PostedFile.SaveAs(Server.MapPath("~/Uploads/") + UploadedfileName);

                _db.Resources.Add(new Resource
                {
                    Title = txtTitle.Value,
                    ContentType = file.ContentType,
                    Author = txtAuthor.Value,
                    Description = txtDescription.Text,
                    FileExtension = Path.GetExtension(file.FileName),
                    FileSize = file.ContentLength,
                    FilePath = file.FileName,
                    FileContent = buffer,
                    DateCreated = DateTime.Now,
                    CategoryId = int.Parse(ddlCategory.SelectedValue.ToString()),
                    SubjectId = int.Parse(ddlSubject.SelectedValue.ToString()),
                    CurriculumId = int.Parse(ddlCurriculum.SelectedValue.ToString()),
                    PreviewPath = UploadPicture()
                    //PreviewPath = imagefileName,

                });

                _db.SaveChanges();
                //lblMessage.ForeColor = System.Drawing.Color.Green;
                //lblMessage.Text = "File Uploaded Successfully";
                ErrorDisplay2.ShowSuccess("File Uploaded successfully");

                txtTitle.Value = "";
                txtAuthor.Value = "";
                txtDescription.Text = "";
                //ddlAge.SelectedIndex = 0;
                ddlCategory.SelectedIndex = 0;
                ddlCurriculum.SelectedIndex = 0;
                ddlSubject.SelectedIndex = 0;


                //        LoadSheets();
            }
            else
            {
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "Please select a file to upload";
            }
        }


        //protected void BtnCategoryPost_Click(object sender, EventArgs e)
        //{
        //    //string savePath = Server.MapPath("~/ResourcesImages/");
        //    //string ext = System.IO.Path.GetExtension(previewUpload.PostedFile.FileName);
        //    //var imagefileName = txtTitle.Value + "_" + Guid.NewGuid().ToString("N") + ext;
        //    ////previewUpload.SaveAs(savePath);



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
        //                    byte[] buffer = br.ReadBytes(file.ContentLength);
        //                    string UploadedfileName = Path.GetFileName(FileUpload.PostedFile.FileName);
        //                    FileUpload.PostedFile.SaveAs(Server.MapPath("~/Uploads/") + UploadedfileName);

        //                    /////
        //                    //previewUpload.SaveAs(savePath);



        //                    _db.Resources.Add(new Resource
        //                    {
        //                        Title = txtTitle.Value,
        //                        ContentType = file.ContentType,
        //                        Author = txtAuthor.Value,
        //                        Description = txtDescription.Text,
        //                        FileExtension = Path.GetExtension(file.FileName),
        //                        FileSize = file.ContentLength,
        //                        FilePath = file.FileName,
        //                        FileContent = buffer,
        //                        DateCreated = DateTime.Now,
        //                        CategoryId = int.Parse(ddlCategory.SelectedValue.ToString()),
        //                        SubjectId = int.Parse(ddlSubject.SelectedValue.ToString()),
        //                        CurriculumId = int.Parse(ddlCurriculum.SelectedValue.ToString()),
        //                        PreviewPath = UploadPicture()
        //                        //PreviewPath = imagefileName,

        //                    });
        //                }
        //            }
        //            _db.SaveChanges();
        //            //lblMessage.ForeColor = System.Drawing.Color.Green;
        //            //lblMessage.Text = "File Uploaded Successfully";
        //            ErrorDisplay2.ShowSuccess("File Uploaded successfully");
        //        }
        //        txtTitle.Value = "";
        //        txtAuthor.Value = "";
        //        txtDescription.Text = "";
        //        //ddlAge.SelectedIndex = 0;
        //        ddlCategory.SelectedIndex = 0;
        //        ddlCurriculum.SelectedIndex = 0;
        //        ddlSubject.SelectedIndex = 0;


        //        //        LoadSheets();
        //    }
        //    else
        //    {
        //        lblMessage.ForeColor = System.Drawing.Color.Red;
        //        lblMessage.Text = "Please select a file to upload";
        //    }
        //}


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
    }
 }

    
