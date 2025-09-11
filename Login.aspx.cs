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
            getcon(); 
            string query = "SELECT COUNT(*) FROM Register WHERE First_Name = '" + First_Name.Text + "' AND Email='" + Email.Text + "' AND Password='" + Password.Text + "'";
            cmd = new SqlCommand(query, con);
            if (First_Name.Text == "Kishan" && Email.Text == "kparmar002@rku.ac.in" && Password.Text == "123")
            {
                Response.Redirect("AdminDashboard.aspx");
            }
           
            int count = (int)cmd.ExecuteScalar();

            if (count > 0)
            {
                Session["User"] = First_Name.Text;
                Response.Redirect("Home.aspx");

            }
            else
            {
                Response.Write("<script>alert('Invalid Credentials');</script>");
            }
           
            
            con.Close();
        }
    }

}
    