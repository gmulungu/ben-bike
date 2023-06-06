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
    public partial class SendEmail : System.Web.UI.Page
    {
        AddEmailDataClass addEmailDataClass = new AddEmailDataClass();
        EmailClass emailClass = new EmailClass();
        public System.Web.UI.WebControls.TextBox textProjectName = new System.Web.UI.WebControls.TextBox();
        public System.Web.UI.WebControls.TextBox textEmailRecipient = new System.Web.UI.WebControls.TextBox();
        public System.Web.UI.WebControls.TextBox textContactPerson = new System.Web.UI.WebControls.TextBox();
        public Calendar dateDistribution = new Calendar();
        public System.Web.UI.WebControls.TextBox textAreaDistribution = new System.Web.UI.WebControls.TextBox();
        public System.Web.UI.WebControls.TextBox textBikesDistributed = new System.Web.UI.WebControls.TextBox();
        public DropDownList dropProjectType = new DropDownList();
        public DropDownList dropMOU = new DropDownList();
        protected void Page_Load(object sender, EventArgs e)
        {
            textProjectName = txtProjectName;
            textContactPerson = txtContactPerson;
            textEmailRecipient = txtEmailAddress;
            dateDistribution = dtDistribution;
            textAreaDistribution = txtAreaDistribution;
            textBikesDistributed = txtBikesDistributed;
            dropProjectType = dlProjectType;
            dropMOU = dlMOU;

            txtProjectName.Attributes.Add("autocomplete", "off");
            txtContactPerson.Attributes.Add("autocomplete", "off");
            txtAreaDistribution.Attributes.Add("autocomplete", "off");
            txtBikesDistributed.Attributes.Add("autocomplete", "off");
            txtEmailAddress.Attributes.Add("autocomplete", "off");
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            //Checking that the fields are filled with the correct data type
            Regex regex = new Regex("^[a-zA-Z]+$");
            bool hasOnlyAlpha = regex.IsMatch(txtBikesDistributed.Text);
            if (txtProjectName.Text.Trim() == string.Empty || txtContactPerson.Text.Trim() == string.Empty
                || dtDistribution.SelectedDate == null || txtAreaDistribution.Text.Trim() == string.Empty || txtBikesDistributed.Text.Trim() == string.Empty)
            {
                MessageBox.Show("Please enter values in all of the fields");
            }
            else
            {
                if (hasOnlyAlpha == true)
                {
                    MessageBox.Show("Please make sure the 'Number of bikes distributed' field contains a numberical value");
                }
                else
                {
                    addData();
                    string htmlString = emailClass.htmlString + " using the Project Name inside the quotation marks '" + txtProjectName.Text.Trim() + "'";
                    emailClass.Email(htmlString); //Pass html string to Email function. 
                    addEmailDataClass.submitData();
                    MessageBox.Show("Email Sent");
                }
            }

        }

        public void addData()
        {
            //Assigning variables to data from the form
            addEmailDataClass.Interviewer = "Survey";
            addEmailDataClass.DateOfInterview = DateTime.Today;
            emailClass.emailRecipient = txtEmailAddress.Text.Trim();

            addEmailDataClass.ProjectName = txtProjectName.Text.Trim();
            addEmailDataClass.ContactPerson = txtContactPerson.Text.Trim();
            addEmailDataClass.DateOfDistribution = dtDistribution.SelectedDate;
            addEmailDataClass.AreaOfDistribution = txtAreaDistribution.Text.Trim();
            addEmailDataClass.NumberOfBikesDistributed = Int32.Parse(txtBikesDistributed.Text);
            addEmailDataClass.TypeOfProject = dlProjectType.SelectedValue;
            addEmailDataClass.MOUSigned = dlMOU.SelectedValue;

            addEmailDataClass.BikeUsed = "";
            addEmailDataClass.BikeUsageFrequency = "";
            addEmailDataClass.TripDistance = "";
            addEmailDataClass.BikeUsedAmount = 0;
            addEmailDataClass.BikeUsageReason = "";

            addEmailDataClass.BikeRunningOrder = "";
            addEmailDataClass.BikeIssues = "";

            addEmailDataClass.ProjectBenefit = "";
            addEmailDataClass.UserBenefit = "";
        }

        protected void btnMainMenu_Click(object sender, EventArgs e)
        {
            Response.Redirect("MainMenu.aspx");
        }
    }
}