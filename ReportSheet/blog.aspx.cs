﻿using ReportSheet.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ReportSheet
{
    public partial class blogsss : System.Web.UI.Page
    {
        ReportSheetEntities _db = new ReportSheetEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

            
            if (!Page.IsPostBack)
            {

                //if (Request.QueryString["PostId"] == null)
                //{
                    
                //}
                //int postId = int.Parse(Session["PostId"].ToString());
                //var postObj = _db.BlogPosts.FirstOrDefault(m => m.PostId == postId);
                //if (postObj == null)
                //{
                //    loadBlogPost();
                //}
                LoadRecent();
                loadBlogPost();
                if (Session["userId"] != null)
                {
                    UsernameLabel.Visible = true;
                    lknLogOut.Visible = true;


                }
                else
                {
                    UsernameLabel.Visible = false;
                    lknLogOut.Visible = false;
                }

            }
        }

        private void LoadRecent()
        {
            var showRecent = _db.BlogPosts.OrderByDescending(m=> m.PublishedTime).ToList();
            grdReports.DataSource = showRecent;
            grdReports.DataBind();
            Session["showRecent"] = showRecent;
        }
        protected void grdReports_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grdReports.PageIndex = e.NewPageIndex;
            grdReports.DataSource = Session["showRecent"];
            grdReports.DataBind();

        }
        
        protected void grdReports_RowCommand(object sender, GridViewCommandEventArgs e)
        {
               
        }

        protected void lnkPost_Click(object sender, EventArgs e)
        {
                var ViewCommand = (LinkButton)sender;
                var postId = int.Parse(ViewCommand.CommandArgument);
                Session["PostId"] = postId;
                var postObj = _db.BlogPosts.FirstOrDefault(m => m.PostId == postId);

            if (postObj != null)
            {

                //int  postId = int.Parse(Request.QueryString[0]);
                
                var blogList = _db.BlogPosts.Where(m => m.PostId == postId).ToList();
                if (!blogList.Any())
                {
                    FormView2.DataSource = new List<BlogPost>();
                    FormView2.DataBind();
                }
                FormView2.DataSource = blogList;
                FormView2.DataBind();

                //Displaying the Selected Post Comment
                var commentList = _db.BlogComments.Where(m => m.PostId == postId).ToList();
                if (!commentList.Any())
                {
                    grdComment.DataSource = new List<BlogComment>();
                    grdComment.DataBind();
                }
                grdComment.DataSource = commentList;
                grdComment.DataBind();
            }
            //Response.Redirect("~/blog.aspx?postId=" + postId);
        }

        private void loadBlogPost()
        {
                var blogList = _db.BlogPosts.OrderByDescending(s => s.PublishedTime).Take(1).ToList();
                if (!blogList.Any())
                {
                    FormView2.DataSource = new List<BlogPost>();
                    //FormView2.DataSourceID = string.Empty;
                    FormView2.DataBind();

                }
                FormView2.DataSource = blogList;
                FormView2.DataBind();
                var postId = blogList[0].PostId;
            Session["PostId"] = postId;
            //ViewState["PostId"] = postId;



            var commentList = _db.BlogComments.OrderByDescending(m=>m.Date).Where(s => s.PostId == postId).Take(5).ToList();
            if ( !commentList.Any())
            {
                grdComment.DataSource = new List<BlogPost>();
                grdComment.DataBind();
            }

            grdComment.DataSource = commentList;
            grdComment.DataBind();
            
            
        }

        //private void SavePost()
        //{


        //    try
        //    {

        //        var blogCommentObj = new BlogComment
        //        {
        //            Message = txtComment.Text,
        //            Date = DateTime.Now,
        //        };
        //        _db.BlogComments.Add(blogCommentObj);
        //        _db.SaveChanges();
        //        ErrorDisplay2.ShowSuccess("Post Successfully Published");

        //        txtComment.Text = "";



        //    }
        //    catch (Exception ex)
        //    {

        //    }
        //}


        protected void PostComment_Click(object sender, EventArgs e)
        {
            if (Session["userId"] == null)
            {
                Response.Redirect("~/Login.aspx");
            }
            else
            {
                if (txtComment.Text == "")
                {
                    ErrorDisplay2.ShowError("Fields Cannot be Empty");
                }
                else
                {

                    int postId = int.Parse(Session["PostId"].ToString());
                    var postObj = _db.BlogPosts.FirstOrDefault(m => m.PostId == postId);
                    //SavePost();
                    if (postObj != null)
                    {
                        try
                        {

                            var blogCommentObj = new BlogComment
                            {
                                Message = txtComment.Text,
                                PostId = postId,
                                //Name = txtName.Text,
                                Name = User.Identity.Name,
                                Date = DateTime.Now,
                            };
                            _db.BlogComments.Add(blogCommentObj);
                            _db.SaveChanges();
                            ErrorDisplay2.ShowSuccess("Comment Posted Successfully");

                            txtComment.Text = "";



                        }
                        catch (Exception ex)
                        {
                            ErrorDisplay2.ShowError("An error Occured please contact Administrator");
                        }
                    }

                }
            }
        }

        protected void grdComment_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
         
        }
        protected void grdComment_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }

        protected void grdComment_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void lknLogOut_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            Session.Abandon();
            Response.Redirect("~/Login.aspx");
                
        }
    }
}









