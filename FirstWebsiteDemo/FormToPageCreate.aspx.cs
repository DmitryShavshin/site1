using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FirstWebsiteDemo
{
    public partial class FormToPageCreate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox tb = (TextBox)Page.PreviousPage.FindControl("txtLogin");
            lblYourLogin.Text = tb.Text;
        }
    }
}