using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Globalization;
using System.Reflection.Emit;
using System.Net;

namespace Ödev
{
    public partial class Soru4 : System.Web.UI.Page
    {
        string[] bolumler = { "Fizik Tedavi ve Rehabilitasyon", "Kardiyoloji", "Beyin ve Sinir Cerrahisi", "Kalp Damar Cerrahisi", "Dahiliye" };
        string[] uzmanlar = { "Dilek BAYRAM", "Korhan ALTAN", "Alev VATAN", "Cengiz KORUCU", "Buket YILMAZ" };
        protected void Page_Load(object sender, EventArgs e)
        {
            


            if (Page.IsPostBack == false)
            {
                for (int i = 0; i<bolumler.Length; i++)
                {
                    ListItem li = new ListItem();
                    li.Text = bolumler[i];
                    li.Value = uzmanlar[i];
                    RadioButtonList1.Items.Add(li);
                }
            }
        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label3.Text = RadioButtonList1.SelectedItem.Value;

        }

        protected void denetle(object sender, DayRenderEventArgs e)
        {
            

            if (e.Day.Date.DayOfWeek == DayOfWeek.Sunday)
            {
                e.Day.IsSelectable=false;
                e.Cell.ForeColor = Color.Red;
            }

            string[] tatil =
                        {
                "01.01.2023",
                "23.04.2023",
                "01.05.2023",
                "19.05.2023",
                "28.06.2023",
                "29.06.2023",
                "30.06.2023",
                "15.07.2023",
                "30.08.2023",
                "15.07.2023",
                "30.08.2023",
                "29.10.2023",
            };


            foreach (var item in tatil)
            {
                DateTime tatilTarihi = DateTime.ParseExact(item, "dd.MM.yyyy", CultureInfo.InvariantCulture);

                if (e.Day.Date == tatilTarihi)
                {
                    e.Cell.ForeColor = Color.Red;
                    e.Day.IsSelectable = false;
                }
            }
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            DateTime selectedDate = Calendar1.SelectedDate;

            DateTime today = DateTime.Today;
            if (selectedDate < today)
            {
                Label4.Text = "Geçmiş Tarihe Randevu Oluşturulamaz.";
            }
            else
            {
                Label4.Text = string.Empty;
            }
            Label4.Visible = true;


        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string bolum = RadioButtonList1.SelectedItem.Text;     
            string doktor = Label3.Text;
            string tarih = Calendar1.SelectedDate.ToString("yyyy-MM-dd");
            Response.Cookies["randevu"]["bolum"]=bolum;
            Response.Cookies["randevu"]["doktor"]=doktor;
            Response.Cookies["randevu"]["tarih"]=tarih;
            Response.Cookies["randevu"].Expires=DateTime.Now.AddMonths(1);


        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Label5.Visible = true;
            if (Request.Cookies["randevu"] != null)
            {
                string bolum = Request.Cookies["randevu"]["bolum"];
                string doktor = Request.Cookies["randevu"]["doktor"];
                string tarih = Request.Cookies["randevu"]["tarih"];
                Label5.Text = "Seçilen Bölüm: "+bolum+"<br/>"+"Uzman Doktor: "+doktor+"<br/>"+"Randevu Tarihi: "+tarih;
            }

        }
    }
}