using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;
using System.Data;

namespace FirstWebsiteDemo
{
    public class DataEccessObject
    {     
        string server = "localhost";
        string dataBase = "simplewebregistrationform";
        string userName = "root";
        //string password = "klan301270";
        string password = "ROOT0920x";
        string connectionString;
        string query;

        public  MySqlConnection connect;
        public  MySqlCommand cmd;

        public void openDB()
        {
            connectionString = "SERVER=" + server + ";" + "DATABASE=" + dataBase + ";" +
                                    "USERNAME=" + userName + ";" + "PASSWORD=" + password + ";";
            connect = new MySqlConnection(connectionString);
            cmd = new MySqlCommand(query, connect);
            connect.Open();
        }

        List<News> news = new List<News>();
        List<User> users = new List<User>();
        SimpleWeb sw = new SimpleWeb();

        public List<User> getUsers()
        {
            var user = from u in sw.Users select new { id = u.ID, login = u.Login, pass = u.Password, gender = u.Gender, year = u.Year, day = u.Day, month = u.Month,
                                                                name = u.Name, secondname = u. SecondName, surename = u.SureName, emaile = u.Email, phone = u.Phone, role = u.Role};
            foreach (var u in user)
            {
                users.Add(new User(u.id, u.login, u.pass, u.gender, u.year, u.day, u.month, u.name, u.secondname, u.surename, u.emaile, u.phone, u.role));
            }
            return users;
        }

        public List<News> getNews()
        {
            var readNews = from n in sw.News select new { id = n.ID, title = n.Title, news = n.News1, img = n.IMg };
            foreach (var n in readNews)
            {
                news.Add(new News(n.id, n.title, n.news, n.img));
            }
            return news;
        }

        public void setVote(string vote)
        {
            query = "INSERT INTO vote(vote) VALUES(@vote)";
            openDB();
            cmd.Parameters.AddWithValue("@vote", vote);
            cmd.ExecuteScalar();
            connect.Close();
        }

        //public void vote(string hot, string not, string intel, string ryzen)
        //{
        //    query = "INSERT INTO vote(hot, not, intel, ryzen) VALUES(@hot, @not, @intel, @ryzen)";
        //    openDB();
        //    cmd.Parameters.AddWithValue("@hot", hot);
        //    cmd.Parameters.AddWithValue("@not", not);
        //    cmd.Parameters.AddWithValue("@intel", intel);
        //    cmd.Parameters.AddWithValue("@ryzen", ryzen);
        //    cmd.ExecuteScalar();
        //    connect.Close();
        //}

        public void saveToTable(string login, string pass, string gender, string year, string day, string month, string name, string secondname, string surename, string email, string phone)
        {
            query = "INSERT INTO users(login, password, gender, year, day, month, name, secondname, surename, email, phone, role) " +
                        "VALUES(@login, @password, @gender, @year, @day, @month, @name, @secondname, @surename, @email, @phone, @role) ";
            openDB();
            cmd.Parameters.AddWithValue("@login", login);
            cmd.Parameters.AddWithValue("@password", pass);
            cmd.Parameters.AddWithValue("@gender", gender);
            cmd.Parameters.AddWithValue("@year", year);
            cmd.Parameters.AddWithValue("@day", day);
            cmd.Parameters.AddWithValue("@month", month);
            cmd.Parameters.AddWithValue("@name", name);
            cmd.Parameters.AddWithValue("@secondname", secondname);
            cmd.Parameters.AddWithValue("@surename", surename);
            cmd.Parameters.AddWithValue("@email", email);
            cmd.Parameters.AddWithValue("@phone", phone);
            cmd.Parameters.AddWithValue("@role", "user");
            cmd.ExecuteNonQuery();
            connect.Close();
        }

        public void updateUser(int id, string login, string pass, string gender, string year, string day, string month, string name, string secondname, string surename, string email, string phone, string role)
        {
            openDB();
            cmd = new MySqlCommand("UPDATE users SET login = @login, password = @password, gender = @gender, year = @year, day = @day, month = @month, name = @name, " +
                    "secondname = @secondname, surename = @surename, email = @email, phone = @phone, role = @role WHERE id = @id", connect); ;
            cmd.Parameters.AddWithValue("@id", id);
            cmd.Parameters.AddWithValue("@login", login);
            cmd.Parameters.AddWithValue("@password", pass);
            cmd.Parameters.AddWithValue("@gender", gender);
            cmd.Parameters.AddWithValue("@year", year);
            cmd.Parameters.AddWithValue("@day", day);
            cmd.Parameters.AddWithValue("@month", month);
            cmd.Parameters.AddWithValue("@name", name);
            cmd.Parameters.AddWithValue("@secondname", secondname);
            cmd.Parameters.AddWithValue("@surename", surename);
            cmd.Parameters.AddWithValue("@email", email);
            cmd.Parameters.AddWithValue("@phone", phone);
            cmd.Parameters.AddWithValue("@role", role);
            cmd.ExecuteNonQuery();
            connect.Close();
        }      

