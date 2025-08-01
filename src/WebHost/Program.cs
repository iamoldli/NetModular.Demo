using System.Threading.Tasks;
using NetModular.Lib.Host.Web;

namespace NetModular.Demo.WebHost;

public class Program
{
    public static async Task Main(string[] args)
    {
        await new HostBuilder().RunAsync(args);
    }
}