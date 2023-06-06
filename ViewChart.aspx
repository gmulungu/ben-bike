<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewChart.aspx.cs" Inherits="BenBikes.ViewChart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 744px;
        }
        .auto-style2 {
            height: 32px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Chart ID="crtDisplay" runat="server" DataSourceID="SqlDataSource1" Palette="Fire">
                <Series>
                    <asp:Series Name="Series1" ChartType="Pie">
                    </asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1">
                    </asp:ChartArea>
                </ChartAreas>
            </asp:Chart>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
        </div>
    <table cellpadding="2" class="auto-style1">
                <tr>
                    <td class="auto-style8" colspan="2">Chart The Percentage Of Bikes In Use For The Chosen Project</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Select Project To Chart</td>
                    <td>
                        <asp:DropDownList ID="ddlPercentageUsed" runat="server" DataSourceID="SqlDataSource2" DataTextField="ProjectName" DataValueField="ProjectName">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [ProjectName] FROM [ProjectInformation]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2"></td>
                    <td class="auto-style2">
                        <asp:Button ID="btnPercentageUse" runat="server" OnClick="btnPercentageUse_Click" Text="Update Chart" />
                    </td>
                </tr>
            </table>
        <table cellpadding="2" class="auto-style1">
                <tr>
                    <td class="auto-style8" colspan="2">Chart The Number Of Records</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Select Record To Chart</td>
                    <td>
                        <asp:DropDownList ID="ddlChartRecords" runat="server">
                            <asp:ListItem Value="TypeOfProject">Project Type</asp:ListItem>
                            <asp:ListItem Value="BikeUsedAmount">Bike Usage Amount</asp:ListItem>
                            <asp:ListItem Value="TripDistance">Average Trip Distance</asp:ListItem>
                            <asp:ListItem Value="BikeRunningOrder">Bike Condition</asp:ListItem>
                            <asp:ListItem Value="BikeIssues">Common Issues</asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [ProjectName] FROM [ProjectInformation]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2"></td>
                    <td class="auto-style2">
                        <asp:Button ID="btnChartRecords" runat="server" OnClick="btnChartRecords_Click" Text="Update Chart" />
                        <br />
                        <br />
                        <br />
                        <asp:Button ID="btnMainMenu" runat="server" OnClick="btnMainMenu_Click" Text="Main Menu" Width="115px" />
                    </td>
                </tr>
            </table>
    </form>
    </body>
</html>
