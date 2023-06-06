<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewData.aspx.cs" Inherits="BenBikes.ViewData" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 13px;
        }
        .auto-style5 {
            height: 25px;
            width: 258px;
        }
        }
        .auto-style8 {
            width: 100%;
            height: 25px;
        }
        .auto-style9 {
            width: 42px;
        }
        }
        .auto-style10 {
            width: 50px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table cellpadding="2" class="auto-style8">
                <tr>
                    <td class="auto-style2" colspan="2"><strong>View Data</strong></td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="ProjectName" DataSourceID="SqlDataSource1" ForeColor="Black" Width="100%">
                            <Columns>
                                <asp:BoundField DataField="ProjectName" HeaderText="Project Name" ReadOnly="True" SortExpression="ProjectName" />
                                <asp:BoundField DataField="Interviewer" HeaderText="Interviewer" SortExpression="Interviewer" />
                                <asp:BoundField DataField="DateOfInterview" HeaderText="Interview Date" SortExpression="DateOfInterview" DataFormatString="{0:d}" />
                                <asp:BoundField DataField="ContactPerson" HeaderText="Contact Person" SortExpression="ContactPerson" />
                                <asp:BoundField DataField="DateOfDistribution" HeaderText="Distribution Date" SortExpression="DateOfDistribution" DataFormatString="{0:d}" />
                                <asp:BoundField DataField="AreaOfDistribution" HeaderText="Distribution Area" SortExpression="AreaOfDistribution" />
                                <asp:BoundField DataField="NumberOfBikesDistributed" HeaderText="# Of Bikes Distributed" SortExpression="NumberOfBikesDistributed" />
                                <asp:BoundField DataField="TypeOfProject" HeaderText="Project Type" SortExpression="TypeOfProject" />
                                <asp:BoundField DataField="MOUSigned" HeaderText="MOU Signed" SortExpression="MOUSigned" />
                                <asp:BoundField DataField="BikeUsedBoolean" HeaderText="Bikes Being Used?" SortExpression="BikeUsedBoolean" />
                                <asp:BoundField DataField="BikeUsageFrequency" HeaderText="Bike Usage Amount" SortExpression="BikeUsageFrequency" />
                                <asp:BoundField DataField="TripDistance" HeaderText="Average Trip Distance" SortExpression="TripDistance" />
                                <asp:BoundField DataField="BikeUsedAmount" HeaderText="# Of People Using The Bikes" SortExpression="BikeUsedAmount" />
                                <asp:BoundField DataField="BikeUsageReason" HeaderText="Reason For Usage" SortExpression="BikeUsageReason" />
                                <asp:BoundField DataField="BikeRunningOrder" HeaderText="Bike Condition" SortExpression="BikeRunningOrder" />
                                <asp:BoundField DataField="BikeIssues" HeaderText="Common Issues" SortExpression="BikeIssues" />
                                <asp:BoundField DataField="ProjectBenefit" HeaderText="Benefit To Project" SortExpression="ProjectBenefit" />
                                <asp:BoundField DataField="UserBenefit" HeaderText="Who Is Benefitting" SortExpression="UserBenefit" />
                            </Columns>
                            <FooterStyle BackColor="#CCCCCC" />
                            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#CCCCCC" BorderStyle="Solid" BorderWidth="5px" ForeColor="Black" HorizontalAlign="Left" />
                            <RowStyle BackColor="White" BorderWidth="5px" />
                            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="Gray" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#383838" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT PI.ProjectName, PI.Interviewer, PI.DateOfInterview, PI.ContactPerson, PI.DateOfDistribution, PI.AreaOfDistribution, PI.NumberOfBikesDistributed, PI.TypeOfProject, PI.MOUSigned, BU.BikeUsedBoolean, BU.BikeUsageFrequency, BU.TripDistance, BU.BikeUsedAmount, BU.BikeUsageReason, BC.BikeRunningOrder, BC.BikeIssues, I.ProjectBenefit, I.UserBenefit
FROM ProjectInformation PI, BikeUsage BU, BikeCondition BC, Impact I
WHERE PI.ProjectName = BU.ProjectName AND PI.ProjectName = BC.ProjectName AND PI.ProjectName = I.ProjectName"></asp:SqlDataSource>
                    </td>
                    <td class="auto-style5"></td>
                </tr>
                </table>
            <table cellpadding="2" class="auto-style8">
                <tr>
                    <td class="auto-style2" colspan="2"><strong>Filter Results</strong></td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style10">Column To Filter By</td>
                    <td>
                        <asp:DropDownList ID="ddlColumn" runat="server">
                            <asp:ListItem Value="ProjectName">Project Name</asp:ListItem>
                            <asp:ListItem>Interviewer</asp:ListItem>
                            <asp:ListItem Value="DateOfInterview">Interview Date</asp:ListItem>
                            <asp:ListItem Value="Contact Person"></asp:ListItem>
                            <asp:ListItem Value="DateOfDistribution">Distribution Date</asp:ListItem>
                            <asp:ListItem Value="AreaOfDistribution">Distribution Area</asp:ListItem>
                            <asp:ListItem Value="NumberOfBikesDistributed"># Of Bikes Distributed</asp:ListItem>
                            <asp:ListItem Value="TypeOfProject">Project Type</asp:ListItem>
                            <asp:ListItem Value="MOUSigned">MOU Signed</asp:ListItem>
                            <asp:ListItem Value="BikeUsedBoolean">Bikes Being Used?</asp:ListItem>
                            <asp:ListItem Value="BikeUsageFrequency">Bike Usage Amount</asp:ListItem>
                            <asp:ListItem Value="TripDistance">Average Trip Distance</asp:ListItem>
                            <asp:ListItem Value="BikeUsedAmount"># Of People Using The Bikes</asp:ListItem>
                            <asp:ListItem Value="BikeUsageReason">Reason For Usage</asp:ListItem>
                            <asp:ListItem Value="BikeRunningOrder">Bike Condition</asp:ListItem>
                            <asp:ListItem Value="BikeIssues">Common Issues</asp:ListItem>
                            <asp:ListItem Value="ProjectBenefit">Benefit To Project</asp:ListItem>
                            <asp:ListItem Value="UserBenefit">Who Is Benefitting</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">Phrase to filter by</td>
                    <td>
                        <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="btnFilter" runat="server" OnClick="btnFilter_Click" Text="Filter Results" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td>
                        <asp:Button ID="btnClearFilter" runat="server" OnClick="btnClearFilter_Click" Text="Clear Filter" Width="115px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td>
                        <asp:Button ID="btnMainMenu" runat="server" OnClick="btnMainMenu_Click" Text="Main Menu" Width="115px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9"></td>
                    <td class="auto-style2"></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