        public void updateNews(int id, string title, string news, string img)
        {
            openDB();
            cmd = new MySqlCommand("UPDATE news SET title = @title, news = @news, img = @img WHERE id = @id", connect);
            cmd.Parameters.AddWithValue("@id", id);
            cmd.Parameters.AddWithValue("@title", title);
            cmd.Parameters.AddWithValue("@news", news);
            cmd.Parameters.AddWithValue("@img", img);
            cmd.ExecuteNonQuery();
            connect.Close();
        }
        
        public void saveNewsToTable(string news, string title, string img)
        {
            query = "INSERT INTO news (title, news, img) VALUES (@title, @news, @img)";
            openDB();
            cmd.Parameters.AddWithValue("@title", title);
            cmd.Parameters.AddWithValue("@news", news);
            cmd.Parameters.AddWithValue("@img", img);
            cmd.ExecuteScalar();
            connect.Close();
        }

        //public void changeLogin(string login, User user)
        //{
        //    query = "UPDATE registration SET login = @login WHERE registration.id = @id";
        //    openDB();
        //    cmd.Parameters.AddWithValue("@login", login);
        //    cmd.Parameters.AddWithValue("@id", user.Id);
        //    cmd.ExecuteScalar();
        //    connect.Close();
        //}
        //public void changePassword(string password, User user)
        //{
        //    query = "UPDATE registration SET password = @password WHERE registration.id = @id";
        //    openDB();
        //    cmd.Parameters.AddWithValue("@password", password);
        //    cmd.Parameters.AddWithValue("@id", user.Id);
        //    cmd.ExecuteScalar();
        //    connect.Close();
        //}
        //public void changeGender(string gender, User user)
        //{
        //    query = "UPDATE registration SET gender = @gender WHERE registration.id = @id";
        //    openDB();
        //    cmd.Parameters.AddWithValue("@gender", gender);
        //    cmd.Parameters.AddWithValue("@id", user.Id);
        //    cmd.ExecuteScalar();
        //    connect.Close();
        //}
        //public void changeName(string name, User user)
        //{
        //    query = "UPDATE registration SET name = @name WHERE registration.id = @id";
        //    openDB();
        //    cmd.Parameters.AddWithValue("@name", name);
        //    cmd.Parameters.AddWithValue("@id", user.Id);
        //    cmd.ExecuteScalar();
        //    connect.Close();
        //}
        //public void changeSecondname(string secondname, User user)
        //{
        //    query = "UPDATE registration SET secondname = @secondname WHERE registration.id = @id";
        //    openDB();
        //    cmd.Parameters.AddWithValue("@secondname", secondname);
        //    cmd.Parameters.AddWithValue("@id", user.Id);
        //    cmd.ExecuteScalar();
        //    connect.Close();
        //}
        //public void changeSurename(string surename, User user)
        //{
        //    query = "UPDATE registration SET surename = @surename WHERE registration.id = @id";
        //    openDB();
        //    cmd.Parameters.AddWithValue("@surename", surename);
        //    cmd.Parameters.AddWithValue("@id", user.Id);
        //    cmd.ExecuteScalar();
        //    connect.Close();
        //}
        //public void changeEmail(string email, User user)
        //{
        //    query = "UPDATE registration SET email = @email WHERE registration.id = @id";
        //    openDB();
        //    cmd.Parameters.AddWithValue("@email", email);
        //    cmd.Parameters.AddWithValue("@id", user.Id);
        //    cmd.ExecuteScalar();
        //    connect.Close();
        //}
        //public void changePhone(string phone, User user)
        //{
        //    query = "UPDATE registration SET phone = @phone WHERE registration.id = @id";
        //    openDB();
        //    cmd.Parameters.AddWithValue("@phone", phone);
        //    cmd.Parameters.AddWithValue("@id", user.Id);
        //    cmd.ExecuteScalar();
        //    connect.Close();
        //}
    }
}