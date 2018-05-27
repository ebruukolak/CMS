using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EmerseWebSite.Data;

namespace ProjectEmerse.Admin
{
    public partial class ContentAdmin : System.Web.UI.Page
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
            var contents = db.Content.OrderByDescending(c => c.createDate).ToList();

            Grid.DataSource = contents;
            Grid.DataBind();
        }


        protected void imgEdit_OnClick(object sender, ImageClickEventArgs e)
        {
            ImageButton btn = sender as ImageButton;
            GridViewRow row = btn.NamingContainer as GridViewRow;
            HiddenField field = row.FindControl("lblHiddenField") as HiddenField;
            string val = field.Value;
            Response.Redirect("ContentUpdate.aspx?ID=" + val);
        }

        protected void imgDelete_OnClick(object sender, ImageClickEventArgs e)
        {

            ImageButton btn = sender as ImageButton;
            GridViewRow row = btn.NamingContainer as GridViewRow;
            HiddenField field = row.FindControl("lblHiddenField") as HiddenField;
            string val = field.Value;
            EmerseDbEntities db = new EmerseDbEntities();
            int id = Convert.ToInt32(val);

            var removeRecord = db.Content.Find(id);
            removeRecord.deleted = true;
            db.SaveChanges();
            Grid.DataBind();
            Response.Redirect("ContentAdmin.aspx");
        }

        protected void btnImageInsert_OnClick(object sender, EventArgs e)
        {
            Response.Redirect("ContentInsert.aspx");
        }

        protected void GridView1_OnPageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            Grid.PageIndex = e.NewPageIndex;
            DataList();
        }

        protected void GridView1_OnRowDataBound(object sender, GridViewRowEventArgs e)
        {

            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                if (e.Row.Cells[2].Text.ToString().Length > 100)
                {
                    e.Row.Cells[2].Text = e.Row.Cells[2].Text.ToString().Substring(0, 100) + "...";
                }
            }
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