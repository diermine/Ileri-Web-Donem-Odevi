using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ödev
{
    public partial class Soru_1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //eğer cokie var ise
            if (Request.Cookies["suanki_giris"] != null)
            {
                Label3.Text="Sitemizi en son " + Request.Cookies
                     ["suanki_giris"].Value+"tarhinde ziyaret ettiniz.";
            }
        }
    }
}