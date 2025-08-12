using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace car_rental_project
{
    public partial class Login : System.Web.UI.Page
    {
        String s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
        }
        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Button1.Text == "Register")
            {
                getcon();

                cmd = new SqlCommand("INSERT INTO Register (First_Name,Last_Name,Email,Password) VALUES ('" + First_Name.Text + "','" + Last_Name.Text + "','" + Email.Text + "','" + Password.Text + "')", con);
                cmd.ExecuteNonQuery();

            }
        }
    }
}