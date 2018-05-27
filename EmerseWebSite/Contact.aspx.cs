using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmerseWebSite
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSend_OnClick(object sender, EventArgs e)
        {
            MailMessage msg = new MailMessage();
            msg.IsBodyHtml = true;
            msg.To.Add("ebrukolak94@gmail.com");
            msg.From = new MailAddress("sales@lymranet.com", "LYMRANET", System.Text.Encoding.UTF8);
            msg.Subject = "Reklam";
            msg.Body = "Kimden: " + txtAd.Value + "<br/>" + "Email: " + txtMail.Value + "<br/>" +"Telefon: "+txtTelefon.Value+ "<br/>" + "Konu: " + txtKonu.Value + "<br/>" + "Mesaj: " + txtMesaj.Value;

            SmtpClient client = new SmtpClient();
            client.UseDefaultCredentials = false;
            client.Host = "smtp.yandex.ru";
            client.Port = 587;
            client.Timeout = 200000;
            client.EnableSsl = true;
            client.Credentials = new NetworkCredential("sales@lymranet.com", "1q2w3e...");
            client.Send(msg);
            //Label.Text = "Mesajınız Başarıyla Gönderilmiştir.";
            //Label.Visible = true;

            //Response.Redirect("Contact.aspx");
            //Response.Write("<script>alert('Mesajınız Başarı ile Gönderilmiştir.')</script>");

            ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect", "alert('Mesajınız İletilmiştir.'); window.location='" +
            Request.ApplicationPath + "Contact.aspx';", true);

        }
    }
}