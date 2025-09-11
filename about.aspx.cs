using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Configuration;
using System.Data;

namespace car_rental_project
{
    public partial class about : System.Web.UI.Page
    {
        String s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
            if (Session["User"] == null)
            {



            }
            else
            {
                Label1.Text = Session["User"].ToString();

            }
            if (!IsPostBack)
            {
                if (Session["User"] == null)
                {
                    Login.Visible = true;
                    Logout.Visible = false;
                }
                else
                {
                    Login.Visible = false;
                    Logout.Visible = true;

                }
            }
        }
        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }
        protected void Logout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }

        protected void Login_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}