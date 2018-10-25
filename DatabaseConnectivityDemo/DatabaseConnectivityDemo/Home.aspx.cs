using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace DatabaseConnectivityDemo
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Training"].ConnectionString);
            SqlCommand cmd = new SqlCommand("SELECT * FROM RajkumarG.Owner");
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            DataTable dt = new DataTable();
            if (dr.HasRows)
                dt.Load(dr);
            con.Close();

            if (dt.Rows.Count > 0)
            {
                gvStudent.DataSource = dt;
                gvStudent.DataBind();
            }
            else
                Response.Write("<SCRIPT type='text/JavaScript' > alert ('Student Data not available'); </SCRIPT>");

        }
    }
}