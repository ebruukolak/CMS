using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EmerseWebSite.Data;

namespace EmerseWebSite
{
    public partial class Gallery : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
            
        {
            var db=new EmerseDbEntities();
            var img =new Data.Image();


            var image = db.Image.Where(p => p.deleted.ToString().Equals("False") && p.category==1).OrderByDescending(i => i.createDate).ToList();
            Repeater1.DataSource = image;
            Repeater1.DataBind();

            
        }
    }
}