using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ödev
{
    public partial class Soru2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label3.Text = liste.SelectedItem.Value;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (liste.SelectedItem.Value=="21,52")
            {
                Label3.Text =liste.SelectedItem.Value;
            }
            else if(liste.SelectedItem.Value == "43,12")
            {
                Label3.Text = liste.SelectedItem.Value;
            }
            else if (liste.SelectedItem.Value == "51,12")
            {
                Label3.Text = liste.SelectedItem.Value;
            }
            else if (liste.SelectedItem.Value == "89,52")
            {
                Label3.Text = liste.SelectedItem.Value;
            }

            Response.Redirect("Soru3.aspx?ad="+liste.SelectedItem.Text+"&adet="+sayi.Text+"&fiyat="+liste.SelectedItem.Value);

        }
    }
}