using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Net.Mime.MediaTypeNames;

namespace car_rental_project
{
    public partial class Add_Cars : System.Web.UI.Page
    {

        String s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        string fnm;
        DataSet ds;
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
            fillgrid();
        }
        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }
        void imgupload()
        {
            if (flpimg.HasFile)
            {
                fnm = "images/" + flpimg.FileName;
                flpimg.SaveAs(Server.MapPath(fnm));
            }
        }
        void clear()
        {
            Car_Name.Text = "";
            Car_Model.Text = "";
            Car_Driven.Text = "";
            Car_Price.Text = "";
            ddlseat.SelectedValue = "";
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Button1.Text == "save")
            {
                getcon();
                imgupload();
                cmd = new SqlCommand("insert into Cars(Car_Name,Car_Model,Car_Seat,Car_Transmission,Car_Fuel,Car_Driven,Car_Price,Car_Image,Car_Category) values('" + Car_Name.Text + "','" + Car_Model.Text + "','" + ddlseat.SelectedValue + "','" + rdbtransmission.SelectedValue + "','"+rdbfuel.SelectedValue+"','"+Car_Driven.Text+"','"+Car_Price.Text+"','" + fnm + "','"+rdbcategory.SelectedValue+"')", con);
                cmd.ExecuteNonQuery();
                clear();
                fillgrid();

            }
            else if (Button1.Text == "update")
            {
                getcon();
                imgupload();
                cmd = new SqlCommand("update Cars set Car_Name='" + Car_Name.Text +
                                     "', Car_Model='" + Car_Model.Text +
                                     "', Car_Seat='" + ddlseat.SelectedValue +
                                     "', Car_Transmission='" + rdbtransmission.SelectedValue +
                                     "', Car_Fuel='" + rdbfuel.SelectedValue +
                                     "', Car_Driven='" + Car_Driven.Text +
                                     "', Car_Price='" + Car_Price.Text +
                                     "', Car_Image='" + fnm +
                                     "', Car_Category='"+rdbcategory.SelectedValue+
                                     "' where Id='" + ViewState["Id"] + "'", con);
                cmd.ExecuteNonQuery();
                clear();
                fillgrid();
                Button1.Text = "save";
            }

        }
        protected void Logout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }
        void select()
        {
            getcon();
            da = new SqlDataAdapter("select * from Cars where Id='" + ViewState["Id"] + "'", con);
            ds = new DataSet();
            da.Fill(ds);
            rdbcategory.SelectedValue = ds.Tables[0].Rows[0][1].ToString();
            Car_Name.Text = ds.Tables[0].Rows[0][2].ToString();
            Car_Model.Text = ds.Tables[0].Rows[0][3].ToString();
            ddlseat.SelectedValue = ds.Tables[0].Rows[0][4].ToString();
            rdbtransmission.SelectedValue = ds.Tables[0].Rows[0][5].ToString();
            rdbfuel.SelectedValue = ds.Tables[0].Rows[0][6].ToString();
            Car_Driven.Text=ds.Tables[0].Rows[0][7].ToString();
            Car_Price.Text = ds.Tables[0].Rows[0][8].ToString();

        }

        void fillgrid()
        {
            getcon();
            da = new SqlDataAdapter("select * from Cars", con);
            ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "cmd_edt")
            {

                int id = Convert.ToInt32(e.CommandArgument);
                ViewState["Id"] = id;
                Button1.Text = "update";
                select();

            }
            else
            {
                getcon();
                int id = Convert.ToInt32(e.CommandArgument);
                ViewState["Id"] = id;
                cmd = new SqlCommand("delete from Cars where id='" + ViewState["Id"] + "'", con);
                cmd.ExecuteNonQuery();
                fillgrid();
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}

