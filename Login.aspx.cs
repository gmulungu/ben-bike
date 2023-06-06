using BenBikes.Classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BenBikes
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtUsername.Attributes.Add("autocomplete", "off");
            txtPassword.Attributes.Add("autocomplete", "off");
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            LoginUser();
        }

        public void LoginUser()
        {
            LoginClass loginClass = new LoginClass();
            loginClass.userName = txtUsername.Text.Trim();
            loginClass.passWord = txtPassword.Text.Trim();


            loginClass.LoginUser();
            switch (loginClass.doNext)
            {
                case 1:
                    Response.Redirect("MainMenu.aspx");
                    break;
                case 2:
                    Response.Write("<script>alert('Invalid Login Details');</script>");
                    txtUsername.Text = "";
                    txtPassword.Text = "";
                    break;
                case 3:
                    Response.Write("<script>alert('Please enter values in all the fields');</script>");
                    break;
            }
        }

    }
}