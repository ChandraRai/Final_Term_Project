using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;

namespace Term_Project.Admin
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("../login.aspx");
        }

        protected void RegisterButton_Click(object sender, EventArgs e)
        {
            //create a new userStore and UserManager objects
            var userStore = new UserStore<IdentityUser>();
            var userManager = new UserManager<IdentityUser>(userStore);

            var user = new IdentityUser()
            {
                UserName = UserNameTextBox.Text,
                PhoneNumber = PhoneNumberTextBox.Text,
                Email = EmailTextBox.Text                  
            };

           
            IdentityResult result = userManager.Create(user, PasswordTextBox.Text);

            if(result.Succeeded)
            {
                var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
                var userIdentity = userManager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);

                authenticationManager.SignIn(new AuthenticationProperties() { }, userIdentity);

                Response.Redirect("../Login.aspx");
            }
            else
            {
                LabelField.Text = "Something is wrong!";
                AttributeCollection myAttribute = LabelField.Attributes;
                myAttribute.CssStyle.Add("Color", "red");

            }
           
        }
    }
}