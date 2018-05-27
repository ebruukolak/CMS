using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EmerseWebSite.Data;
using Content = EmerseWebSite.Data.Content;

namespace EmerseWebSite.Admin
{
    public partial class ContentInsert : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                var db = new EmerseDbEntities();
                dropDownList.DataTextField = "name";
                dropDownList.DataValueField = "ID";
                dropDownList.DataSource= db.ContentCategory.ToList();
                dropDownList.DataBind();
            }

        }

        protected void btnInsert_OnClick(object sender, EventArgs e)
        {

            if (head.Text == string.Empty || text.Text == string.Empty)
            {

                Label.Text = "Lütfen Tüm Alanları Doldurunuz.";
                Label.Visible = true;
            }
            else
            {
                var db = new EmerseDbEntities();
                Content c = new Content();
                c.header = head.Text;
                c.category = Convert.ToInt32(dropDownList.SelectedValue);
                c.text = text.Text;
                c.createDate = DateTime.Now;
                db.Content.Add(c);
                db.SaveChanges();
                Response.Redirect("ContentAdmin.aspx");
            }
        }
    }

}