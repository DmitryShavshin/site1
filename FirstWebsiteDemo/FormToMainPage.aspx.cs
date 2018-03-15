using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace FirstWebsiteDemo
{
    public partial class FormToMainPage : System.Web.UI.Page
    {

        DataEccessObject DAO = new DataEccessObject();
        User user = null;

        protected void Page_Load(object sender, EventArgs e)
        {           
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
            if (user == null)
            {
                btnExit.Text = "Login";
            }
           
        }

        void setVote()
        {
            if (user != null)
            {
                string vote = "";
                switch (rbVote.SelectedValue)
                {
                    case "Hot":
                        vote = "Hot";
                        break;
                    case "Not":
                        vote = "Not";
                        break;
                    case "Intel":
                        vote = "Intel";
                        break;
                    case "Ryzen":
                        vote = "Ryzen";
                        break;
                }
                DAO.setVote(vote);
                btnVote.Visible = false;
            }           
        }


        protected void btnExit_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Server.Transfer("FormToAuthorization.aspx");        
        }

        protected void btnChange_Click(object sender, EventArgs e)
        {
            Server.Transfer("FormToRegistration.aspx");
        }

        protected void btnVote_Click(object sender, EventArgs e)
        {
            setVote();
        }
    }
}