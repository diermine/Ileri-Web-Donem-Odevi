using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace Ödev
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {

        }

        protected void Session_Start(object sender, EventArgs e)
        {
            if (Application["ziyaretci_sayisi"] == "0")
                Application["ziyaretci_sayisi"]="1";
            else
                Application["ziyaretci_sayisi"]=Convert.ToInt32(Application["ziyaretci_sayisi"])+1;
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {
            Application["ziyaretci_sayisi"]=Convert.ToInt32(Application["ziyaretci_sayisi"])-1;
        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}