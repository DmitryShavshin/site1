using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace FirstWebsiteDemo
{
    public partial class FormToUserData : System.Web.UI.Page
    {       
        List<User> users = new List<User>();
        DataEccessObject DAO = new DataEccessObject();

        User user = null;

        protected void Page_Load(object sender, EventArgs e)
        {
            //user = (User)Session["user"];
            //lblUserData.Text = user.Login + " " + user.Name + " " + user.Secondname + " " + user.Surename + " " + user.Password + " " + user.Email + " " + user.Phone;
        }

        protected void btnChangeLogin_Click(object sender, EventArgs e)
        {
           
           string newLogin = txtUserLogin.Text;
           DAO.changeLogin(newLogin, user);
                  
        }

        protected void btnUserName_Click(object sender, EventArgs e)
        {
            string newName = txtUserName.Text;
            DAO.changeName(newName, user);
        }

        protected void btnUserSecondName_Click(object sender, EventArgs e)
        {
            string newSecondName = txtUserSecondName.Text;
            DAO.changeSecondname(newSecondName, user);
        }

        protected void btnSurename_Click(object sender, EventArgs e)
        {
            string newSurename = txtUserSurename.Text;
            DAO.changeSurename(newSurename, user);
        }

        protected void btnuserGender_Click(object sender, EventArgs e)
        {
            string newGender = txtUserGender.Text;
            DAO.changeGender(newGender, user);
        }

        protected void btnUserPassword_Click(object sender, EventArgs e)
        {
            string newPasswordCheck = txtUserPasswordCheck.Text;
            string newPassword = txtUserPassword.Text;
            if (newPassword.Equals(newPasswordCheck) && !newPassword.Equals(user.Password))
            {
                DAO.changePassword(newPassword, user);
            }
        }

        protected void btnUserPhone_Click(object sender, EventArgs e)
        {
            string newPhone = txtUserPhone.Text;
            DAO.changePhone(newPhone, user);
        }

        protected void btnEmail_Click(object sender, EventArgs e)
        {
            string newEmail = txtUserEmail.Text;
            DAO.changeEmail(newEmail, user);
        }
    }
}