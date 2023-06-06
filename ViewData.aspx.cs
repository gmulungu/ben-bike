using BenBikes.Classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BenBikes
{
    public partial class ViewData : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtSearch.Attributes.Add("autocomplete", "off");
        }

        protected void txtPassword_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnFilter_Click(object sender, EventArgs e)
        {
            //Filter the table according to the chosen drop down list value and string
            string FilterExpression = string.Format("CONVERT({0}, System.String) like '%{1}%'", ddlColumn.SelectedValue, txtSearch.Text.Trim());
            SqlDataSource1.FilterParameters.Clear();
            SqlDataSource1.FilterExpression = FilterExpression;
        }

        protected void btnMainMenu_Click(object sender, EventArgs e)
        {
            Response.Redirect("MainMenu.aspx");
        }

        protected void btnClearFilter_Click(object sender, EventArgs e)
        {
            SqlDataSource1.FilterParameters.Clear();
        }
    }
}