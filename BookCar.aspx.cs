using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace car_rental_project
{
    public partial class BookCar : System.Web.UI.Page
    {
            String s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            SqlConnection con;
            SqlCommand cmd;
            SqlDataAdapter da;
            DataSet ds;
            int carId;
            decimal pricePerDay;

            protected void Page_Load(object sender, EventArgs e)
            {
            
                if (!IsPostBack)
                {
                    if (Request.QueryString["CarId"] != null)
                    {
                        carId = Convert.ToInt32(Request.QueryString["CarId"]);
                        LoadCarDetails(carId);
                    }
                string today = DateTime.Now.ToString("yyyy-MM-dd");
                txtStartDate.Attributes["min"] = today;
                txtEndDate.Attributes["min"] = today;
            }
            }

            void LoadCarDetails(int id)
            {
                con = new SqlConnection(s);
                da = new SqlDataAdapter("SELECT * FROM Cars WHERE Id=" + id, con);
                ds = new DataSet();
                da.Fill(ds);

                if (ds.Tables[0].Rows.Count > 0)
                {
                lblCarName.Text = "Car: " + ds.Tables[0].Rows[0]["Car_Name"].ToString();
                                     
                    lblCarPrice.Text = "Price per Day: $" + ds.Tables[0].Rows[0]["Car_Price"].ToString();

                    pricePerDay = Convert.ToDecimal(ds.Tables[0].Rows[0]["Car_Price"]);
                    ViewState["PricePerDay"] = pricePerDay;
                    ViewState["CarId"] = id;
                }
            }

            protected void btnBook_Click(object sender, EventArgs e)
            {
                carId = Convert.ToInt32(ViewState["CarId"]);
                pricePerDay = Convert.ToDecimal(ViewState["PricePerDay"]);

                DateTime startDate = Convert.ToDateTime(txtStartDate.Text);
                DateTime endDate = Convert.ToDateTime(txtEndDate.Text);
                int totalDays = (endDate - startDate).Days + 1;
                decimal totalPrice = totalDays * pricePerDay;

                con = new SqlConnection(s);
                con.Open();
            cmd = new SqlCommand("INSERT INTO Booking (CarId, UserName, UserEmail, StartDate, EndDate, TotalPrice) " +
                                 "VALUES ('" + carId + "', '" + txtName.Text + "', '" + txtEmail.Text + "', '" + startDate + "', '" + endDate + "', '" + totalPrice + "')",
                                 con);


                cmd.ExecuteNonQuery();
                con.Close();

                lblMessage.Text = "Booking Confirmed! Total Price: $" + totalPrice;
            }
        }
    }
