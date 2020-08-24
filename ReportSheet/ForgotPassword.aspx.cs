using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using ReportSheet.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.IO;
using System.Configuration;
using System.Net;

namespace ReportSheet
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        
        ReportSheetEntities _db = new ReportSheetEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        //protected async void btnForgotPassword_Click(object sender, EventArgs e)
        //{
            
        //}

        private string GeneratePassword()
        {
            string strPwdchar = "abcdefghijklmnopqrstuvwxyz0123456789";
            string strPwd = "";
            Random rnd = new Random();
            for (int i = 0; i <= 7; i++)
            {
                int iRandom = rnd.Next(0, strPwdchar.Length - 1);
                strPwd += strPwdchar.Substring(iRandom, 1);
            }
            return strPwd;
        }

        public async Task ResetPassword(string email, string newPassword)
        {
            try
            {
                ApplicationDbContext context = new ApplicationDbContext();
                UserStore<ApplicationUser> store = new UserStore<ApplicationUser>(context);
                UserManager<ApplicationUser> UserManager = new UserManager<ApplicationUser>(store);

                String hashedNewPassword = UserManager.PasswordHasher.HashPassword(newPassword);
                ApplicationUser cUser = await store.FindByEmailAsync(email);

                await store.SetPasswordHashAsync(cUser, hashedNewPassword);
                await store.UpdateAsync(cUser);
            }
            catch (Exception ex)
            {

            }


        }

        private string CreateBody()
        {
            var newPass = GeneratePassword();
            ResetPassword(txtEmail.Text, newPass);

            string body = string.Empty;
            using (StreamReader reader = new StreamReader(Server.MapPath("~/EmailTemplate.html")))
            {

                body = reader.ReadToEnd();

            }

            body = body.Replace("{fname}", txtEmail.Text); //replacing Parameters

            body = body.Replace("{lname}", newPass);

            return body;

        }

        protected async void btnForgotPassword_Click(object sender, EventArgs e)
        {
            string msg = "";
            try
            {

                var userList = _db.AspNetUsers.Where(m => m.Email == txtEmail.Text);
                if (!userList.Any())
                {
                    ErrorDisplay1.ShowError("Email does not exist!");

                    return;
                }

                if (String.IsNullOrEmpty(txtEmail.Text))
                {
                    ErrorDisplay1.ShowError("Please enter your email !");


                    return;
                }

                var newPass = GeneratePassword();
                await ResetPassword(txtEmail.Text, newPass);

                using (MailMessage mm = new MailMessage(ConfigurationManager.AppSettings["SMTPuser"], txtEmail.Text))
                {
                    mm.Subject = "MyClassPapers Password Reset";
                    mm.Body = CreateBody();
                    mm.IsBodyHtml = true;
                    SmtpClient smtp = new SmtpClient();
                    smtp.Host = ConfigurationManager.AppSettings["Host"];
                    smtp.EnableSsl = true;

                    NetworkCredential NetworkCred = new NetworkCredential(ConfigurationManager.AppSettings["SMTPuser"], ConfigurationManager.AppSettings["SMTPpassword"]);
                    smtp.UseDefaultCredentials = Convert.ToBoolean(ConfigurationManager.AppSettings["EnableSSL"]);
                    smtp.Credentials = NetworkCred;
                    smtp.Port = int.Parse(ConfigurationManager.AppSettings["EmailPort"]);
                    smtp.Send(mm);
                    ErrorDisplay1.ShowSuccess("Your new Password has been sent to your Email");
                    txtEmail.Text = "";

                }






                //await ResetPassword(txtEmail.Text, newPass);

                ////await ApplicationUtil.Execute();
                //await ApplicationUtil.SendPassword(newPass, txtEmail.Text);



                //ErrorDisplay1.ShowSuccess(msg);

                ////////

                //MailMessage message = new MailMessage();
                //MailAddress to = new MailAddress(txtEmail.Text.ToString());
                //MailAddress from = new MailAddress("tundexy6@gmail.com");
                //message.To.Add(to);
                //message.From = from;
                //message.Subject = "Password Reset";
                //message.Body = "Your new password is"+ newPass;
                //message.IsBodyHtml = false;
                //message.SubjectEncoding = System.Text.Encoding.UTF8;

                //SmtpClient Client = new SmtpClient();
                //Client.Host = "smtp.gmail.com";
                //Client.Port = 587;


                //System.Net.NetworkCredential myAccount = new System.Net.NetworkCredential("tundexy6@gmail.com", "Emmy1997");
                //Client.Credentials = myAccount;
                //Client.EnableSsl = true;
                //Client.UseDefaultCredentials = false;
                //Client.Send(message);
                //ErrorDisplay1.ShowSuccess("Your new Password has been sent to your Email");



            }
            catch (Exception ex)
            {
                ErrorDisplay1.ShowError("An error occurred, please contact administrator !: " + msg);

            }

        }

        //protected  void btnForgotPassword_Click(object sender, EventArgs e)
        //{


        //}   

    }
}