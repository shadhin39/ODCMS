<%@ Page Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="PatientRegistration.aspx.cs" Inherits="ODCMSS.PatientRegistration" %>

<asp:Content ID="Content" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container center-page">
        <div class="form-horizontal">
            <h2>Sign Us as Patient</h2>
            <asp:LinkButton ID="lbForgotPass" runat="server" PostBackUrl="~/login.aspx">/Back to login page</asp:LinkButton>
            
            <hr />
                
    <label class="col-xs-11" ><br /><b>Username</b></label>
        <div class="col-xs-11">
            <asp:TextBox ID="TextBoxUN" runat="server" Class="form-control" placeholder="Usename"></asp:TextBox>
        </div>
        <label class="col-xs-11"><br />Full Name</label>
        <div class="col-xs-11">
            <asp:TextBox ID="fullname" runat="server" Class="form-control" placeholder="Name"></asp:TextBox>
        </div>
        <label class="col-xs-11"><br />Password</label>
        <div class="col-xs-11">
            <asp:TextBox ID="TextBoxPass" runat="server" Class="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>
        </div>

        <label class="col-xs-11"><br />Confirm Password</label>
        <div class="col-xs-11">
            <asp:TextBox ID="confirmpassword" runat="server" Class="form-control" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
        </div>
        <label class="col-xs-11"><br />Address</label>
        <div class="col-xs-11">
            <asp:TextBox ID="address" runat="server" Class="form-control" placeholder="Address"></asp:TextBox>
        </div>
        <label class="col-xs-11"><br />Phone Number</label>
        <div class="col-xs-11">
            <asp:TextBox ID="phonenumber" runat="server" Class="form-control" placeholder="Phone Number"></asp:TextBox>
        </div>
        <label class="col-xs-11"><br />Email</label>
        <div class="col-xs-11">
            <asp:TextBox ID="TextBoxEmail" runat="server" Class="form-control" placeholder="Email" TextMode="Email"></asp:TextBox>
        </div>
        <label class="col-xs-11"><br />Age</label>
        <div class="col-xs-11">
            <asp:TextBox ID="age" runat="server" Class="form-control" placeholder="Age"></asp:TextBox>
        </div>
        <label class="col-xs-11"><br />Gender</label>
        <div class="col-xs-11">
            <asp:DropDownList ID="Gender_dropDown"  Cssclass="col-xs-11 form-control" OnSelectedIndexChanged="Gender_SelectedIndexChanged"  runat="server">
            <asp:ListItem>Gender</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>        
            </asp:DropDownList>
        </div>
            
        <label class="col-xs-11"><br />Weight</label>
        <div class="col-xs-11">
            <asp:TextBox ID="weight" runat="server" Class="form-control" placeholder="Weight"></asp:TextBox>
        </div>
        <label class="col-xs-11"><br />Height</label>
        <div class="col-xs-11">
            <asp:TextBox ID="height" runat="server" Class="form-control" placeholder="Height"></asp:TextBox>
        </div>
        <label class="col-xs-11"><br />Eye Sight(If need)</label>
        <div class="col-xs-11">
            <asp:TextBox ID="eyesight" runat="server" Class="form-control" placeholder="Eye Sight"></asp:TextBox>
        </div>
        <label class="col-xs-11"><br />Hopital Name</label>
        <div class="col-xs-11">
            <asp:TextBox ID="hospitalname" runat="server" Class="form-control" placeholder="Hopital Name"></asp:TextBox>
        </div>
        <label class="col-xs-11"><br />Hopital ID</label>
        <div class="col-xs-11">
            <asp:TextBox ID="hospitalid" runat="server" Class="form-control" placeholder="Hopital ID"></asp:TextBox>
        </div>
        <br />
            <br /><br />

        <label class="col-xs-11" ><br /><b></b></label>
         <div class="col-xs-11 ">
             <asp:Button ID="submit" runat="server" OnClick="submit_Click" Text="Registration" CssClass="btn btn-success"  OnClientClick="loadingIconVisible()"/>
                                
            <asp:Label ID="InfoLabel" runat="server"></asp:Label>
        </div>
        </div>
        </div>
</asp:Content>
