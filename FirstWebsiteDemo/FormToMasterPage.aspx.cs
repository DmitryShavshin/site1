using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using MySql.Data.MySqlClient;
using System.Data;

namespace FirstWebsiteDemo
{
    public partial class FormToMasterPage : System.Web.UI.Page
    {
        MySqlCommand cmd;
        List<News> news = new List<News>();
        DataEccessObject DAO = new DataEccessObject();
        int nextNewsNum, nextTitleNum, nextImgName;

        protected void Page_Load(object sender, EventArgs e)
        {
            User user = null;
            if (Session["user"] != null)
            {
                user = (User)Session["user"];               
                lblUser.Text = user.Name + " [" + user.Role + "]";             
            }
            if (!this.IsPostBack)
            {
                bindGrid();
            }
        }

        private void bindGrid()
        {
            DAO.openDB();
            cmd = new MySqlCommand("SELECT * FROM news", DAO.connect);
            MySqlDataAdapter sda = new MySqlDataAdapter();
            sda.SelectCommand = cmd;
            DataTable dt = new DataTable();
            sda.Fill(dt);
            gridNews.DataSource = dt;
            gridNews.DataBind();
            DAO.connect.Close();
        }
        protected void gridNews_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = gridNews.Rows[e.RowIndex];
            int currentId = int.Parse((row.FindControl("lblId") as Label).Text);
            //string title = ((row.FindControl("txtTitle") as TextBox).Text);
            string title = ((row.FindControl("txtTitle") as FileUpload).FileName);
            string news = ((row.FindControl("txtNews") as TextBox).Text);
            string img = ((row.FindControl("txtImg") as TextBox).Text);
            DAO.updateNews(currentId, title, news, img);
            gridNews.EditIndex = -1;
            bindGrid();
        }

        protected void gridNews_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int delId = 0;
            DAO.openDB();
            GridViewRow row = gridNews.Rows[e.RowIndex];
            delId = int.Parse((row.FindControl("lblId") as Label).Text);
            cmd = new MySqlCommand("DELETE FROM news WHERE id = @id", DAO.connect);
            cmd.Parameters.AddWithValue("@id", delId);
            cmd.ExecuteNonQuery();
            DAO.connect.Close();
            bindGrid();
        }

        protected void gridNews_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gridNews.EditIndex = e.NewEditIndex;
            bindGrid();
        }

        protected void gridNews_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gridNews.EditIndex = -1;
            bindGrid();
        }

        protected void btnLoad_Click(object sender, EventArgs e)
        {
            news = DAO.getNews();
            if (FileUpload1.PostedFile != null && FileUpload1.PostedFile.ContentLength > 0 && FileUpload2.PostedFile != null && FileUpload2.PostedFile.ContentLength > 0 && FileUpload3.PostedFile != null && FileUpload3.PostedFile.ContentLength > 0)
            {
                for (int i = 0; i < news.Count; i++)
                {
                    nextNewsNum = i + 1;
                    nextTitleNum = i + 1;
                    nextImgName = i + 1;
                }
                string pathFileNews = System.IO.Path.GetFileName(FileUpload1.PostedFile.FileName);
                string pathFileTitle = System.IO.Path.GetFileName(FileUpload2.PostedFile.FileName);
                string pathFileImg = System.IO.Path.GetFileName(FileUpload3.PostedFile.FileName);
                string locationNews = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "NewsFiles/News", "news" + nextNewsNum + ".txt");
                string locationTitle = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "NewsFiles/Titles", "NewsTitle" + nextTitleNum + ".txt");
                string locationImg = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "NewsFiles/Images", "img" + nextImgName + ".jpg");
                FileUpload1.PostedFile.SaveAs(locationNews);
                FileUpload2.PostedFile.SaveAs(locationTitle);
                FileUpload3.PostedFile.SaveAs(locationImg);
                DAO.saveNewsToTable("news" + nextNewsNum, "NewsTitle" + nextTitleNum, "img" +nextImgName);
            }
        }      
    }
}