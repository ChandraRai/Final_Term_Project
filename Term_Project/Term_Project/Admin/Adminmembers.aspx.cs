using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Term_Project.Models;
using System.Web.ModelBinding;

namespace Term_Project.Admin
{
    public partial class Adminmembers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.GetMembers();
            }
        }

        private void GetMembers()
        {
            using (MembershipContext db = new MembershipContext())
            {
                try
                {
                    var Members = (from allMembers in db.members select allMembers);
                    MemberGridView.DataSource = Members.ToList();
                    MemberGridView.DataBind();
                }
                catch
                {

                }

            }
        }

        protected void AddMember_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Addmember.aspx");
        }

        protected void MemberGridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int selectedRow = e.RowIndex;
            int MemberID = Convert.ToInt32(MemberGridView.DataKeys[selectedRow].Values["MemberID"]);

            try
            {
                using (MembershipContext db = new MembershipContext())
                {
                    member deleteMember = (from memberRecords in db.members
                                           where memberRecords.memberID == MemberID
                                           select memberRecords).FirstOrDefault();
                    db.members.Remove(deleteMember);
                    db.SaveChanges();
                    this.GetMembers();
                }
            }
            catch
            {

            }
            
        }

        protected void Unnamed_ServerClick(object sender, EventArgs e)
        {
            Response.Redirect("/Default.aspx");
        }

        protected void Unnamed_ServerClick1(object sender, EventArgs e)
        {
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;

            authenticationManager.SignOut();

            Response.Redirect("/Logout.aspx");
        }
    }
}