using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(SqlDataSourceSample.Startup))]
namespace SqlDataSourceSample
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
