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
    public partial class ManageCourses : System.Web.UI.Page
    {
        ReportSheetEntities _db = new ReportSheetEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            //CheckUser();
            
            if (!IsPostBack)
            {
                BindSubjects();
                LoadSubjects();
            }
        }

        //private void CheckUser()
        //{
        //    string userId = User.Identity.GetUserId();
        //    ApplicationDbContext db = new ApplicationDbContext();
        //    var role = (from r in db.Roles where r.Name.Contains("Admin") select r).FirstOrDefault();
        //    var users = db.Users.Where(x => x.Roles.Select(y => y.RoleId).Contains(role.Id)).ToList();
        //    if (users.Find(x => x.Id == userId) != null)
        //    {
        //        // User is in the Admin Role
              
        //    }
        //    else
        //    {
        //        //User is not in the Admin Role
                
        //    }
        //}
   
        protected void btnAddSubjects_Click(object sender, EventArgs e)
        {
            BindSubjects();
            LoadSubjects();
            divForm.Visible = true;
            divList.Visible = false;
        }

        private void LoadSubjects()
        {
            var showSubjects = _db.Subjects.ToList();
            grdReports.DataSource = showSubjects;
            grdReports.DataBind();
            Session["showSubjects"] = showSubjects;
        }

        private void BindSubjects()
        {
            var showSubjects = _db.Subjects.ToList();
            grdReports.DataSource = showSubjects;
            grdReports.DataBind();
            Session["showSubjects"] = showSubjects;
        }

        protected void grdReports_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grdReports.PageIndex = e.NewPageIndex;
            grdReports.DataSource = Session["showSubjects"];
            grdReports.DataBind();
        }
        protected void BtnSave_Click(object sender, EventArgs e)
        {
            if (BtnSave.CommandArgument == "1")
            {
                SaveSubjects();
                txtSubject.Value = "";
            }
            else
            {
                BtnSave.Text = "Update";
                UpdateSubject();
            }
            BindSubjects();
            LoadSubjects();
            divForm.Visible = false;
            grdReports.Visible = true;
            divList.Visible = true;
            
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            divForm.Visible = false;
            divList.Visible = true;
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            LinkButton viewLinkBtn = (LinkButton)sender;
            //lblSubject.Visible = true;
            BtnSave.CommandArgument = "2";
            lblSubject.Text = "Update Subject";
            BtnSave.Text = "Update Subject";
            var subjectId = int.Parse(viewLinkBtn.CommandArgument);
            ViewState["subjectId"] = subjectId;
            var subjectObj = _db.Subjects.FirstOrDefault(m => m.SubjectId == subjectId);
            if (subjectObj != null)
            {
                txtSubject.Value = subjectObj.Name.Trim();
            }

            divList.Visible = false;
            divForm.Visible = true;
            BtnSave.Visible = true;
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            try
            {
                LinkButton viewLinkBtn = (LinkButton)sender;
                var subjectId = int.Parse(viewLinkBtn.CommandArgument);
                var subObj = _db.Subjects.FirstOrDefault(m => m.SubjectId == subjectId);

                if (subObj != null)
                {
                    _db.Subjects.Remove(subObj);
                    _db.SaveChanges();
                    LoadSubjects();
                    ErrorDisplay1.ShowError("Subject Deleted Successfully" );
                }
            }
            catch (Exception ex)
            {

            }


            //try
            //{
            //    LinkButton deleteLinkBtn = (LinkButton)sender;
            //    var subjectId = int.Parse(deleteLinkBtn.CommandArgument);
            //    var subjectObj = _db.Subjects.FirstOrDefault(m => m.SubjectId == subjectId);
            //    if (subjectObj != null)
            //    {
            //        _db.Subjects.Remove(subjectObj);
            //        _db.SaveChanges();
            //        LoadSubjects();
            //    }
            //}
            //catch (Exception ex)
            //{

            //}
        }

        public void UpdateSubject()
        {
            try
            {
                if (ViewState["subjectId"] == null)
                {
                    Response.Redirect("~/Login.aspx");
                }
                var subjectId = int.Parse(ViewState["subjectId"].ToString());
                var subjectObj = _db.Subjects.FirstOrDefault(m => m.SubjectId == subjectId);
                subjectObj.Name = txtSubject.Value;

                _db.SaveChanges();
                divForm.Visible = false;
                divList.Visible = true;
                ErrorDisplay2.ShowSuccess("Subject Updated Successfully");
            }
            catch (Exception ex)
            {

            }
        }

        private void SaveSubjects()
        {
            try
            {
                if (string.IsNullOrEmpty(txtSubject.Value))
                {
                    ErrorDisplay1.ShowError("Kindly input Subject Name; Field cannot be empty");
                }
                else
                {

                    var subjectObj = new Subject
                    {
                        Name = txtSubject.Value,

                    };
                    _db.Subjects.Add(subjectObj);
                    _db.SaveChanges();
                    ErrorDisplay2.ShowSuccess("Subject Successfully Added");

                }
            }
            catch (Exception ex)
            {

            }
        }

    }
}