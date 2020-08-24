using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using ReportSheet.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ReportSheet
{
    public partial class Login : System.Web.UI.Page
    {
        ReportSheetEntities _db = new ReportSheetEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            //txtEmail.Text = "";
            //txtPassword.Text = "";
        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            try
            {
                //var adminObj = _db.AspNetUsers;

                string previousPage = HttpContext.Current.Request.UrlReferrer.AbsolutePath;

                if (IsValid)
                {
                    // Validate the user password
                    ApplicationDbContext context = new ApplicationDbContext();
                    var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
                    var signinManager = Context.GetOwinContext().GetUserManager<ApplicationSignInManager>();
                    string em;
                    ApplicationUser user;

                    if (Regex.IsMatch(txtEmail.Text, @"^[0-9]+$"))
                    {
                        using (ReportSheetEntities _db = new ReportSheetEntities())
                        {
                            user = manager.FindByName(txtEmail.Text);
                        }
                    }
                    else
                    {
                        user = manager.FindByEmail(txtEmail.Text);
                    }

                    if (user != null)
                    {
                        var role = manager.GetRoles(user.Id);
                        Session["userId"] = user.Id;
                        Session["Email"] = user.Email;
                        Session["Name"] = user.UserName;

                        if (manager.CheckPassword(user, txtPassword.Text))
                        {
                            signinManager.SignIn(user, false, true);
                            //Session["LogedinuserId"] = user.Id;
                            //if (user.Admin==true)
                            //if (user.Email == "olayinkaemmanuel52@gmail.com")
                            if (user.Admin == true)
                            {
                                Response.Redirect("~/Admin/Dashboard.aspx");
                            }
                            else
                            {
                                Response.Redirect("index.aspx");
                            }
                            //if (previousPage != "index.aspx")
                            //{
                            //    Response.Redirect(previousPage);
                            //}

                            //if (User.IsInRole("Admin"))
                            //{
                            //    Response.Redirect("Dashboard.aspx");
                            //}
                            //else
                            //{
                            //    Response.Redirect("Default.aspx");
                            //}
                        }
                        ErrorDisplay1.ShowError("Invalid login attempt");
                    }
                }

                //else if (previousPage != "index.aspx")
                //{
                //    Response.Redirect(previousPage);
                //}


                //Response.Redirect("Home.aspx");
            }
            catch (Exception ex)
            {
                ErrorDisplay1.ShowError(ex.Message);
            }
            
        }
        
    }
}
