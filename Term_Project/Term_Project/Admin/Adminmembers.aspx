<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Adminmembers.aspx.cs" Inherits="Term_Project.Admin.Adminmembers" %>

<!DOCTYPE html>
<!-- Student Name: Chandra K. Rai, Narayan Guragain, Bishnu Khanal, Balkrishna Dhakal, Frederico de Moraes Galdino -->
<!-- Submitted to: S. M. Reza Dibaj -->
<!-- Date: Oct 21, 2017 -->
<!-- File Name: Front.Master.aspx -->
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, intitail-scale=1" />
    <title>ASP.NET Term Project</title>
    
    <link href="https://fonts.googleapis.com/css?family=Sacramento" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css?family=Reenie+Beanie" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css?family=Dawning+of+a+New+Day" rel="stylesheet"/>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="../Content/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="../Content/font-awesome.min.css" rel="stylesheet" />
    <link href="../Content/customApp.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
<div class="Data_Container">
        <div class="row">
            <div class="col-18 col-md-auto">
                <h2>Administrator</h2>
                <h5>Online Bookstore Members</h5>
                <asp:GridView ID="MemberGridView" runat="server" AutoGenerateColumns="False" 
                    CssClass="table table-bordered table-striped table-hover" OnRowDeleting="MemberGridView_RowDeleting" DataKeyNames="MemberID">
                    <Columns>
                        <asp:BoundField DataField="MemberID" HeaderText="Member ID" Visible="true" />
                        <asp:BoundField DataField="LastName" HeaderText="Last Name" Visible="true" />
                        <asp:BoundField DataField="FirstName" HeaderText="First Name" Visible="true" />
                        <asp:BoundField DataField="MembershipDate" HeaderText="Membership Date" Visible="true" />   
                        
                        <asp:CommandField HeaderText="Delete" DeleteText="<i class='fa fa-trash-o fa-lg'></i> Delete" ShowDeleteButton="true" 
                            ButtonType="Link" ControlStyle-CssClass="btn btn-danger btn-sm" />
                        
                    </Columns>
                </asp:GridView>             
                <button runat="server" class="btn btn-primary" onserverclick="AddMember_Click">
                    <i class="fa fa-plus fa-lg" aria-hidden="true"></i> Add Member</button> 
                <button runat="server" class="btn btn-warning" onserverclick="Unnamed_ServerClick">
                    <i class="fa fa-times fa-lg" aria-hidden="true"></i> Cancel</button>    
                 <button runat="server" class="btn btn-primary" onserverclick="Unnamed_ServerClick1">Logout</button>               
            </div> 
           
        </div>
    </div>
    </div>
    </form>
    <!-- JaveScript Section -->
    <script src="../Scripts/jquery-2.2.4.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/Application.js"></script>
</body>
</html>
