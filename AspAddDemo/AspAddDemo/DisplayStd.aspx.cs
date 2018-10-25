using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace AspAddDemo
{
    public partial class AddStudent : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["str"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

            SqlCommand cmd = new SqlCommand("select * from Student_master", con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            DataTable dt = new DataTable();

            if (dr.HasRows)
            {
                dt.Load(dr);

            }
            con.Close();

            if (dt.Rows.Count > 0)
            {
                gvStudent.DataSource = dt;
                gvStudent.DataBind();
            }
            else
                Response.Write("<script type='text/javascript'>alert('Student Data Not Available');</script>");

        }
    }
}