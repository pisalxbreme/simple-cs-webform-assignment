using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(FirstWebFormAssignment.Startup))]
namespace FirstWebFormAssignment
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
