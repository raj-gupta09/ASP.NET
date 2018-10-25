using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ApplicationDemo
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                lblSessionID.Text = Session.SessionID;
                lblSessionCounter.Text = Session["counter"].ToString();
                lblApplicationCounter.Text = Application["counter"].ToString();

            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            int sessioncnt = (int)Session["counter"];
            sessioncnt = sessioncnt + 1;
            Session["counter"] = sessioncnt;
            lblSessionCounter.Text = Session["counter"].ToString();

            int appcnt = (int)Application["counter"];
            appcnt = appcnt + 1;
            Application["counter"] = appcnt;
            lblApplicationCounter.Text = Application["counter"].ToString();
        }
    }
}