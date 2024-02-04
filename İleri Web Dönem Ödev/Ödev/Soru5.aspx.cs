using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ödev
{
    public partial class Soru5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string script = "alert('Kayıt işleminiz tamamlandı');";
            ScriptManager.RegisterStartupScript(this, GetType(), "KayitTamamlandi", script, true);
        }
    }
}