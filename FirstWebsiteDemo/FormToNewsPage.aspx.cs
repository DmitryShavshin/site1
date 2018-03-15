using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace FirstWebsiteDemo
{
    public partial class FormToNewsPage : System.Web.UI.Page
    {
        DataEccessObject DAO = new DataEccessObject();
        List<News> news = new List<News>();

        protected void Page_Load(object sender, EventArgs e)
        {
            User user = null;
            if (Session["user"] != null)
            {
                user = (User)Session["user"];
                if (user.Role.Equals("admin") || user.Role.Equals("master"))
                {
                    lblUser.Text = user.Name + " [" + user.Role + "]";
                }
                else
                {
                    lblUser.Text = user.Name;
                }
            }
            news = DAO.getNews();
            for (int i = 0; i < news.Count ; i++)
            {                
                readNews(news[i].NewsName + ".html", news[i].NewsName + ".txt", news[i].Img + ".jpg");
                readTitle(news[i].Title + ".html", news[i].Title + ".txt", news[i].Img + ".jpg", news[i].NewsName + ".html");
            }
            if (user == null)
            {
                btnExit.Text = "Login";
            }
        }

        public void readNews(string namePage, string nameNews, string nameImg)
        {
            string res = "";
            string line;
            string fullPath = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "NewsFiles/News", nameNews);
            StreamReader sr = new StreamReader(fullPath);
            line = sr.ReadLine();
            int nLine = 0;
            while (line != null)
            {
                if (nLine % 2 == 0)
                {
                    res += "<p class='even'>" + line + "</p>";
                }
                else
                {
                    res += "<p class='odd'>" + line + "</p>";
                }
                line = sr.ReadLine();
                nLine++;
            }
            createPage(res, namePage, nameImg);
        }

        private void createPage(string res, string namePage, string nameImg)
        {
            string fullPath = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "", namePage);
            StreamWriter sw = new StreamWriter(fullPath);
            sw.WriteLine("<!DOCTYPE html>");
            sw.WriteLine("<html><head><title>");
            sw.WriteLine(namePage.ToString());
            sw.WriteLine("</title><meta charset='utf-8'/>");
            sw.WriteLine("<link type='text/css' href='CSS/StyleForNewsPage.css' rel='stylesheet'>");
            sw.WriteLine("<style type='text/css'>");
            sw.WriteLine("</style>");
            sw.WriteLine("</head>");
            sw.WriteLine("<body>");
            sw.WriteLine("<div class='content'>");
            sw.WriteLine("<div class='conteiner'>");
            sw.WriteLine("<div class='img1'>");
            sw.WriteLine("<img src = 'NewsFiles/Images/" + nameImg + "' style='height: 300px; width: 600px'/>");
            //sw.WriteLine("<img src = 'NewsFiles/Images/img2.jpg' style='height: 300px; width: 600px'/>");
            sw.WriteLine("</div>");
            sw.WriteLine(res);         
            sw.WriteLine("</div>");
            sw.WriteLine("</div>");
            sw.WriteLine("</body>");
            sw.WriteLine("</html>");
            sw.Close();
        }

        public void readTitle(string namePage, string nameTitle, string nameImg, string nameNews)
        {
            string res = "";
            string line;
            int nLine = 0;
            string fullPath = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "NewsFiles/Titles", nameTitle);
            StreamReader sr = new StreamReader(fullPath);
            line = sr.ReadLine();
            while (nLine != 3)
            {
                if (nLine % 2 == 0)
                {
                    res += "<p class='even'>" + line + "</p>";
                }
                else
                {
                    res += "<p class='odd'>" + line + "</p>";
                }
                line = sr.ReadLine();
                nLine++;
            }
            createPageTitle(res, namePage, nameImg, nameNews);
        }
        private void createPageTitle(string res, string namePage, string nameImg, string nameNews)
        {
            string fullPath = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "", namePage);
            StreamWriter sw = new StreamWriter(fullPath);
            sw.WriteLine("<!DOCTYPE html>");
            sw.WriteLine("<html><head><title>");
            sw.WriteLine("</title><meta charset='utf-8'/>");
            sw.WriteLine("<link rel='stylesheet' href='CSS/NewStyle.css'>");
            sw.WriteLine("<style type='text / css'>");
            sw.WriteLine("</style>");
            sw.WriteLine("</head>");
            sw.WriteLine("<body>");
            sw.WriteLine("<div class='conteiner'>");
            sw.WriteLine("<div class='img1'>");
            sw.WriteLine("<a href='" + nameNews + "'target='_blank'><img src = 'NewsFiles/Images/" + nameImg + "' style='height: 94px; width: 200px'/>");
            //sw.WriteLine("<a href='" + nameNews + "'target='_blank'><img src = 'NewsFiles/Images/img2.jpg' style='height: 94px; width: 200px'/>");
            sw.WriteLine("</div>");
            sw.WriteLine(res);
            sw.WriteLine("</div></a>");
            sw.WriteLine("</body>");
            sw.WriteLine("</html>");
            sw.Close();
        }

        protected void btnExit_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Server.Transfer("FormToAuthorization.aspx");
        }

    }
}