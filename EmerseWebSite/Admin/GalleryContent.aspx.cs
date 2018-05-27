using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EmerseWebSite.Data;
using Image = System.Web.UI.WebControls.Image;

namespace EmerseWebSite.Admin
{
    public partial class GalleryContent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataList();
            }

        }

        protected void DataList()
        {
            var db = new EmerseDbEntities();
            var img = db.Image.OrderByDescending(i => i.createDate).ToList();
            GridView1.DataSource = img;
            GridView1.DataBind();
        }

        protected void imgEdit_OnClick(object sender, ImageClickEventArgs e)
        {
            ImageButton btn = sender as ImageButton;
            GridViewRow row = btn.NamingContainer as GridViewRow;
            HiddenField field = row.FindControl("lblHiddenField") as HiddenField;
            string val = field.Value;
            Response.Redirect("GalleryUpdate.aspx?ID=" + val);
        }
        protected void imgDelete_OnClick(object sender, ImageClickEventArgs e)
        {

            ImageButton btn = sender as ImageButton;
            GridViewRow row = btn.NamingContainer as GridViewRow;
            HiddenField field = row.FindControl("lblHiddenField") as HiddenField;
            string val = field.Value;
            EmerseDbEntities db = new EmerseDbEntities();
            int id = Convert.ToInt32(val);

            var removeRecord = db.Image.Find(id);
            removeRecord.deleted = true;
            db.SaveChanges();
            GridView1.DataBind();
            Response.Redirect("GalleryContent.aspx");
        }

        protected void btnInsertImage_OnClick(object sender, EventArgs e)
        {
            Response.Redirect("GalleryInsert.aspx");
        }

        protected void GridView1_OnPageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            DataList();
        }

        public string thumbUrl(object data)
        {
            return data.ToString();
        }

        public string Bind_Deleted(object deleted)
        {
           

            if (deleted.ToString().Equals("False"))
            {
                return "../images/icon_false.png";
            }
            else
            {
                return "../images/icon_true.png";
            }
            
        }


    }
}