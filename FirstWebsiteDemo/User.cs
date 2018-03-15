using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FirstWebsiteDemo
{
    public class User
    {
        public int Id { get; set; }
        public string Login { get; set; }
        public string Password { get; set; }
        public string Gender { get; set; }
        public string Year { get; set; }
        public string Day { get; set; }
        public string Month { get; set; }
        public string Name { get; set; }
        public string Secondname { get; set; }
        public string Surename { get; set; }
        public string Email { get; set; }
        public string Phone { get; set; }
        public string Role { get; set; }

        public User(int id, string login, string password, string gender, string year, string day,
                        string month, string name, string secondname, string surename, string email, string phone, string role)
        {
            this.Id = id;
            this.Login = login;
            this.Password = password;
            this.Gender = gender;
            this.Year = year;
            this.Day = day;
            this.Month = month;
            this.Name = name;
            this.Secondname = secondname;
            this.Surename = surename;
            this.Email = email;
            this.Phone = phone;
            this.Role = role;
        }
    }
}