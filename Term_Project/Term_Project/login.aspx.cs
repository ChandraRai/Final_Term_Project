using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Term_Project.Models;
using System.Web.ModelBinding;

using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;

namespace Term_Project.Admin
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void CancelButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Memberpage.aspx");
        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
                var userStore = new UserStore<IdentityUser>();
                var userManager = new UserManager<IdentityUser>(userStore);

          
                var user = userManager.Find(userNameTextBox.Text, PasswordTextBox.Text);

                if(user != null)
                {
                    var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
                    var userIdentity = userManager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);

                    authenticationManager.SignIn(new AuthenticationProperties() { IsPersistent = false }, userIdentity);

                    Response.Redirect("Admin/Adminmembers.aspx");
                }
                else
                {
                    LabelRequired.Text = "Invalid Username or Password";
                    AttributeCollection myAttribute = LabelRequired.Attributes;
                    myAttribute.CssStyle.Add("Color", "red");
            }          
        }
    }
}