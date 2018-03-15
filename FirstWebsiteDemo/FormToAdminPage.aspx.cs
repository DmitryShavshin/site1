using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

namespace FirstWebsiteDemo
{
    public partial class FormToAdminPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            User user = null;
            if (Session["user"] != null)
            {
                user = (User)Session["user"];
                lblUser.Text = user.Name + " [" + user.Role + "]";     
            }
            if (!this.IsPostBack)
            {
                BindGrid();
            }
        }

        DataEccessObject DAO = new DataEccessObject();
        MySqlCommand cmd;

        private void BindGrid()
        {
            DAO.openDB();
            cmd = new MySqlCommand("SELECT * FROM users", DAO.connect);
            MySqlDataAdapter sda = new MySqlDataAdapter();
            sda.SelectCommand = cmd;
            DataTable dt = new DataTable();
            sda.Fill(dt);
            gridUsers.DataSource = dt;
            gridUsers.DataBind();
            DAO.connect.Close();
        }

        protected void gridUsers_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int delId = 0;
            DAO.openDB();
            GridViewRow row = gridUsers.Rows[e.RowIndex];
            delId = int.Parse((row.FindControl("lblId") as Label).Text);
            cmd = new MySqlCommand("DELETE FROM users WHERE id = @id", DAO.connect);
            cmd.Parameters.AddWithValue("@id", delId);
            cmd.ExecuteNonQuery();
            DAO.connect.Close();
            BindGrid();
        }

        protected void gridUsers_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
           
            GridViewRow row = gridUsers.Rows[e.RowIndex];
            int currentId = int.Parse((row.FindControl("lblId") as Label).Text);
            string login = ((row.FindControl("txtLogin") as TextBox).Text);
            string pass = ((row.FindControl("txtPassword") as TextBox).Text);
            string gender = ((row.FindControl("txtGender") as TextBox).Text);
            string year = ((row.FindControl("txtYear") as TextBox).Text);
            string day = ((row.FindControl("txtDay") as TextBox).Text);
            string month = ((row.FindControl("txtMonth") as TextBox).Text);
            string name = ((row.FindControl("txtName") as TextBox).Text);
            string secondname = ((row.FindControl("txtSecondname") as TextBox).Text);
            string surename = ((row.FindControl("txtSurename") as TextBox).Text);
            string phone = ((row.FindControl("txtPhone") as TextBox).Text);
            string role = ((row.FindControl("txtRole") as TextBox).Text);
            string email = ((row.FindControl("txtEmail") as TextBox).Text);
            DAO.updateUser(currentId, login, pass, gender, year, day, month, name, secondname, surename, email, phone, role);
            gridUsers.EditIndex = -1;
            BindGrid();
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string login = txtLogin.Text;
                string pass = txtPassword.Text;
                string gender = txtGender.Text;
                string year = txtYear.Text;
                string day = txtDay.Text;
                string month = txtMonth.Text;
                string name = txtName.Text;
                string secondname = txtSecondName.Text;
                string surename = txtSurename.Text;
                string email = txtEmail.Text;
                string phone = txtPhone.Text;
                DAO.saveToTable(login, pass, gender, year, day, month, name, secondname, surename, email, phone);
                BindGrid();
            }
        }

        protected void gridUsers_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gridUsers.EditIndex = e.NewEditIndex;
            BindGrid();
        }

        protected void gridUsers_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gridUsers.EditIndex = -1;
            BindGrid();
        }

       
    }
}