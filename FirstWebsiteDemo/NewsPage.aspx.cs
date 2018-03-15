using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace FirstWebsiteDemo
{
    public partial class NewsPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string res = "";
            string line;
            string fullPath = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "NewsFiles", "news.txt");
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
            createPageNews(res);
        }

        private void createPageNews(string res)
        {
            string fullPath = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "", "news.html");
            StreamWriter sw = new StreamWriter(fullPath);
            sw.WriteLine("<!DOCTYPE html>");
            sw.WriteLine("<html><head><title></title><meta charset='utf-8'/>");
            sw.WriteLine("<link rel='stylesheet' href='CSS/NewStyle.css'>");
            sw.WriteLine("</head>");
            sw.WriteLine("<body>");
            sw.WriteLine(res);
            sw.WriteLine("<img src='NewsFiles/appleona.jpg'>");
            sw.WriteLine("</body>");
            sw.WriteLine("</html>");
            sw.Close();
        }
    }
}