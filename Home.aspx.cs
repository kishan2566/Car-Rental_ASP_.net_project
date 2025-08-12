using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Configuration;

namespace car_rental_project
{
    public partial class WebForm1 : System.Web.UI.Page
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
            
            if (Button1.Text == "Book")
            {
                getcon();
                
                cmd = new SqlCommand("INSERT INTO bookings (car_name,pickup_location,dropoff_location,pickup_date,dropoff_date,pickup_time,dropoff_time) VALUES ('"+ddlcar.SelectedValue+"','"+txtpickup.Text+ "','"+txtdrop.Text+ "','"+txtDate1.Text+"','"+txtDate2.Text+"','"+ddltime1.SelectedValue+"','"+ddltime2.SelectedValue+"')", con);
                cmd.ExecuteNonQuery();
                
            }
        }
    }
}