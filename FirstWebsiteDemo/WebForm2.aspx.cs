using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace FirstWebsiteDemo
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLoad_Click(object sender, EventArgs e)
        {
            //сохраняет если файл не пустой, и путь указан верно
            if (FileUpload1.PostedFile != null && FileUpload1.PostedFile.ContentLength > 0 && FileUpload2.PostedFile != null && FileUpload2.PostedFile.ContentLength > 0)
            {
                //получить реальный путь на диске клиента
                string pathFileText = System.IO.Path.GetFileName(FileUpload1.PostedFile.FileName);
                string pathFileImg = System.IO.Path.GetFileName(FileUpload2.PostedFile.FileName);
                //string location = Server.MapPath("NewsFiles" + "/" + pathFile);
                string locationText = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "NewsFiles", pathFileText);
                FileUpload1.PostedFile.SaveAs(locationText);
                string locationImg = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "NewsFiles", pathFileImg);
                FileUpload2.PostedFile.SaveAs(locationImg);
                Label1.Text = "File hawe been saved";
            }
        }
    }
}