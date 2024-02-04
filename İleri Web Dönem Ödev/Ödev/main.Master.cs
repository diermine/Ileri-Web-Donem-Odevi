using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ödev
{
    public partial class main : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label2.Text=Application["ziyaretci_sayisi"].ToString();
            //eger giris yapilmadi ise (session null demektir henuz olusmadi)
            if (Session["uye"] == null)
            {
                Panel1.Visible = true;
                Panel2.Visible = false;
            }
            else
            {
                Panel1.Visible = false;
                Panel2.Visible = true;
                Label1.Text = Session["uye"].ToString();
            }

            

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Giris butonu
            Session["uye"] = TextBox2.Text;

            if (Request.Cookies["yeni"] != null)
            {
                Response.Cookies["eski"].Value = Request.Cookies["yeni"].Value;
                Response.Cookies["yeni"].Expires = DateTime.Now.AddYears(1);
            }

            Response.Cookies["yeni"].Value = DateTime.Now.ToShortDateString();
            Response.Cookies["yeni"].Expires = DateTime.Now.AddYears(1);


            Response.Redirect("Soru1.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //çıkış butonu
            Session.Abandon();
            Response.Redirect("Soru1.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Soru5.aspx");
        }
    }
}