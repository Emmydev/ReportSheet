using SendGrid;
using SendGrid.Helpers.Mail;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Threading.Tasks;
using System.Web;

namespace ReportSheet.Models
{
    public class ApplicationUtil
    {
        //private static void Main()
        //   {
        //        Execute().Wait();
        //    }

        //   public static async Task Execute()
        //    {
        //        //var apiKey = Environment.GetEnvironmentVariable("NAME_OF_THE_ENVIRONMENT_VARIABLE_FOR_YOUR_SENDGRID_KEY");
        //        var apiKey = ConfigurationManager.AppSettings["SendGrid"];
        //        var client = new SendGridClient(apiKey);
        //        var from = new EmailAddress("test@example.com", "Example User");
        //        var subject = "Sending with SendGrid is Fun";
        //        var to = new EmailAddress("tundexy6@gmail.com", "Example User");
        //        var plainTextContent = "and easy to do anywhere, even with C#";
        //        var htmlContent = "<strong>and easy to do anywhere, even with C#</strong>";
        //        var msg = MailHelper.CreateSingleEmail(from, to, subject, plainTextContent, htmlContent);
        //        var response = await client.SendEmailAsync(msg);
        //    }

        public static async Task SendPassword(string pasword, string receiverEmail)
        {
            var apiKey = ConfigurationManager.AppSettings["SendGrid"];
            var client = new SendGridClient(apiKey);
            var from = new EmailAddress(ConfigurationManager.AppSettings["EmailAddress"], "ClassPaper");
            var subject = "Password Reset";
            var to = new EmailAddress(receiverEmail);
            var plainTextContent = "Your password has been reset to " + pasword + ".";
            var htmlContent = pasword + " is your REMS reset code";
            var msg = MailHelper.CreateSingleEmail(from, to, subject, plainTextContent, htmlContent);
            var response = await client.SendEmailAsync(msg);
        }

    }

}