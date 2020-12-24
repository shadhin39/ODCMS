<%@ Page Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="Doctor.aspx.cs" Inherits="ODCMSS.Doctor" %>
<asp:Content ID="Content" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

 <div class="container center-page">
        <div class="form-horizontal">
            <h4>Doctor</h4>


 
        <div>
            
            <label class="col-xs-11" style="font-size:x-large"><br /><b>Medicine</b></label>
            <asp:GridView ID="GridView3"  runat="server" CssClass="mGrid1" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView3_SelectedIndexChanged" AllowSorting="True" Font-Size="12pt" >
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="UserName" HeaderText="UserName&nbsp;&nbsp;&nbsp;&nbsp;" SortExpression="UserName&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" />
                    <asp:BoundField DataField="FullName" HeaderText="FullName&nbsp;&nbsp;&nbsp;&nbsp;" SortExpression="FullName&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" />
                    <asp:BoundField DataField="Specialist" HeaderText="Specialist&nbsp;&nbsp;&nbsp;&nbsp;" SortExpression="Specialist&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" />
                    <asp:BoundField DataField="EmergencyContactNumber" HeaderText="EmergencyContactNumber&nbsp;&nbsp;&nbsp;&nbsp;" SortExpression="EmergencyContactNumber&nbsp;&nbsp;&nbsp;&nbsp;" />
                    <asp:BoundField DataField="Email" HeaderText="Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" SortExpression="Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" />
                    <asp:BoundField DataField="VisitFee" HeaderText="VisitFee&nbsp;&nbsp;&nbsp;&nbsp;"  SortExpression="VisitFee&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" />
                    <asp:BoundField DataField="HospitalName" HeaderText="HospitalName&nbsp;&nbsp;&nbsp;&nbsp;" SortExpression="HospitalName&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" />
                    <asp:BoundField DataField="HospitalAddress" HeaderText="HospitalAddress&nbsp;&nbsp;&nbsp;&nbsp;" SortExpression="HospitalAddress&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" />
                    <asp:BoundField DataField="OnPhoneConsultancy" HeaderText="OnPhoneConsultancy&nbsp;&nbsp;&nbsp;&nbsp;" SortExpression="OnPhoneConsultancy&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" />
                   
                </Columns>
                <EditRowStyle BackColor="#7C6F57" HorizontalAlign="Left" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" Width="500px" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT [UserName], [FullName], [Specialist], [EmergencyContactNumber], [Email], [VisitFee], [HospitalName], [HospitalAddress], [OnPhoneConsultancy] FROM [Doctorr] WHERE ([Specialist] = @Specialist) ORDER BY [Specialist]">
                <SelectParameters>
                    <asp:Parameter DefaultValue="Medicine" Name="Specialist" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
        
            <label class="col-xs-11" style="font-size:x-large"><br /><b>Cardiologist</b></label>
        <asp:GridView ID="GridView2" runat="server"  AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Font-Size="12pt">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="UserName" HeaderText="UserName&nbsp;&nbsp;&nbsp;&nbsp;" SortExpression="UserName&nbsp;&nbsp;&nbsp;&nbsp;" />
                <asp:BoundField DataField="FullName" HeaderText="FullName&nbsp;&nbsp;&nbsp;&nbsp;" SortExpression="FullName&nbsp;&nbsp;&nbsp;&nbsp;" />
                <asp:BoundField DataField="Specialist" HeaderText="Specialist&nbsp;&nbsp;&nbsp;&nbsp;" SortExpression="Specialist&nbsp;&nbsp;&nbsp;&nbsp;" />
                <asp:BoundField DataField="EmergencyContactNumber" HeaderText="EmergencyContactNumber&nbsp;&nbsp;&nbsp;&nbsp;" SortExpression="EmergencyContactNumber&nbsp;&nbsp;&nbsp;&nbsp;" />
                <asp:BoundField DataField="Email" HeaderText="Email&nbsp;&nbsp;&nbsp;&nbsp;" SortExpression="Email&nbsp;&nbsp;&nbsp;&nbsp;" />
                <asp:BoundField DataField="VisitFee" HeaderText="VisitFee&nbsp;&nbsp;&nbsp;&nbsp;" SortExpression="VisitFee&nbsp;&nbsp;&nbsp;&nbsp;" />
                <asp:BoundField DataField="HospitalName" HeaderText="HospitalName&nbsp;&nbsp;&nbsp;&nbsp;" SortExpression="HospitalName&nbsp;&nbsp;&nbsp;&nbsp;" />
                <asp:BoundField DataField="HospitalAddress" HeaderText="HospitalAddress&nbsp;&nbsp;&nbsp;&nbsp;" SortExpression="HospitalAddress&nbsp;&nbsp;&nbsp;&nbsp;" />
                <asp:BoundField DataField="OnPhoneConsultancy" HeaderText="OnPhoneConsultancy&nbsp;&nbsp;&nbsp;&nbsp;" SortExpression="OnPhoneConsultancy&nbsp;&nbsp;&nbsp;&nbsp;" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT [UserName], [FullName], [Specialist], [EmergencyContactNumber], [Email], [VisitFee], [HospitalName], [HospitalAddress], [OnPhoneConsultancy] FROM [Doctorr] WHERE ([Specialist] = @Specialist) ORDER BY [Did]">
            <SelectParameters>
                <asp:Parameter DefaultValue="Cardiologist" Name="Specialist" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        
            <label class="col-xs-11" style="font-size:x-large"><br /><b>Surgery</b></label>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT [UserName], [FullName], [Specialist], [EmergencyContactNumber], [Email], [VisitFee], [HospitalName], [HospitalAddress], [OnPhoneConsultancy] FROM [Doctorr] WHERE ([Specialist] = @Specialist) ORDER BY [Did]">
            <SelectParameters>
                <asp:Parameter DefaultValue="Surgery" Name="Specialist" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView4" runat="server" CssClass="mGrid1" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None" Font-Size="12pt" >
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="UserName" HeaderText="UserName&nbsp;&nbsp;&nbsp;&nbsp;" SortExpression="UserName&nbsp;&nbsp;&nbsp;&nbsp;" />
                <asp:BoundField DataField="FullName" HeaderText="FullName&nbsp;&nbsp;&nbsp;&nbsp;" SortExpression="FullName&nbsp;&nbsp;&nbsp;&nbsp;" />
                <asp:BoundField DataField="Specialist" HeaderText="Specialist&nbsp;&nbsp;&nbsp;&nbsp;" SortExpression="Specialist&nbsp;&nbsp;&nbsp;&nbsp;" />
                <asp:BoundField DataField="EmergencyContactNumber" HeaderText="EmergencyContactNumber&nbsp;&nbsp;&nbsp;&nbsp;" SortExpression="EmergencyContactNumber&nbsp;&nbsp;&nbsp;&nbsp;" />
                <asp:BoundField DataField="Email" HeaderText="Email&nbsp;&nbsp;&nbsp;&nbsp;" SortExpression="Email&nbsp;&nbsp;&nbsp;&nbsp;" />
                <asp:BoundField DataField="VisitFee" HeaderText="VisitFee&nbsp;&nbsp;&nbsp;&nbsp;" SortExpression="VisitFee&nbsp;&nbsp;&nbsp;&nbsp;" />
                <asp:BoundField DataField="HospitalName" HeaderText="HospitalName&nbsp;&nbsp;&nbsp;&nbsp;" SortExpression="HospitalName&nbsp;&nbsp;&nbsp;&nbsp;" />
                <asp:BoundField DataField="HospitalAddress" HeaderText="HospitalAddress&nbsp;&nbsp;&nbsp;&nbsp;" SortExpression="HospitalAddress&nbsp;&nbsp;&nbsp;&nbsp;" />
                <asp:BoundField DataField="OnPhoneConsultancy" HeaderText="OnPhoneConsultancy&nbsp;&nbsp;&nbsp;&nbsp;" SortExpression="OnPhoneConsultancy&nbsp;&nbsp;&nbsp;&nbsp;" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        
            
            <label class="col-xs-11" style="font-size:x-large"><br /><b>Oncologist</b></label>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT [UserName], [FullName], [Specialist], [EmergencyContactNumber], [Email], [VisitFee], [HospitalName], [HospitalAddress], [OnPhoneConsultancy] FROM [Doctorr] WHERE ([Specialist] = @Specialist) ORDER BY [Did]">
            <SelectParameters>
                <asp:Parameter DefaultValue="Oncologist" Name="Specialist" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView5" runat="server" CssClass="mGrid1" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource4" ForeColor="#333333" GridLines="None" Font-Size="12pt" >
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="UserName" HeaderText="UserName&nbsp;&nbsp;&nbsp;&nbsp;" SortExpression="UserName&nbsp;&nbsp;&nbsp;&nbsp;" />
                <asp:BoundField DataField="FullName" HeaderText="FullName&nbsp;&nbsp;&nbsp;&nbsp;" SortExpression="FullName&nbsp;&nbsp;&nbsp;&nbsp;" />
                <asp:BoundField DataField="Specialist" HeaderText="Specialist&nbsp;&nbsp;&nbsp;&nbsp;" SortExpression="Specialist&nbsp;&nbsp;&nbsp;&nbsp;" />
                <asp:BoundField DataField="EmergencyContactNumber" HeaderText="EmergencyContactNumber&nbsp;&nbsp;&nbsp;&nbsp;" SortExpression="EmergencyContactNumber&nbsp;&nbsp;&nbsp;&nbsp;" />
                <asp:BoundField DataField="Email" HeaderText="Email&nbsp;&nbsp;&nbsp;&nbsp;" SortExpression="Email&nbsp;&nbsp;&nbsp;&nbsp;" />
                <asp:BoundField DataField="VisitFee" HeaderText="VisitFee&nbsp;&nbsp;&nbsp;&nbsp;" SortExpression="VisitFee&nbsp;&nbsp;&nbsp;&nbsp;" />
                <asp:BoundField DataField="HospitalName" HeaderText="HospitalName&nbsp;&nbsp;&nbsp;&nbsp;" SortExpression="HospitalName&nbsp;&nbsp;&nbsp;&nbsp;" />
                <asp:BoundField DataField="HospitalAddress" HeaderText="HospitalAddress&nbsp;&nbsp;&nbsp;&nbsp;" SortExpression="HospitalAddress&nbsp;&nbsp;&nbsp;&nbsp;" />
                <asp:BoundField DataField="OnPhoneConsultancy" HeaderText="OnPhoneConsultancy&nbsp;&nbsp;&nbsp;&nbsp;" SortExpression="OnPhoneConsultancy&nbsp;&nbsp;&nbsp;&nbsp;" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
             </div>
      </div>

</asp:Content>