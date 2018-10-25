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
    public partial class InsertStudent : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["str"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into Student_master(Stud_Code,Stud_Name,Dept_Code,Stud_Dob,Address) values(@Stud_Code,@Stud_Name,@Dept_Code,@Stud_Dob,@Address)", con);
            cmd.Parameters.AddWithValue("@Stud_code", txtCode.Text);
            cmd.Parameters.AddWithValue("@Stud_Name", txtName.Text);

            cmd.Parameters.AddWithValue("@Dept_Code", txtDCode.Text);
            cmd.Parameters.AddWithValue("@Stud_Dob",Convert.ToDateTime(txtDOB.Text));
            cmd.Parameters.AddWithValue("@Address", txtAddress.Text);
            con.Open();
            int rowsAffected = Convert.ToInt32(cmd.ExecuteNonQuery());
            con.Close();
            if(rowsAffected>0)
            {
                Response.Write("<script type='text/javascript'>alert('Student Data Inserted');</script>");
            }
            else
            {
                Response.Write("<script type='text/javascript'>alert('Student Data Not Inserted');</script>");
            }

        }
    }
}