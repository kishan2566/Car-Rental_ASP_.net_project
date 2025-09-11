using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace car_rental_project
{
    public partial class Cars : System.Web.UI.Page
    {
        String s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        PagedDataSource pg = new PagedDataSource();
        int row, p;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ViewState["id"] = 0;
                BindCars();
               
            }
            getcon();
            
            if (Session["User"] == null)
            {
                Response.Write("<script>alert('You are not logged in. Please log in to see and book cars');</script>");
                Response.Write("<script>window.location='Login.aspx';</script>");

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
       
        void BindCars()
        {
            con = new SqlConnection(s);
            da = new SqlDataAdapter("SELECT * FROM Cars", con);
            ds = new DataSet();
            da.Fill(ds);

            row = ds.Tables[0].Rows.Count;
            pg.DataSource = ds.Tables[0].DefaultView;
            pg.AllowPaging = true;
            pg.PageSize = 6;
            pg.CurrentPageIndex = Convert.ToInt32(ViewState["id"]);

            rptCars.DataSource = pg;
            rptCars.DataBind();
        }

        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }
        protected void btnCommonCars_Click(object sender, EventArgs e)
        {
            
        }

        protected void btnPremiumCars_Click(object sender, EventArgs e)
        {
            
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            

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
       

       
        protected void lnkPrev_Click(object sender, EventArgs e) // Previous
        {
            p = Convert.ToInt32(ViewState["id"]) - 1;
            ViewState["id"] = p;

            lnkNext.Enabled = true; // enable Next
            if (p <= 0)
            {
                lnkPrev.Enabled = false; // disable Previous
            }

            BindCars();
        }

        protected void rptCars_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            
        }

        protected void lnkNext_Click(object sender, EventArgs e) // Next
        {
            p = Convert.ToInt32(ViewState["id"]) + 1;
            ViewState["id"] = p;

            int totalPages = (row / pg.PageSize);
            lnkPrev.Enabled = true; // enable Previous
            if (p == totalPages)
            {
                lnkNext.Enabled = false; // disable Next
            }

            BindCars();
        }
    }
}