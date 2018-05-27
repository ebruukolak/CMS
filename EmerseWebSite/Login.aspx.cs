using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using EmerseWebSite.Data;

namespace EmerseWebSite
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_OnClick(object sender, EventArgs e)
        {

            if (IsValid)
            {
                var db = new EmerseDbEntities();
                var user = db.User.FirstOrDefault(u => u.uUSerName == k_adi.Value && u.uPassword == sifre.Value);
                if (user != null)
                {
                   FormsAuthenticationTicket ticket =new FormsAuthenticationTicket(
                       1,k_adi.Value,DateTime.Now, DateTime.Now.AddMinutes(30),false,"admin",FormsAuthentication.FormsCookiePath);
                    string hash = FormsAuthentication.Encrypt(ticket);
                    HttpCookie cookie=new HttpCookie(FormsAuthentication.FormsCookieName,hash);

                    if (ticket.IsPersistent)
                        cookie.Expires = ticket.Expiration;
                    Response.Cookies.Add(cookie);

                    string returnUrl = Request.QueryString["ReturnUrl"];
                    if (returnUrl == null)
                        returnUrl = "/Admin/";
                    Response.Redirect(returnUrl);
                }
                else
                {
                    Label.Text = "Kullanıcı Adı veya Şifre Yanlış.Lütfen Tekrar Deneyiniz.";
                    Label.Visible = true;
                }
            }

            
        }
    }
}