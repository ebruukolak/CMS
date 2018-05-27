using System;
using System.Linq;
using System.Web.UI;
using EmerseWebSite.Data;

namespace EmerseWebSite
{
    public partial class Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)

        {
            var db = new EmerseDbEntities();
            var image1 = db.Image.Where(p => p.deleted.ToString().Equals("False") && p.category == 2).OrderByDescending(i => i.updateDate).ToList();
            RepeaterImg.DataSource = image1;
            RepeaterImg.DataBind();

            var content1 =
                db.Content.Where(p => p.deleted.ToString().Equals("False") && p.category == 1)
                    .OrderByDescending(p => p.updateDate)
                    .Take(1)
                    .ToList();
            RepeaterIcerik.DataSource = content1;
            RepeaterIcerik.DataBind();


            var image2 =
                db.Image.Where(p => p.deleted.ToString().Equals("False") && p.category == 1)
                    .OrderByDescending(i => i.createDate)
                    .Skip(0)
                    .Take(9)
                    .ToList();

            RepeaterResim.DataSource = image2;
            RepeaterResim.DataBind();

            Repeater1.DataSource = image2;
            Repeater1.DataBind();

            var content2 = db.Content.Where(p => p.deleted.ToString().Equals("False") && p.category == 1 /*&& p.header == "Diğer Hizmetlerimiz"*/)
                    .OrderByDescending(p => p.updateDate).Skip(1)
                    .ToList();
            RepeaterContent.DataSource = content2;
            RepeaterContent.DataBind();

            var announcement = db.Content.Where(p => p.deleted.ToString().Equals("False") && p.category == 2)
                    .OrderByDescending(p => p.updateDate)
                    .ToList();
            RepeaterDuyuru.DataSource = announcement;
            RepeaterDuyuru.DataBind();
        }
        public string Bind_Text(object txt)
        {
            return txt.ToString().Replace("../imageUpload", "imageUpload");
        }
    }
}