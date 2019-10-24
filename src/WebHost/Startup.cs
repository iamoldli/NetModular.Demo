using Microsoft.Extensions.Hosting;
using Nm.Lib.Host.Web;

namespace NetModular.Demo.WebHost
{
    public class Startup : StartupAbstract
    {
        public Startup(IHostEnvironment env) : base(env)
        {
        }
    }
}
