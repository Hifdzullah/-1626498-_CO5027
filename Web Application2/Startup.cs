using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Web_Application2.Startup))]
namespace Web_Application2
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
