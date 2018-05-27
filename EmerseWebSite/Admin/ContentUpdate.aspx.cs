using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EmerseWebSite.Data;

namespace EmerseWebSite.Admin
{
    public partial class ContentUpdate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                var db = new EmerseDbEntities();
                dropDownList.DataTextField = "name";
                dropDownList.DataValueField = "ID";
                dropDownList.DataSource = db.ContentCategory.ToList();
                dropDownList.DataBind();


                int id = int.Parse(Request.QueryString["ID"]);
                var record = db.Content.Find(id);
                head.Text = record.header;
                text.Text = record.text;
                dropDownList.SelectedValue = record.category.ToString();
            }
        }

        protected void btnEdit_OnClick(object sender, EventArgs e)
        {
            EmerseDbEntities db = new EmerseDbEntities();
            int id = int.Parse(Request.QueryString["ID"]);

            var currentRecord = db.Content.Find(id);
            currentRecord.header = head.Text;
            currentRecord.category = Convert.ToInt32(dropDownList.SelectedValue);
            currentRecord.text = text.Text;
            currentRecord.updateDate = DateTime.Now;
            db.SaveChanges();
            Response.Redirect("ContentAdmin.aspx");
        }
    }
}