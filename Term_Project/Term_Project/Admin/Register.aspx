<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Term_Project.Admin.Register" %>

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

    <link href="https://fonts.googleapis.com/css?family=Sacramento" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Reenie+Beanie" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Dawning+of+a+New+Day" rel="stylesheet" />
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="../Content/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="../Content/font-awesome.min.css" rel="stylesheet" />
    <link href="../Content/customApp.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="addmember_container">
            <div class="row">
                <div class="col-md-offset-4 col-md-4">
                    <div class="col-md-offset-2 col-md-8">
                        <h3>Registration</h3>
                        <asp:Label ID="LabelField" runat="server">All Fields are required.</asp:Label>
                        <br />
                        <br />
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <h2 class="panel-title"><i class="fa fa-refresh fa-spin"></i> Registration</h2>
                            </div>
                            <div class="panel-body">
                                <div class="form-group">
                                    <label class="contorl-label" for="UserNameTextBox">Name</label>
                                    <asp:TextBox runat="server" CssClass="form-control" ID="UserNameTextBox" Placeholder="Name" 
                                        required="true"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label class="contorl-label" for="EmailTextBox">Email</label>
                                    <asp:TextBox runat="server" CssClass="form-control" ID="EmailTextBox" Placeholder="Email"
                                        required="true"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label class="contorl-label" for="PhoneNumberTextBox">Phone Number</label>
                                    <asp:TextBox runat="server" CssClass="form-control" ID="PhoneNumberTextBox" Placeholder="Phone Number"
                                        required="true"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label class="contorl-label" for="PasswordTextBox">Password</label>
                                    <asp:TextBox runat="server" CssClass="form-control" ID="PasswordTextBox" TextMode="Password" 
                                        Placeholder="Password" required="true"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:Button runat="server" ID="RegisterButton" CssClass="btn btn-primary" UseSubmitBehavior="false"
                                        CausesValidation="false" Text="Register" OnClick="RegisterButton_Click"/>
                                    <asp:Button runat="server" ID="ButtonCancel" CssClass="btn btn-warning" UseSubmitBehavior="false"
                                        CausesValidation="false" Text="Cancel" OnClick="ButtonCancel_Click"/>
                                </div>
                            </div>
                        </div>
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
