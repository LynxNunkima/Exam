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
    public partial class AddStudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-NS0KEKU\\SQLEXPRESS;Initial Catalog=PG1DB;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("sp_register", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@s_name", txtName.Text);
            cmd.Parameters.AddWithValue("@s_age", txtAge.Text);
            cmd.Parameters.AddWithValue("@s_roll", txtRoll.Text);
            cmd.Parameters.AddWithValue("@s_course", ddlCourse.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@s_address", txtAddress.Text);
            con.Open();
            int codereturn = (int)cmd.ExecuteScalar();
            if (codereturn == -1)
            {
                lblReport.Text = "Same roll number cannot exists!";

            }
            else
            {
                Response.Redirect("~/View/AddStudent.aspx");
            }
        }
    }
}