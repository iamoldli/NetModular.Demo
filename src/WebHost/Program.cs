using Nm.Lib.Host.Web;

namespace NetModular.Demo.WebHost
{
    public class Program
    {
        public static void Main(string[] args)
        {
            new HostBuilder().Run<Startup>(args);
        }
    }
}
