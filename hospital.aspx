<%@ Page Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="hospital.aspx.cs" Inherits="ODCMSS.hospital" %>
<asp:Content ID="Content" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .mGrid1
{
    width: 100%;
    font-family: tahoma;
}

.mGrid1 td   /* this applies to the Gridviews Data fileds */
{
    padding: 1px;
    text-align:center;
    width: 3%;
    border: solid 1px black;
    border-collapse: collapse;
}
.mGrid1 th   /* this applies to the Gridviews Headers */
{
     padding: 0px 0px;
     border-width: 1px;
}

    </style>
   <div class="container center-page">
        <div class="form-horizontal">
        <h4>Hospitals</h4>
        <div>
            <label class="col-xs-11" style="font-size:x-large"><br /><b>Dhaka</b></label>
        </div>
       
        <asp:GridView ID="GridView1" runat="server"   AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="5" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None" CellSpacing="50" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Font-Size="12pt">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:BoundField DataField="HospitalNickname" HeaderText="HospitalNickname&nbsp;&nbsp;&nbsp;&nbsp;" SortExpression="HospitalNickname&nbsp;&nbsp;&nbsp;&nbsp;" />
                <asp:BoundField DataField="HospitalAddress" HeaderText="HospitalAddress&nbsp;&nbsp;&nbsp;&nbsp;" SortExpression="HospitalAddress&nbsp;&nbsp;&nbsp;&nbsp;" />
                <asp:BoundField DataField="HospitalFullName" HeaderText="HospitalFullName&nbsp;&nbsp;&nbsp;&nbsp;" SortExpression="HospitalFullName&nbsp;&nbsp;&nbsp;&nbsp;" />
                <asp:BoundField DataField="Location" HeaderText="&nbsp;&nbsp;&nbsp;&nbsp;Location&nbsp;&nbsp;&nbsp;&nbsp;" SortExpression="&nbsp;&nbsp;&nbsp;&nbsp;Location&nbsp;&nbsp;&nbsp;&nbsp;" />
            </Columns>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT [HospitalNickname], [HospitalAddress], [HospitalFullName], [Location] FROM [Hospital] WHERE ([HospitalAddress] = @HospitalAddress) ORDER BY [Hid]">
            <SelectParameters>
                <asp:Parameter DefaultValue="Dhaka" Name="HospitalAddress" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
         <label class="col-xs-11" style="font-size:x-large"><br /><b>Chittagong</b></label>
        <asp:GridView ID="GridView2"  runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="None" AllowPaging="True" CellSpacing="5" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" Font-Size="12pt">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:BoundField DataField="HospitalNickname" HeaderText="HospitalNickname&nbsp;&nbsp;&nbsp;&nbsp;" SortExpression="HospitalNickname&nbsp;&nbsp;&nbsp;&nbsp;" />
                <asp:BoundField DataField="HospitalAddress" HeaderText="HospitalAddress&nbsp;&nbsp;&nbsp;&nbsp;" SortExpression="HospitalAddress&nbsp;&nbsp;&nbsp;&nbsp;" />
                <asp:BoundField DataField="HospitalFullName" HeaderText="HospitalFullName&nbsp;&nbsp;&nbsp;&nbsp;" SortExpression="HospitalFullName&nbsp;&nbsp;&nbsp;&nbsp;" />
                <asp:BoundField DataField="Location" HeaderText="&nbsp;&nbsp;&nbsp;&nbsp;Location&nbsp;&nbsp;&nbsp;&nbsp;" SortExpression="&nbsp;&nbsp;&nbsp;&nbsp;Location&nbsp;&nbsp;&nbsp;&nbsp;" />
            </Columns>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2"  runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT [HospitalNickname], [HospitalAddress], [HospitalFullName], [Location] FROM [Hospital] WHERE ([HospitalAddress] = @HospitalAddress) ORDER BY [Hid]">
            <SelectParameters>
                <asp:Parameter DefaultValue="Chittagong" Name="HospitalAddress" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
       <label class="col-xs-11" style="font-size:x-large"><br /><b>Sylhet</b></label>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT [HospitalNickname], [HospitalAddress], [HospitalFullName], [Location] FROM [Hospital] WHERE ([HospitalAddress] = @HospitalAddress) ORDER BY [Hid]">
            <SelectParameters>
                <asp:Parameter DefaultValue="Sylhet" Name="HospitalAddress" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView3" runat="server"  AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataSourceID="SqlDataSource3" ForeColor="Black" GridLines="None" Font-Size="12pt">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:BoundField DataField="HospitalNickname" HeaderText="HospitalNickname&nbsp;&nbsp;&nbsp;&nbsp;" SortExpression="HospitalNickname&nbsp;&nbsp;&nbsp;&nbsp;" />
                <asp:BoundField DataField="HospitalAddress" HeaderText="HospitalAddress&nbsp;&nbsp;&nbsp;&nbsp;" SortExpression="HospitalAddress&nbsp;&nbsp;&nbsp;&nbsp;" />
                <asp:BoundField DataField="HospitalFullName" HeaderText="HospitalFullName&nbsp;&nbsp;&nbsp;&nbsp;" SortExpression="HospitalFullName&nbsp;&nbsp;&nbsp;&nbsp;" />
                <asp:BoundField DataField="Location" HeaderText="&nbsp;&nbsp;&nbsp;&nbsp;Location&nbsp;&nbsp;&nbsp;&nbsp;" SortExpression="&nbsp;&nbsp;&nbsp;&nbsp;Location&nbsp;&nbsp;&nbsp;&nbsp;" />
            </Columns>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
        <label class="col-xs-11" style="font-size:x-large"><br /><b>Rajshahi</b></label>
        <asp:GridView ID="GridView4" runat="server"  AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataSourceID="SqlDataSource4" ForeColor="Black" GridLines="None" CellSpacing="5" Font-Size="12pt">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:BoundField DataField="HospitalNickname" HeaderText="HospitalNickname" SortExpression="HospitalNickname" />
                <asp:BoundField DataField="HospitalAddress" HeaderText="HospitalAddress" SortExpression="HospitalAddress" />
                <asp:BoundField DataField="HospitalFullName" HeaderText="HospitalFullName" SortExpression="HospitalFullName" />
                <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
            </Columns>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT [HospitalNickname], [HospitalAddress], [HospitalFullName], [Location] FROM [Hospital] WHERE ([HospitalAddress] = @HospitalAddress) ORDER BY [Hid]">
            <SelectParameters>
                <asp:Parameter DefaultValue="Rajshashi" Name="HospitalAddress" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    </div>
      

    </asp:Content>