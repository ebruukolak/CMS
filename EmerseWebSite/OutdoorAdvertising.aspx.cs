using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EmerseWebSite.Data;

namespace EmerseWebSite
{
    public partial class OutdoorAdvertising : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var db = new EmerseDbEntities();
            var content = db.Content.Where(p => p.deleted.ToString().Equals("False") && p.category==5).ToList();
            Repeater1.DataSource = content;
            Repeater1.DataBind();
        }
    }
}