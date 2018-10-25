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
    public partial class InsertStudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Training"].ConnectionString);
            SqlCommand cmd = new SqlCommand("INSERT INTO STUDENT(stud_Code,Stud_Name,Dept_Code,Stud_Dob,Address) VALUES(@SCode,@SName,@DCode,@DOB,@Address");
            cmd.Parameters.AddWithValue("@SCode", txtCode.Text);
            cmd.Parameters.AddWithValue("@SName", txtStudName.Text);
            cmd.Parameters.AddWithValue("@DCode", txtDeptCode.Text);
            cmd.Parameters.AddWithValue("@DOB", Convert.ToDateTime(txtDob.Text));
            cmd.Parameters.AddWithValue("@Address", txtAddress.Text);

            con.Open();
            int recordsAffected = cmd.ExecuteNonQuery();
            con.Close();

            if(recordsAffected > 0)
                Response.Write("<SCRIPT type='text/JavaScript' > alert ('Student Data Insert Successfily'); </SCRIPT>");
            else
                 Response.Write("<SCRIPT type='text/JavaScript' > alert ('Student Data not Inserted'); </SCRIPT>");
        }
    }
}