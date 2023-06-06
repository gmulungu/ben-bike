using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using BenBikes.Classes;

namespace BenBikes
{
    public partial class AddData : Page
    {
        AddDataClass addDataClass = new AddDataClass();
        public System.Web.UI.WebControls.TextBox textInterviewer = new System.Web.UI.WebControls.TextBox();
        public System.Web.UI.WebControls.TextBox textProjectName = new System.Web.UI.WebControls.TextBox();
        public System.Web.UI.WebControls.TextBox textContactPerson = new System.Web.UI.WebControls.TextBox();
        public Calendar dateDistribution = new Calendar();
        public System.Web.UI.WebControls.TextBox textAreaDistribution = new System.Web.UI.WebControls.TextBox();
        public System.Web.UI.WebControls.TextBox textBikesDistributed = new System.Web.UI.WebControls.TextBox();
        public DropDownList dropProjectType = new DropDownList();
        public DropDownList dropMOU = new DropDownList();

        public DropDownList dropBikesUsed = new DropDownList();
        public DropDownList dropUsageFrequency = new DropDownList();
        public DropDownList dropTripDistance = new DropDownList();
        public System.Web.UI.WebControls.TextBox textUsedAmount = new System.Web.UI.WebControls.TextBox();
        public DropDownList dropUsageReason = new DropDownList();

        public DropDownList dropRunningOrder = new DropDownList();
        public DropDownList dropBikeIssues = new DropDownList();

        public System.Web.UI.WebControls.TextBox textProjectBenefit = new System.Web.UI.WebControls.TextBox();
        public System.Web.UI.WebControls.TextBox textUserBenefit = new System.Web.UI.WebControls.TextBox();
        protected void Page_Load(object sender, EventArgs e)
        {
            textInterviewer = txtInterviewer;
            textProjectName = txtProjectName;
            textContactPerson = txtContactPerson;
            dateDistribution = dtDistribution;
            textAreaDistribution = txtAreaDistribution;
            textBikesDistributed = txtBikesDistributed;
            dropProjectType = dlProjectType;
            dropMOU = dlMOU;

            dropBikesUsed = dlBikesUsed;
            dropUsageFrequency = dlUsageFrequency;
            dropTripDistance = dlTripDistance;
            textUsedAmount = txtUsedAmount;
            dropUsageReason = dlUsageReason;

            dropRunningOrder = dlRunningOrder;
            dropBikeIssues = dlIssues;

            textProjectBenefit = txtProjectBenefit;
            textUserBenefit = txtUserBenefit;

            txtInterviewer.Attributes.Add("autocomplete", "off");
            txtProjectName.Attributes.Add("autocomplete", "off");
            txtContactPerson.Attributes.Add("autocomplete", "off");
            txtAreaDistribution.Attributes.Add("autocomplete", "off");
            txtBikesDistributed.Attributes.Add("autocomplete", "off");
            txtUsedAmount.Attributes.Add("autocomplete", "off");
            txtProjectBenefit.Attributes.Add("autocomplete", "off");
            txtUserBenefit.Attributes.Add("autocomplete", "off");
        }


        protected void btnAdd_Click(object sender, EventArgs e)
        {
            //Checking that all fields are filled with the correct data types
            Regex regex = new Regex("^[a-zA-Z]+$");
            bool hasOnlyAlpha = regex.IsMatch(txtBikesDistributed.Text);
            bool hasOnlyAlpha2 = regex.IsMatch(txtUsedAmount.Text);
            if (txtInterviewer.Text.Trim() == string.Empty || txtProjectName.Text.Trim() == string.Empty || txtContactPerson.Text.Trim() == string.Empty
                || dtDistribution.SelectedDate == null || txtAreaDistribution.Text.Trim() == string.Empty || txtBikesDistributed.Text.Trim() == string.Empty
                || txtUsedAmount.Text.Trim() == string.Empty || txtProjectBenefit.Text.Trim() == string.Empty || txtUserBenefit.Text.Trim() == string.Empty)
            {
                MessageBox.Show("Please enter values in all of the fields");
            }
            else
            {
                if (hasOnlyAlpha == true || hasOnlyAlpha2 == true)
                {
                    MessageBox.Show("Please make sure the 'Number of bikes distributed' and 'How many people are using the bikes' fields contain numberical values");
                }
                else
                {
                    addDataClass.addData(this);
                    addDataClass.submitData();
                    MessageBox.Show("Data Added");
                    Response.Redirect("MainMenu.aspx");
                }
            }

           
        }

        protected void btnMainMenu_Click(object sender, EventArgs e)
        {
            Response.Redirect("MainMenu.aspx");
        }
    }
}