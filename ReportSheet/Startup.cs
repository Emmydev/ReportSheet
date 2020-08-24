using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(ReportSheet.Startup))]
namespace ReportSheet
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
