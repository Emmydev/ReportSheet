using ReportSheet.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ReportSheet.Admin
{
    public partial class ViewPost : System.Web.UI.Page
    {
        ReportSheetEntities _db = new ReportSheetEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadPost();
        }

        private void LoadPost()
        {
            var showPost = _db.BlogPosts.OrderByDescending(m=>m.PublishedTime).ToList();
            grdReports.DataSource = showPost;
            grdReports.DataBind();
            Session["showPost"] = showPost;
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
           
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {

            try
            {
                LinkButton viewLinkBtn = (LinkButton)sender;
                var postId = int.Parse(viewLinkBtn.CommandArgument);
                var PostObj = _db.BlogPosts.FirstOrDefault(m => m.PostId == postId);

                if (PostObj != null)
                {
                    _db.BlogPosts.Remove(PostObj);
                    _db.SaveChanges();
                    LoadPost();
                    ErrorDisplay1.ShowError("Post Deleted Successfully");
                }
                LoadPost();

            }
            catch (Exception ex)
            {

            }
        
        }

        protected void grdReports_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            
        }
    }
}