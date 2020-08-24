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
    public partial class AddCourse : System.Web.UI.Page
    {
        ReportSheetEntities _db = new ReportSheetEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            //CheckUser();
            if (!IsPostBack)
            {
                BindCategory();
                LoadCategoryList();
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
        private void LoadCategoryList()
        {
            var showList = _db.Categories.ToList();
            grdReports.DataSource = showList;
            grdReports.DataBind();
            Session["showList"] = showList;
        }

        private void BindCategory()
        {
            var showList = _db.Categories.ToList();
            grdReports.DataSource = showList;
            grdReports.DataBind();
            Session["showList"] = showList;
        }

        protected void grdReports_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grdReports.PageIndex = e.NewPageIndex;
            grdReports.DataSource = Session["showList"];
            grdReports.DataBind();
        }
        protected void BtnSave_Click(object sender, EventArgs e)
        {
            if (BtnSave.CommandArgument == "1")
            {
                SaveCategory();
                txtCategory.Value = "";
            }
            else
            {
                BtnSave.Text = "Update";
                UpdateCategory();
            }
            BindCategory();
            LoadCategoryList();
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
            //lblcategory.Visible = true;
            BtnSave.CommandArgument = "2";
            lblcategory.Text = "Update Category";
            BtnSave.Text = "Update Category";
            var categoryId = int.Parse(viewLinkBtn.CommandArgument);
            ViewState["CategoryId"] = categoryId;
            var categoryobj = _db.Categories.FirstOrDefault(m => m.Id == categoryId);
            if (categoryobj != null)
            {
                txtCategory.Value = categoryobj.Type.Trim();
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
                var categoryId = int.Parse(viewLinkBtn.CommandArgument);
                var categoryObj = _db.Categories.FirstOrDefault(m => m.Id== categoryId);

                if (categoryObj != null)
                {
                    _db.Categories.Remove(categoryObj);
                    _db.SaveChanges();
                    LoadCategoryList();
                    ErrorDisplay1.ShowError("Category Deleted Successfully");
                }
            }
            catch (Exception ex)
            {
                
            }
            //try
            //{
            //    LinkButton deleteLinkBtn = (LinkButton)sender;
            //    var CategoryId = int.Parse(deleteLinkBtn.CommandArgument);
            //    var CategoryObj = _db.Categories.FirstOrDefault(m => m.Id == CategoryId);
            //    if (CategoryObj != null)
            //    {
            //        _db.Categories.Remove(CategoryObj);
            //        _db.SaveChanges();
            //        LoadCategoryList();
            //    }
            //}
            //catch (Exception ex)
            //{

            //}
        }

        protected void btnAddReports_Click(object sender, EventArgs e)
        {
            BindCategory();
            LoadCategoryList();
            txtCategory.Value = "";
            divForm.Visible = true;
            divList.Visible = false;
        }

        public void UpdateCategory()
        {
            try
            {
                if (ViewState["CategoryId"] == null)
                {
                    Response.Redirect("~/Login.aspx");
                }
                var categroyId = int.Parse(ViewState["CategoryId"].ToString());
                var categoryObj = _db.Categories.FirstOrDefault(m => m.Id == categroyId);
                categoryObj.Type = txtCategory.Value;
                
                _db.SaveChanges();
                divForm.Visible = false;
                divList.Visible = true;
                ErrorDisplay2.ShowSuccess("Category Updated Successfully");
            }
            catch (Exception ex)
            {

            }
        }

        private void SaveCategory()
        {
            try
            {
                if (string.IsNullOrEmpty(txtCategory.Value))
                {
                    ErrorDisplay1.ShowError("Kindly input Category Name; Field cannot be empty");
                }
                else
                {
                    var categoryObj = new Category
                    {
                        Type = txtCategory.Value,

                    };
                    _db.Categories.Add(categoryObj);
                    _db.SaveChanges();
                    ErrorDisplay2.ShowSuccess("Category Successfully Added");
                }
            }
            catch (Exception ex)
            {

            }
        }

    }
}