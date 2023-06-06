using BenBikes.Classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace BenBikes
{
    public partial class EmailSurvey : System.Web.UI.Page
    {
        AddEmailDataClass addEmailDataClass = new AddEmailDataClass();

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
            dropBikesUsed = dlBikesUsed;
            dropUsageFrequency = dlUsageFrequency;
            dropTripDistance = dlTripDistance;
            textUsedAmount = txtUsedAmount;
            dropUsageReason = dlUsageReason;

            dropRunningOrder = dlRunningOrder;
            dropBikeIssues = dlIssues;

            textProjectBenefit = txtProjectBenefit;
            textUserBenefit = txtUserBenefit;

            txtUsedAmount.Attributes.Add("autocomplete", "off");
            txtProjectBenefit.Attributes.Add("autocomplete", "off");
            txtUserBenefit.Attributes.Add("autocomplete", "off");
            txtProjectName.Attributes.Add("autocomplete", "off");
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            //Checking that all fields are filled with the correct data types
            Regex regex = new Regex("^[a-zA-Z]+$");
            bool hasOnlyAlpha2 = regex.IsMatch(txtUsedAmount.Text);
            if (txtProjectName.Text.Trim() == string.Empty || txtUsedAmount.Text.Trim() == string.Empty || txtProjectBenefit.Text.Trim() == string.Empty || txtUserBenefit.Text.Trim() == string.Empty)
            {
                MessageBox.Show("Please enter values in all of the fields");
            }
            else
            {
                if (hasOnlyAlpha2 == true)
                {
                    MessageBox.Show("Please make sure the 'How many people are using the bikes' fields contains a numberical value");
                }
                else
                {
                    addData();
                    addEmailDataClass.editData();
                    MessageBox.Show("Response Submitted. You may close this window");
                }
            }

        }

        public void addData()
        {
            //Assigning variables to data from form
            addEmailDataClass.ProjectName2 = txtProjectName.Text.Trim();

            addEmailDataClass.BikeUsed = dlBikesUsed.SelectedValue;
            addEmailDataClass.BikeUsageFrequency = dlUsageFrequency.SelectedValue;
            addEmailDataClass.TripDistance = dlTripDistance.SelectedValue;
            addEmailDataClass.BikeUsedAmount = Int32.Parse(txtUsedAmount.Text.Trim());
            addEmailDataClass.BikeUsageReason = dlUsageReason.SelectedValue;

            addEmailDataClass.BikeRunningOrder = dlRunningOrder.SelectedValue;
            addEmailDataClass.BikeIssues = dlIssues.SelectedValue;

            addEmailDataClass.ProjectBenefit = txtProjectBenefit.Text.Trim();
            addEmailDataClass.UserBenefit = txtUserBenefit.Text.Trim();
        }
    }
}