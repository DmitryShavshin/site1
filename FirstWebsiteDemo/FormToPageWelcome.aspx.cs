using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FirstWebsiteDemo
{
    public partial class FormToPageWelcome : System.Web.UI.Page
    {
        string page = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            User user = (User)Session["user"];
            lblWelcome.Text = user.Name;
            switch (user.Role)
            {
                case "admin":
                    page = "FormToAdminWelcome.aspx";
                    break;
                case "master":
                    page = "FormToMasterWelcome.aspx";
                    break;
                case "user":
                    page = "FormToUserWelcome.aspx";
                    break;
            }
            Session["page"] = page;
        }
    }
}