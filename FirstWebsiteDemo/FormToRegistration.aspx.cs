using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace FirstWebsiteDemo
{
    public partial class FormToRegistration : System.Web.UI.Page
    {

        public string login, pass, passCheck, name, secondName, surename, email, phone, gender, year, day, month;

        List<User> users = new List<User>();
        DataEccessObject DAO = new DataEccessObject();
        User user = null;
    
        public void checkLength(object sender, ServerValidateEventArgs args)
        {
            string content = args.Value;
            if (content.Length >= 5 && content.Length <= 15)
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            user = (User)Session["user"];
            if (user != null)
            {
                btnLogin.Visible = false;
                btnReg.Text = "Update";
                btnCancel.Visible = true;
            }            
        }

        private void readTextFields()
        {
            login = txtLogin.Text;
            pass = txtPass.Text;
            passCheck = txtCheckPass.Text;
            name = txtName.Text;
            secondName = txtSecondName.Text;
            surename = txtSurename.Text;
            year = Request.Form["DDListYear"];
            day =  Request.Form["DDListDay"];
            month = DDListMonth.Text;
            email = txtEmail.Text;
            phone = txtPhoneNumber.Text;
            switch (RBListGender.SelectedValue)
            {
                case "Male":
                    gender = "Male";
                    break;
                case "Female":
                    gender = "Female";
                    break;
            }
        }

        private void overwriteSession()
        {
            user.Login = login;
            user.Email = email;
            user.Password = pass;
            user.Gender = gender;
            user.Year = year;
            user.Day = day;
            user.Month = month;
            user.Name = name;
            user.Secondname = secondName;
            user.Surename = surename;
            user.Phone = phone;
        }

        private void addToTable()
        {
            string errorMessageEmail = "", errorMessageLogin = "";
            bool isAbsent = true;
            for (int i = 0; i < users.Count; i++)
            {
                if (email.Equals(users[i].Email))
                {
                    isAbsent = false;
                    errorMessageEmail = "Emaile is falce";
                    break;
                }
                if (login.Equals(users[i].Login))
                {
                    isAbsent = false;
                    errorMessageLogin = "Login is falce";
                    break;
                }
            }
            if (isAbsent)
            {
                DAO.saveToTable(login, pass, gender, year, day, month, name, secondName, surename, email, phone);
                Server.Transfer("FormToPageCreate.aspx");
            }
            else
            {
                lblCheckLogin.Text = errorMessageLogin;
                lblEmailIncorrect.Text = errorMessageEmail;
            }
        }

        private void updateUser()
        {
            string errorMessageEmail = "", errorMessageLogin = "";
            bool isAbsent = false;
            for (int i = 0; i < users.Count; i++)
            {
                if (user.Email.Equals(email) && !users[i].Email.Equals(email))
                {
                    isAbsent = true;
                    errorMessageEmail = "Emaile is falce";
                    break;
                }
                if (user.Login.Equals(login) && !users[i].Login.Equals(login))
                {
                    isAbsent = true;
                    errorMessageLogin = "Login is falce";
                    break;
                }
            }
            if (isAbsent)
            {
                overwriteSession();
                Session["user"] = user;
                DAO.updateUser(user.Id, login, pass, gender, year, day, month, name, secondName, surename, email, phone, user.Role);
                Server.Transfer("FormToMainPage.aspx");
            }
            else
            {
                lblCheckLogin.Text = errorMessageLogin;
                lblEmailIncorrect.Text = errorMessageEmail;
            }
        }

        protected void btnReg_Click(object sender, EventArgs e)
        {
            readTextFields();
            users = DAO.getUsers();
            if (Page.IsValid)
            {
                if (user == null)
                {
                    users = DAO.getUsers();
                    addToTable();
                }
                else
                {
                    updateUser();                   
                }
            }
        }

        protected void btnLogin_Click1(object sender, EventArgs e)
        {
            Server.Transfer("FormToAuthorization.aspx");
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Server.Transfer("FormToMainPage.aspx");
        }
    }
}