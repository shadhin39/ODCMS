   <%@ Page Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="DoctorRegistration.aspx.cs" Inherits="ODCMSS.DoctorRegistration" %>

<asp:Content ID="Content" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container center-page">
        <div class="form-horizontal">
            <h2>Sign Us as Doctor</h2>
             <asp:LinkButton ID="lbForgotPass" runat="server" PostBackUrl="~/login.aspx">/Back to login page</asp:LinkButton>
           
            <hr />
             
<label class="col-xs-11" ><br /><b>Username</b></label>
        <div class="col-xs-11">
            <asp:TextBox ID="username1" runat="server" Class="form-control" placeholder="Usename" ></asp:TextBox>
        </div>
        <label class="col-xs-11"><br />Full Name</label>
        <div class="col-xs-11">
            <asp:TextBox ID="fullname1" runat="server" Class="form-control" placeholder="Name"></asp:TextBox>
        </div>
        <label class="col-xs-11"><br />Password</label>
        <div class="col-xs-11">
            <asp:TextBox ID="password1" runat="server" Class="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>
        </div>

        <label class="col-xs-11"><br />Confirm Password</label>
        <div class="col-xs-11">
            <asp:TextBox ID="confirmpassword1" runat="server" Class="form-control" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
        </div>
        <label class="col-xs-11"><br />Specialist</label>
        
            <div class="col-xs-11">
            <asp:DropDownList ID="specialist_dropDown"  Cssclass="col-xs-11 form-control" OnSelectedIndexChanged="specialist_SelectedIndexChanged"  runat="server">
            <asp:ListItem>Specialist</asp:ListItem>
                        <asp:ListItem>Medicine</asp:ListItem>
                        <asp:ListItem>Cardiologist</asp:ListItem>        
                        <asp:ListItem>Surgery</asp:ListItem>        
                        <asp:ListItem>Oncologist</asp:ListItem>        
            </asp:DropDownList>
        </div>
        <label class="col-xs-11"><br />Emergency contact number </label>
        <div class="col-xs-11">
            <asp:TextBox ID="emergencycontactnumber1" runat="server" Class="form-control" placeholder="Emergency contact number "></asp:TextBox>
        </div>
        <label class="col-xs-11"><br />Email</label>
        <div class="col-xs-11">
            <asp:TextBox ID="email1" runat="server" Class="form-control" placeholder="Email" TextMode="Email"></asp:TextBox>
        </div>
<label class="col-xs-11"><br />Visit fee </label>
        <div class="col-xs-11">
            <asp:TextBox ID="visitfee1" runat="server" Class="form-control" placeholder="Visit fee"></asp:TextBox>
        </div>
<label class="col-xs-11"><br />Hospital Name</label>
        <div class="col-xs-11">
            <asp:TextBox ID="hospitalname1" runat="server" Class="form-control" placeholder="Hospital Name"></asp:TextBox>
        </div>
                    <label class="col-xs-11"><br />Hospital Address</label>
        <div class="col-xs-11">
            <asp:TextBox ID="hospitaladdress1" runat="server" Class="form-control" placeholder="Hospital Address"></asp:TextBox>
        </div>
           <label class="col-xs-11"><br />On Phone consultancy(yes/no)</label>
        
            <div class="col-xs-11">
            <asp:DropDownList ID="onphoneconsultancy_DropDownList1"  Cssclass="col-xs-11 form-control" OnSelectedIndexChanged="onphoneconsultancy_SelectedIndexChanged"  runat="server">
            <asp:ListItem>Consultancy</asp:ListItem>
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>             
            </asp:DropDownList>
        </div>
        <br />
        <br />
            <label class="col-xs-11" ><br /><b></b></label>
         <div class="col-xs-11 space-vert">
            <asp:Button ID="submit" runat="server" Class="btn btn-success" Text="Registration" OnClick="submit_Click" />
            <asp:Label ID="InfoLabel0" runat="server"></asp:Label>
        </div>
        </div>
        </div>
    </asp:Content>

