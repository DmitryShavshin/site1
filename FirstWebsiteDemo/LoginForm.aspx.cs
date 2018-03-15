using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace FirstWebsiteDemo
{
    public partial class LoginForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        List<Users> users = new List<Users>();
        DataEccessObject DAO = new DataEccessObject();
        string login, pass;      

        private void readTextFields()
        {
            login = txtLogin.Text;
            pass = txtPassword.Text;
        }       

        private void checkUserLogin(List<Users> user)
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
                Server.Transfer("PageGreeting.aspx");
            }
            else
            {
                lblUserIsAbsent.Text = "User is not exist";
            }
        }

        private void validation()
        {
            if (RequiredLogin.IsValid && RequiredPass.IsValid)
            {
                checkUserLogin(users);
            }
        }

        protected void btnOk_Click(object sender, EventArgs e)
        {
            readTextFields();
            users = DAO.getUsers();
            validation();
        }
    }
}