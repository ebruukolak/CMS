
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using EmerseWebSite.Data;
using Content = System.Web.UI.WebControls.Content;

namespace EmerseWebSite.Admin
{
    public partial class GalleryInsert : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                var db = new EmerseDbEntities();
                dropDownList.DataTextField = "name";
                dropDownList.DataValueField = "ID";
                dropDownList.DataSource=db.ImageCategory.ToList();
                dropDownList.DataBind();
            }
        }

        protected void btnImageInsert_OnClick(object sender, EventArgs e)
        {
            if (txtImage.Text == string.Empty  || FileUploadImage.FileName == string.Empty)
            {
                Label.Text = "Lütfen Tüm Alanları Doldurunuz.";
                Label.Visible = true;
                
            }
            else {
                  
                 
                  //FileUploadThumbnail.SaveAs(MapPath("~/images/thumbnail/")+FileUploadThumbnail.FileName);

                FileUploadImage.SaveAs(MapPath("~/images/image/")+FileUploadImage.FileName);
                System.Drawing.Image img = System.Drawing.Image.FromFile(MapPath("~/images/image/") + FileUploadImage.FileName);
                System.Drawing.Image thumbnail = img.GetThumbnailImage(364,273,new System.Drawing.Image.GetThumbnailImageAbort(ThumbnailCallback), IntPtr.Zero);
                thumbnail.Save(MapPath("~/images/thumbnail/") + FileUploadImage.FileName);

                var db = new EmerseDbEntities();
                var image = new Data.Image();
                image.name = txtImage.Text;
                image.category = Convert.ToInt32(dropDownList.SelectedValue);
                image.thumbnailUrl = "~/images/thumbnail/" + FileUploadImage.FileName;
                image.url = "~/images/image/" + FileUploadImage.FileName;
                image.createDate = DateTime.Now;

                db.Image.Add(image);
                db.SaveChanges();
                Response.Redirect("~/Admin/GalleryContent.aspx");
            }
        }

        public bool ThumbnailCallback()
        {
            return false;
        }
    }
}