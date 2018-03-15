using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FirstWebsiteDemo
{
    public partial class FormToAuthorization : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        List<User> users = new List<User>();
        DataEccessObject DAO = new DataEccessObject();
        string login, pass;

        private void readTextFields()
        {
            login = txtLogin.Text;
            pass = txtPassword.Text;
        }

        private void checkUserLogin()
        {
            int numUser = -1;
            for (int i = 0; i < users.Count; i++)
            {
                if (login.Equals(users[i].Login) && pass.Equals(users[i].Password))
                {
                    numUser = i;
                    break;
                }
            }
            if (numUser != -1)
            {
                Session["user"] = users[numUser];
                User us = users[numUser];
                switch (us.Role)
                {
                    case "admin":
                        Server.Transfer("FormToAdminWelcome.aspx");
                        break;
                    case "master":
                        Server.Transfer("FormToMasterWelcome.aspx");
                        break;
                    case "user":
                        Server.Transfer("FormToUserWelcome.aspx");
                        break;
                }
            }
            else
            {
                lblUserIsAbsent.Text = "User is not exist";
            }
        }

        private void validation()
        {
            if (Page.IsValid)
            {
                checkUserLogin();
            }
        }
     
        protected void btnRegistration_Click(object sender, EventArgs e)
        {
            Server.Transfer("FormToRegistration.aspx");
        }

        protected void btnOk_Click(object sender, EventArgs e)
        {
            readTextFields();
            users = DAO.getUsers();
            validation();
        }
    }
}