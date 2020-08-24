using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ReportSheet.Models;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.AspNet.Identity;
using ReportSheet.ErrorControl;

namespace ReportSheet
{
    public partial class Registration : System.Web.UI.Page
    {
        ReportSheetEntities _db = new ReportSheetEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadRoles();
            }
        }

        private void LoadRoles()
        {
            var LoadRoles = _db.AspNetRoles.OrderBy(m => m.Id).ToList();
            ddlUserType.DataSource = LoadRoles;
            ddlUserType.DataTextField = "Name";
            ddlUserType.DataValueField = "Id";
            ddlUserType.DataBind();
            ddlUserType.Items.Insert(0, new ListItem("--Select--", "0"));
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
                manager.PasswordValidator = new PasswordValidator
                {
                    RequireNonLetterOrDigit = false,
                    RequireDigit = false,
                    RequireLowercase = false,
                    RequireUppercase = false,
                };
                var user = new ApplicationUser() {UserName = txtName.Text, Email = txtEmail.Text, Admin=false, PhoneNumber = txtPhone.Text, EmailConfirmed = true, };
                IdentityResult result = manager.Create(user, txtPassword.Text.Trim());
                if (result.Succeeded)
                {
                    ;
                    manager.AddToRole(user.Id, ddlUserType.SelectedItem.Text);

                    Response.Redirect("Success.aspx");
                    //ErrorDisplay.ShowSuccess("User added successfully");
                }
                else
                {
                    ErrorDisplay1.ShowError(result.Errors.FirstOrDefault());
                }
            }
            catch (Exception ex)
            {
               //ErrorDisplay1.ShowError(DefaultResponses.exception);
            }

        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            txtName.Text = "";
            txtPhone.Text = "";
            txtEmail.Text = "";
            txtPassword.Text = "";
            ddlUserType.SelectedValue = "0";
            //Response.Redirect("Login.aspx");
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }
    }
}