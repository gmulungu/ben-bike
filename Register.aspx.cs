using BenBikes.Classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BenBikes
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtUsername.Attributes.Add("autocomplete", "off");
            txtPassword.Attributes.Add("autocomplete", "off");
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            RegisterUser();
        }

        protected void btnMainMenu_Click(object sender, EventArgs e)
        {
            Response.Redirect("MainMenu.aspx");
        }

        public void RegisterUser()
        {
            RegisterClass registerClass = new RegisterClass();
            registerClass.userName = txtUsername.Text.Trim();
            registerClass.passWord = txtPassword.Text.Trim();

            registerClass.RegisterUser();

            switch (registerClass.doNext)
            {
                case 1:
                    Response.Write("<script>alert('New user registered');</script>");
                    txtUsername.Text = "";
                    txtPassword.Text = "";
                    break;
                case 2:
                    Response.Write("<script>alert('Please enter values in all the fields');</script>");
                    break;
            }
        }
    }
}
