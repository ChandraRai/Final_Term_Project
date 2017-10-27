<%@ Page Title="" Language="C#" MasterPageFile="~/Front.Master" AutoEventWireup="true" CodeBehind="Memberpage.aspx.cs" Inherits="Term_Project.Memberpage" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="Data_Container">
        <div class="row">
            <div class="col-18 col-md-auto">
                <p>List of Online Bookstore Members</p>
                <asp:GridView ID="MemberGridView" runat="server" AutoGenerateColumns="False" 
                    CssClass="table table-bordered table-striped table-hover">
                    <Columns>
                        <asp:BoundField DataField="MemberID" HeaderText="Member ID" Visible="true" />
                        <asp:BoundField DataField="LastName" HeaderText="Last Name" Visible="true" />
                        <asp:BoundField DataField="FirstName" HeaderText="First Name" Visible="true" />
                        <asp:BoundField DataField="MembershipDate" HeaderText="Membership Date" Visible="true" />                       
                    </Columns>
                </asp:GridView>             
                <button runat="server" class="btn btn-primary" onserverclick="AddMember_Click">
                    <i class="fa fa-plus fa-lg" aria-hidden="true"></i> Add Member</button>   
                <button runat="server" class="btn btn-warning" onserverclick="Unnamed_ServerClick">
                    <i class="fa fa-minus fa-lg" aria-hidden="true"></i> Remove Member</button>          
            </div>  
        </div>
    </div>
</asp:Content>
