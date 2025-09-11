using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace car_rental_project
{
    public partial class old_cars : System.Web.UI.Page
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
                filllist();
            }
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
        void filllist()
        {
            getcon();
            da = new SqlDataAdapter("SELECT * FROM Cars", con);
            ds = new DataSet();
            da.Fill(ds);

            row = ds.Tables[0].Rows.Count;
            pg.DataSource = ds.Tables[0].DefaultView;
            pg.AllowPaging = true;
            pg.PageSize = 6;
            pg.CurrentPageIndex = Convert.ToInt32(ViewState["id"]);

            DataList1.DataSource = pg;
            DataList1.DataBind();
        }
        void BindCars()
        {
            con = new SqlConnection(s);
            da = new SqlDataAdapter("SELECT * FROM Cars", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            row = dt.Rows.Count; // Fixed: use dt.Rows.Count instead of ds.Tables[0].Rows.Count
            pg.DataSource = dt.DefaultView; // Fixed: use dt.DefaultView instead of dt.Tables[0].DefaultView
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
        protected void LinkButton1_Click(object sender, EventArgs e) // Previous
        {
            p = Convert.ToInt32(ViewState["id"]) - 1;
            ViewState["id"] = p;

            LinkButton3.Enabled = true; // enable Next
            if (p <= 0)
            {
                LinkButton1.Enabled = false; // disable Previous
            }

            filllist();
        }

        protected void LinkButton3_Click(object sender, EventArgs e) // Next
        {
            p = Convert.ToInt32(ViewState["id"]) + 1;
            ViewState["id"] = p;

            int temp = row / pg.PageSize;
            LinkButton1.Enabled = true; // enable Previous
            if (p == temp)
            {
                LinkButton3.Enabled = false; // disable Next
            }

            filllist();
        }
    }
}