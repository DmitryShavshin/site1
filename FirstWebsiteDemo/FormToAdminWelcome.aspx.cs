using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FirstWebsiteDemo
{
    public partial class FormToAdminWelcome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            User user = null;
            if (Session["user"] != null)
            {
                user = (User)Session["user"];
                lblWelcome.Text = user.Name + " [" + user.Role + "]";
            }
            
        }
    }
}