using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MasterApp.View
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
                lblLogin.Text = Session["login"].ToString();//just display user name in label
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            //Session.Abandon();
            //Session.Clear();
            //Response.Cookies.Clear();
            //Session["login"] = null;
            Response.Redirect("~/View/Login.aspx");

            
            //if (Session["login"] == null)
            //{
            //    Response.Redirect("~/View/Login.aspx");
            //}

            ////Response.Redirect("~/View/Login.aspx");
            //string strScript = "<script>";
            //strScript += "alert('Logout Successful!');";
            //strScript += "window.location='Login.aspx';";
            //strScript += "</script>";
            //Page.ClientScript.RegisterStartupScript(this.GetType(), "strScript", strScript);
        }
    }
}