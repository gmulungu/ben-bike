using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BenBikes
{
    public partial class MainMenu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddData_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddData.aspx");
        }

        protected void btnSendEmail_Click(object sender, EventArgs e)
        {
            Response.Redirect("SendEmail.aspx");
        }

        protected void btnViewData_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewData.aspx");
        }

        protected void btnViewChart_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewChart.aspx");
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }
    }
}