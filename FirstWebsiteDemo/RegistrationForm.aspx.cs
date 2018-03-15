using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace FirstWebsiteDemo
{
    public partial class RegistrationForm : System.Web.UI.Page
    {
        string login, pass, passCheck, name, secondName, surename, email, phone;
        string gender, year, day, month;
        string server = "localhost";
        string dataBase = "simplewebregistrationform";
        string userName = "root";
        //string password = "klan301270";
        string password = "ROOT0920x";
        string connectionString;

        string query;

        MySqlConnection connect;
        MySqlCommand myCommand;
      
        List<Users> users = new List<Users>();
        DataEccessObject DAO = new DataEccessObject();

        public void openDB()
        {
            connectionString = "SERVER=" + server + ";" + "DATABASE=" + dataBase + ";" +
                                    "USERNAME=" + userName + ";" + "PASSWORD=" + password + ";";
            connect = new MySqlConnection(connectionString);
            myCommand = new MySqlCommand(query, connect);
            connect.Open();
        }      

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

        }

        private void readTextFields()
        {
            login = txtLogin.Text;
            pass = txtPass.Text;
            passCheck = txtCheckPass.Text;
            name = txtName.Text;
            secondName = txtSecondName.Text;
            surename = txtSurename.Text;
            year = DDListYear.Text;
            day = DDListDay.Text;
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

        private void saveToTable()
        {
            query = "INSERT INTO registration(login, password, gender, year, day, month, name, secondname, surename, email, phone) " +
                        "VALUES(@login, @password, @gender, @year, @day, @month, @name, @secondname, @surename, @email, @phone) ";
            openDB();
            myCommand.Parameters.AddWithValue("@login", login);
            myCommand.Parameters.AddWithValue("@password", pass);
            myCommand.Parameters.AddWithValue("@gender", gender);
            myCommand.Parameters.AddWithValue("@year", year);
            myCommand.Parameters.AddWithValue("@day", day);
            myCommand.Parameters.AddWithValue("@month", month);
            myCommand.Parameters.AddWithValue("@name", name);
            myCommand.Parameters.AddWithValue("@secondname", secondName);
            myCommand.Parameters.AddWithValue("@surename", surename);
            myCommand.Parameters.AddWithValue("@email", email);
            myCommand.Parameters.AddWithValue("@phone", phone);
            myCommand.ExecuteScalar();
            connect.Close();
        }

        private void checkEmail(List<Users> user)
        {          
            bool isAbsent = true;
            string errorMessageEmail = "", errorMessageLogin = "";
            for (int i = 0; i < user.Count; i++)
            {
                if (email.Equals(user[i].Email))
                {
                    isAbsent = false;
                    errorMessageEmail = "Emaile is falce";
                    break;
                }
                if (login.Equals(user[i].Login))
                {
                    isAbsent = false;
                    errorMessageLogin = "Login is falce";
                    break;
                }
            }         
            if (isAbsent)
            {
                saveToTable();
                Server.Transfer("WelcomePage.aspx");
            }
            else
            {
                lblCheckLogin.Text = errorMessageLogin;
                lblEmailIncorrect.Text = errorMessageEmail;
            }
        }

        private void validation()
        {
            if (ReqValidLogin.IsValid && ReqValidEmail.IsValid && ReqValidPass.IsValid && ReqValidCheckPass.IsValid &&
                    ReqValidName.IsValid && ReqValidSecondName.IsValid && ReqValidSurename.IsValid && ReqValidPhone.IsValid &&
                        CustValidLogin.IsValid && CustValidPass.IsValid && CustValidCheckPass.IsValid &&
                            CompValidPass.IsValid && CompValidName.IsValid && CompValidSecondName.IsValid && CompValidSurename.IsValid &&
                                RegExprValidEmail.IsValid && RegExprValidPhone.IsValid)
            {
                checkEmail(users);
            }
        }

        protected void btnReg_Click1(object sender, EventArgs e)
        {
            readTextFields();
            users = DAO.getUsers();
            validation();
        }
    }
}