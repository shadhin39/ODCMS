<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" MasterPageFile="~/master.Master" Inherits="ODCMSS.login" %>

<asp:Content ID="Content" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container center-page">
        <div class="form-horizontal">
            <h2>Login</h2>
            <hr />
            <div class="form-group">
                <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="Username"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="TextBoxUN" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" Text="Password"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="TextBoxPass" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-2"></div>
                <div class="col-md-6">
                    <asp:CheckBox ID="RememberMeCheckBox" runat="server" />
                    <asp:Label ID="Label3" runat="server" CssClass="control-label" Text="Remember me ?"></asp:Label>
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-2"></div>
                <div class="col-md-6">
                    <asp:Button ID="ButtonLogin" runat="server" Text="Login" OnClientClick="loadingIconVisible();" OnClick="ButtonLogin_Click" CssClass="btn btn-primary"  />
                   
                                <span>
                                    <asp:Image ID="loadingIcon" runat="server" ImageUrl="~/icon/loadingIcon.gif" AlternateText="Loading..." />
                                </span>
                   <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        <asp:ListItem>Register</asp:ListItem>
                        <asp:ListItem>As a patient</asp:ListItem>
                        <asp:ListItem>As a doctor</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Label ID="InfoLabel" runat="server"></asp:Label>
                    
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-2"></div>
                <div class="col-md-6">
                    <asp:LinkButton ID="lbForgotPass" runat="server" PostBackUrl="~/forgetPassword.aspx">Forgot Password !</asp:LinkButton>
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-2"></div>
                <div class="col-md-6">
                    <asp:Label ID="lblError" runat="server" CssClass="text-danger"></asp:Label>
                </div>
            </div>
        </div>
    </div>
    </asp:Content>