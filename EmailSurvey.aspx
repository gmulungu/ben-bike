<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmailSurvey.aspx.cs" Inherits="BenBikes.EmailSurvey" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            QUESTIONAIRE<br />
        </div>
         <p>
            Project Name
            <asp:TextBox ID="txtProjectName" runat="server" style="margin-left: 417px" Width="433px"></asp:TextBox>
        </p>
        <p>
            &nbsp;</p>
        <p>
            Section 1 - Bicycle Usage </p>
        <p>
            Are the bikes still being used? <asp:DropDownList ID="dlBikesUsed" runat="server" style="margin-left: 305px">
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
            </asp:DropDownList>
        </p>
        <p>
            How often are the bikes used?
            <asp:DropDownList ID="dlUsageFrequency" runat="server" style="margin-left: 302px">
                <asp:ListItem>Daily</asp:ListItem>
                <asp:ListItem>Weekly</asp:ListItem>
                <asp:ListItem>Monthly</asp:ListItem>
                <asp:ListItem>N/A</asp:ListItem>
            </asp:DropDownList>
        </p>
        <p>
            Estimate the average trip distance<asp:DropDownList ID="dlTripDistance" runat="server" style="margin-left: 292px">
                <asp:ListItem>&lt;1km</asp:ListItem>
                <asp:ListItem>1-3km</asp:ListItem>
                <asp:ListItem>3-5km</asp:ListItem>
                <asp:ListItem>&gt;5km</asp:ListItem>
                <asp:ListItem>N/A</asp:ListItem>
            </asp:DropDownList>
        </p>
        <p>
&nbsp;How many people are using the bikes?<asp:TextBox ID="txtUsedAmount" runat="server" style="margin-left: 260px" Width="172px"></asp:TextBox>
        </p>
        <p>
&nbsp;What are the bikes being used for?
            <asp:DropDownList ID="dlUsageReason" runat="server" style="margin-left: 278px">
                <asp:ListItem>Scholar Transport</asp:ListItem>
                <asp:ListItem>Worker Transport - Commuter</asp:ListItem>
                <asp:ListItem>SMME Deliveries</asp:ListItem>
                <asp:ListItem>Disaster Relief</asp:ListItem>
                <asp:ListItem>Neighbourhood Watch/Security</asp:ListItem>
                <asp:ListItem>Other</asp:ListItem>
            </asp:DropDownList>
        </p>
        <p>
            &nbsp;</p>
        <p>
            Section 2 - Bicycle Condition</p>
        <p>
&nbsp;Are the bikes still in running order?
            <asp:DropDownList ID="dlRunningOrder" runat="server" style="margin-left: 279px">
                <asp:ListItem>All are still running</asp:ListItem>
                <asp:ListItem>Most are still running</asp:ListItem>
                <asp:ListItem Value="Some are still running">Some are still running</asp:ListItem>
                <asp:ListItem>None are still running</asp:ListItem>
            </asp:DropDownList>
        </p>
        <p>
            What are the main issues regarding the condition of the bikes?
            <asp:DropDownList ID="dlIssues" runat="server" style="margin-left: 117px">
                <asp:ListItem>Tyres</asp:ListItem>
                <asp:ListItem>Brakes</asp:ListItem>
                <asp:ListItem>Chains</asp:ListItem>
                <asp:ListItem>Cranks/Pedals</asp:ListItem>
                <asp:ListItem>Saddle</asp:ListItem>
                <asp:ListItem>Other</asp:ListItem>
            </asp:DropDownList>
        </p>
        <p>
            &nbsp;</p>
        <p>
            Section 3 - Impact </p>
        <p>
            How has the project/organisation benefitted from the bikes?<asp:TextBox ID="txtProjectBenefit" runat="server" style="margin-left: 136px" Width="172px"></asp:TextBox>
        </p>
        <p>
&nbsp;Who has benefitted from the bikes?
            <asp:TextBox ID="txtUserBenefit" runat="server" style="margin-left: 278px" Width="172px"></asp:TextBox>
        </p>
        <p>
            &nbsp;</p>
        <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" style="margin-left: 404px" Text="Submit" Width="714px" />
        <p>
            &nbsp;</p>
             <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
