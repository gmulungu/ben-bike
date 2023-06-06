<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SendEmail.aspx.cs" Inherits="BenBikes.SendEmail" %>

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
            Recipient Email Address
            <asp:TextBox ID="txtEmailAddress" runat="server" style="margin-left: 417px" Width="433px"></asp:TextBox>
        </p>
        <p>
            Section 1 - Background Information (to be completed prior to the interview)
        </p>
        <p>
            &nbsp;</p>
        <p>
            Project Name<asp:TextBox ID="txtProjectName" runat="server" style="margin-left: 405px" Width="172px"></asp:TextBox>
        </p>
        <p>
&nbsp;Contact Person
            <asp:TextBox ID="txtContactPerson" runat="server" style="margin-left: 390px" Width="172px"></asp:TextBox>
        </p>
        <p>
            Date of Distribution
            <asp:Calendar ID="dtDistribution" runat="server" Height="16px" style="margin-left: 492px" Width="263px"></asp:Calendar>
        </p>
        <p>
            Area of Distribution
            <asp:TextBox ID="txtAreaDistribution" runat="server" style="margin-left: 369px" Width="172px"></asp:TextBox>
        </p>
        <p>
            Number of Bikes Distributed<asp:TextBox ID="txtBikesDistributed" runat="server" style="margin-left: 319px" Width="172px"></asp:TextBox>
        </p>
        <p>
&nbsp;Type of Project
            <asp:DropDownList ID="dlProjectType" runat="server" style="margin-left: 392px">
                <asp:ListItem>Scholar Transport</asp:ListItem>
                <asp:ListItem>Worker Transport - Commuter</asp:ListItem>
                <asp:ListItem>SMME Deliveries</asp:ListItem>
                <asp:ListItem>Disaster Relief</asp:ListItem>
                <asp:ListItem>Neighbourhood Watch/Security</asp:ListItem>
                <asp:ListItem>Other</asp:ListItem>
            </asp:DropDownList>
        </p>
        <p>
            MOU signed
            <asp:DropDownList ID="dlMOU" runat="server" style="margin-left: 409px; margin-bottom: 0px;" Height="16px">
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
            </asp:DropDownList>
        </p>
        <p>
            &nbsp;</p>

        <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" style="margin-left: 404px" Text="Submit" Width="714px" />
        <p>
            &nbsp;</p>
             <p>
            &nbsp;</p>
        <asp:Button ID="btnMainMenu" runat="server" OnClick="btnMainMenu_Click" style="margin-left: 404px" Text="Main Menu" Width="714px" />
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
