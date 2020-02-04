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
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                refreshdata();
            }

        }
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-NS0KEKU\\SQLEXPRESS;Initial Catalog=PG1DB;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("select * from Student where s_course like @s_course + '%'", con);
            cmd.Parameters.AddWithValue("@s_course", txtSearch.Text.Trim());
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void btnAll_Click(object sender, EventArgs e)
        {
            refreshdata();
        }

        public void refreshdata()
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-NS0KEKU\\SQLEXPRESS;Initial Catalog=PG1DB;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("select * from Student", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill( dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();


        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            //DELETE WITH STORED PROCEDURE

            SqlConnection con = new SqlConnection("Data Source=DESKTOP-NS0KEKU\\SQLEXPRESS;Initial Catalog=PG1DB;Integrated Security=True");
            int id = Convert.ToInt16(GridView1.DataKeys[e.RowIndex].Values["id"].ToString());
            con.Open();
            SqlCommand cmd = new SqlCommand("sp_deletedata", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("id", id);

            int i = cmd.ExecuteNonQuery();
            con.Close();
            GridView1.EditIndex = -1;
            refreshdata();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            refreshdata();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            refreshdata();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

            //UPDATE WITH STORED PROCEDURE
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-NS0KEKU\\SQLEXPRESS;Initial Catalog=PG1DB;Integrated Security=True");

            TextBox txtName = GridView1.Rows[e.RowIndex].FindControl("txtBoxName") as TextBox;
            TextBox txtAge = GridView1.Rows[e.RowIndex].FindControl("txtBoxAge") as TextBox;
            TextBox txtRoll = GridView1.Rows[e.RowIndex].FindControl("txtBoxRoll") as TextBox;
            TextBox txtCourse = GridView1.Rows[e.RowIndex].FindControl("txtBoxCourse") as TextBox;
            TextBox txtAddress = GridView1.Rows[e.RowIndex].FindControl("txtBoxAddress") as TextBox;
            int id = Convert.ToInt16(GridView1.DataKeys[e.RowIndex].Values["id"].ToString());
            con.Open();
            SqlCommand cmd = new SqlCommand("sp_updatedata", con);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("s_name", txtName.Text);
            cmd.Parameters.AddWithValue("s_age", txtAge.Text);
            cmd.Parameters.AddWithValue("s_roll", txtRoll.Text);
            cmd.Parameters.AddWithValue("s_course", txtCourse.Text);
            cmd.Parameters.AddWithValue("s_address", txtAddress.Text);
            cmd.Parameters.AddWithValue("id", id);

            int i = cmd.ExecuteNonQuery();
            con.Close();
            GridView1.EditIndex = -1;
            refreshdata();


        }
    }
}