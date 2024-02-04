using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ödev
{
    public partial class Soru3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label3.Text=Request.QueryString["ad"];
            Label4.Text=Request.QueryString["adet"];

            string fiyat = Request.QueryString["fiyat"];
            Label5.Text = Convert.ToString(Convert.ToDouble(fiyat) * Convert.ToInt32(Label4.Text));

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Soru2.aspx");
        }
    }
}