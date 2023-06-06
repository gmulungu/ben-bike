using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.DataVisualization.Charting;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using BenBikes.Classes;

namespace BenBikes
{
    public partial class ViewChart : System.Web.UI.Page
    {
        ChartClass chartClass = new ChartClass();
        EmailClass emailClass = new EmailClass();
        public Chart crtDisplayChart = new Chart();
        public DropDownList dropPercentageused = new DropDownList();
        public DropDownList dropChartRecords = new DropDownList();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            crtDisplayChart = crtDisplay;
            dropPercentageused = ddlPercentageUsed;
            dropChartRecords = ddlChartRecords;
        }

        protected void btnPercentageUse_Click(object sender, EventArgs e)
        {
            chartClass.percentageUsed(this);
        }

        protected void btnChartRecords_Click(object sender, EventArgs e)
        {
            chartClass.chartRecords(this);

        }

        protected void btnMainMenu_Click(object sender, EventArgs e)
        {
            Response.Redirect("MainMenu.aspx");
        }
    }
}