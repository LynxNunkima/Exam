using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MasterApp.View
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["login"] = txtEmail.Text;
        }

        protected void btnREGISTER_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/View/Register.aspx");
        }

        protected void btnLOGIN_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-NS0KEKU\\SQLEXPRESS;Initial Catalog=PG1DB;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("sp_login2", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@email", txtEmail.Text);
            cmd.Parameters.AddWithValue("@password", txtPassword.Text);
            con.Open();
            int codereturn = (int)cmd.ExecuteScalar();
            //1 = ok, -2 = username empy, -3 = password empty
            if (codereturn == -1)
            {
                lblReport2.Text = "Username and password do not match!";
                txtEmail.Text = null;
                txtPassword = null;
            }
            else
            {
                Response.Redirect("~/View/Home.aspx");
            }
        }
    }
}