using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

namespace ParaYatırma
{
    public partial class Main : System.Web.UI.Page
    {
        public static int para = 0;
        public static string id = "";
        public static string mercan = "";
        public static string ad_soyad = "";
        public static string telefon = "";
        public static string adres = "";
        public static string mail = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                MailAddress m = new MailAddress(TextBox6.Text);
                if (m.Address != "")
                {
                    para = Convert.ToInt32(DropDownList3.Text);
                    id = TextBox1.Text;
                    ad_soyad = TextBox2.Text;
                    telefon = TextBox3.Text;
                    adres = TextBox5.Text;
                    mail = TextBox6.Text;
                    Response.Redirect("PayTrOdeme.aspx");
                }
            }
            catch
            {
                Response.Write("<script>alert('Hatalı mail adresi')</script>");
            }
            
        }
    }
}