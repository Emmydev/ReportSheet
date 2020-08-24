using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using System;
using ReportSheet.Models;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text.RegularExpressions;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace ReportSheet
{
    public partial class Admin1 : System.Web.UI.MasterPage
    {
        ReportSheetEntities db = new ReportSheetEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //if (Session["CompanyName"] != null)
                //{
                //    lblCoyName.Text = Session["CompanyName"].ToString();
                //}

                if (Session["userId"] == null)
                {
                    Response.Redirect("~/Login.aspx");
                }
                

                //else
                //{
                //    Response.Redirect("~/index.aspx");
                //}
            }
        }


        private string LastSelectedURL
        {
            get
            {
                return Session["::LastSelectedMenuItem::"] as string;
            }
            set
            {
                Session["::LastSelectedMenuItem::"] = value;
            }
        }
        protected string menuGenerator
        {
            get
            {
                string result = string.Empty;
                // var userManager = HttpContext.Current.GetOwinContext().GetUserManager<ApplicationUser>();
                //if (Session["LogedinuserId"] == null)
                //{
                //    Response.Redirect("~/login.aspx");
                //}
                //var userId = Session["LogedinuserId"].ToString();

                // var rolesForUser = userManager.GetRoles(userId);
                foreach (SiteMapNode smn in SiteMap.RootNode.ChildNodes[0].ChildNodes)
                {
                    string dropdown = string.Empty;
                    string dropdetail = string.Empty;
                    string current = string.Empty;
                    if (SiteMap.CurrentNode == smn)
                    {
                        current = "class=\"active\"";
                        LastSelectedURL = smn.Key;
                    }

                    else if (SiteMap.CurrentNode == null && smn.Key == LastSelectedURL)
                    {
                        current = "class=\"active\"";
                        LastSelectedURL = smn.Key;
                    }

                    bool desc = false;
                    if (!string.IsNullOrEmpty(smn.Description))
                    {
                        Boolean.TryParse(smn.Description, out desc);

                    }

                    if (desc)
                    {
                        dropdown = "class=\"dropmenu\"";
                        dropdetail = "<span class=\"label\"><i class=\"fa fa-chevron-circle-down\"></i></span>";
                    }

                    //bool isInRole = false;
                    //if (smn.Roles != null)
                    //{
                    //    foreach (object obj in smn.Roles)
                    //    {
                    //        string roleName = Convert.ToString(obj);
                    //        if (!string.IsNullOrEmpty(roleName))
                    //        {
                    //            isInRole = rolesForUser.Contains(roleName);
                    //            if (isInRole) break;
                    //        }

                    //    }
                    //}

                    //if (isInRole)
                    //{
                    result +=
                        string.Format(
                            "<li {0}><a {1} href=\"{2}\"><i class=\"{3}\"></i><span class=\"hidden-sm\">{4}</span>{5}</a>",
                            current, dropdown, smn.Url, smn.ResourceKey, smn.Title, dropdetail);
                    if (desc)
                    {
                        result += AddChildren(smn);
                    }

                    result += "</li>";
                    // }
                }
                return result;
            }
        }

        private bool UserIsInRole(string roleName)
        {
            if (roleName == "Retailer")
            {
                return true;
            }
            if (roleName == "Wholesaler")
            {
                return true;
            }
            return false;
        }

        private string AddChildren(SiteMapNode parentNode)
        {
            //  var userManager = HttpContext.Current.GetOwinContext().GetUserManager<ApplicationUserManager>();
            //var userId = Session["LogedinuserId"].ToString();

            //  var rolesForUser = userManager.GetRoles(userId);
            string childrenNodes = string.Empty;
            childrenNodes = string.Format("<ul >");
            if (parentNode.HasChildNodes)
            {
                foreach (SiteMapNode child in parentNode.ChildNodes)
                {
                    //bool isInRole = false;
                    //if (child.Roles != null)
                    //{
                    //    foreach (object obj in child.Roles)
                    //    {
                    //        string roleName = Convert.ToString(obj);
                    //        if (!string.IsNullOrEmpty(roleName))
                    //        {
                    //            isInRole = rolesForUser.Contains(roleName);
                    //            if (isInRole) break;
                    //        }

                    //    }
                    //}

                    //if (isInRole)
                    //{
                    childrenNodes +=
                        string.Format(
                            "<li><a class=\"submenu\" href=\"{0}\"><span class=\"hidden-sm\">{1}</span></a></li>",
                            child.Url, child.Title);
                }

                // }
            }
            childrenNodes += "</ul>";
            return childrenNodes;

        }

        protected void logoutBtn_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            Session.Abandon();
            Response.Redirect("~/Login.aspx");
        }
        protected void continueBtn_Click(object sender, EventArgs e)
        {

        }

        protected void btnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/index.aspx");
        }

    
    }
}