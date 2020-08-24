using ReportSheet.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ReportSheet.Admin
{
    
    public partial class CreatePost : System.Web.UI.Page
    {
        ReportSheetEntities _db = new ReportSheetEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
         
        
        private string UploadPicture()
        {
            try
            {

                string savePath = Server.MapPath("~/BlogImages/");
                string ext = System.IO.Path.GetExtension(imageUpload.PostedFile.FileName);
                var imagefileName = txtTitle.Value + "_" + Guid.NewGuid().ToString("N") + ext;
                savePath += imagefileName;

                imageUpload.SaveAs(savePath);

                return imagefileName;
            }
            catch (Exception ex)
            {
                return "";

            }
        }

        private void SavePost()
        {
            
            try
            {
                
                var blogPostObj = new BlogPost
                {
                    Title = txtTitle.Value,
                    Content = txtDescription.Text,
                    PublishedTime = DateTime.Now,
                    Author = "Admin",
                    ImagePath = UploadPicture(),
                    //Category = int.Parse(ddlCategory.SelectedValue),
                };
                _db.BlogPosts.Add(blogPostObj);
                _db.SaveChanges();
                ErrorDisplay2.ShowSuccess("Post Successfully Published");

                txtTitle.Value = "";
                txtDescription.Text = "";
                //ddlCategory.SelectedValue = "0";

                //if (string.IsNullOrEmpty(txtSubject.Value))
                //{
                //    ErrorDisplay1.ShowError("Kindly input Subject Name; Field cannot be empty");
                //}
                //else
                //{

                //    var subjectObj = new Subject
                //    {
                //        Name = txtSubject.Value,

                //    };
                //    _db.Subjects.Add(subjectObj);
                //    _db.SaveChanges();
                //    ErrorDisplay2.ShowSuccess("Subject Successfully Added");

                //}
            }
            catch (Exception ex)
            {
                
            }
        }

        protected void BtnPost_Click(object sender, EventArgs e)
        {
            if (txtTitle.Value == "")
            {
                ErrorDisplay2.ShowError("Title Field Cannot be null");
            }
            else if (txtDescription.Text == "")
            {
                ErrorDisplay2.ShowError("Description Field Cannot be null");
            }
            else
            {
                SavePost();
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            txtTitle.Value = "";
            txtDescription.Text = "";
            //ddlCategory.SelectedValue = "0";
            imageUpload = null;
            
        }

        


    }
}