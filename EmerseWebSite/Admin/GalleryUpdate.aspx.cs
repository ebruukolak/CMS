using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EmerseWebSite.Data;

namespace EmerseWebSite.Admin
{
    public partial class ImageUpdate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var db = new EmerseDbEntities();
                dropDownList.DataTextField = "name";
                dropDownList.DataValueField = "ID";
                dropDownList.DataSource = db.ImageCategory.ToList();
                dropDownList.DataBind();

                int id = int.Parse(Request.QueryString["ID"]);
                var record = db.Image.Find(id);
                txtImage.Text = record.name;
                dropDownList.SelectedValue = record.category.ToString();
            }
        }

        protected void btnImageEdit_OnClick(object sender, EventArgs e)
        {
            var db = new EmerseDbEntities();
            int id = int.Parse(Request.QueryString["ID"]);
            var currentRecord = db.Image.Find(id);

            FileUploadImage.SaveAs(MapPath("~/images/image/") + FileUploadImage.FileName);
            System.Drawing.Image img = System.Drawing.Image.FromFile(MapPath("~/images/image/") + FileUploadImage.FileName);
            System.Drawing.Image thumbnail = img.GetThumbnailImage(364,273,new System.Drawing.Image.GetThumbnailImageAbort(ThumbnailCallback), IntPtr.Zero);
            thumbnail.Save(MapPath("~/images/thumbnail/") + FileUploadImage.FileName);

            currentRecord.name = txtImage.Text;
            currentRecord.category = Convert.ToInt32(dropDownList.SelectedValue);
            currentRecord.thumbnailUrl = "~/images/thumbnail/" + FileUploadImage.FileName;
            currentRecord.url = "~/images/image/" + FileUploadImage.FileName;
            currentRecord.updateDate = DateTime.Now;
            db.SaveChanges();
            Response.Redirect("GalleryContent.aspx");
        }

        public bool ThumbnailCallback()
        {
            return false;
        }
    }
}