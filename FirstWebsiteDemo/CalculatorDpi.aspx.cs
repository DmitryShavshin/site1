using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace FirstWebsiteDemo
{
    public partial class CalculatorDpi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string res = "";
            string line;
            string fullPath = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "", "Resolution.txt");
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
            string fullPath = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "", "Resolution.html");
            StreamWriter sw = new StreamWriter(fullPath);
            sw.WriteLine("<!DOCTYPE html>");
            sw.WriteLine("<html><head><title></title><meta charset='utf-8'/>");
            sw.WriteLine("<link rel='stylesheet' href='CSS/NewStyle.css'>");
            sw.WriteLine("</head>");
            sw.WriteLine("<body>");
            sw.WriteLine(res);
            sw.WriteLine("</body>");
            sw.WriteLine("</html>");
            sw.Close();
        }

        private void readMonitorParam()
        {
            double ResolutionWidths = int.Parse(txtWidth.Text);
            double ResolutionHeight = int.Parse(txtHeigth.Text);
            double diagonal = int.Parse(txtDiagonal.Text);
            double dpi = ResolutionHeight / getHeight(diagonal, ResolutionWidths, ResolutionHeight);
            lblResolution.Text = ResolutionWidths + "x" + ResolutionHeight;
            lblRes.Text = dpi + "";
        }

        private double getHeight(double d, double rw, double rh)
        {
            return (double)Math.Sqrt((d * d) / (1 + (rw * rw) / (rh * rh)));
        }

        protected void btnCalc_Click(object sender, EventArgs e)
        {
            if (ReqValidDiagonal.IsValid && ReqValidHeight.IsValid && ReqValidWidths.IsValid 
                   /*RegExprValidDiagonal.IsValid && RegExprValidHeight.IsValid && RegExprValidWidths.IsValid*/)
            {
                readMonitorParam();
            }
        }
    }
}