<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DraftOrder.aspx.cs" Inherits="FantasyDraftOrder.DraftOrder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Fantasy Football Draft Order</title>
    <style type="text/css">
        .TeamBox {
            width: 50px;
            height: 10px;
        }
        .TeamTextBox {
            width: 100px;
            height: 15px;
        }
        .Helmet {
            height: 45px;
            width: 50px;
        }
        .TeamArrow {
            width: 75px;
            height: 50px;
        }
        html {
            background-color:darkgray;
        }
        .TeamTextBox {
            line-height:75px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1>
            <asp:Image ID="footballImage" runat="server" Height="60px" ImageUrl="~/Images1/Football.png" Width="75px" />
            <asp:Label ID="currentYearLabel" runat="server" Text="Year"></asp:Label>
        </h1>
        <p>
            What is the name of the league?&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="leagueNameTextBox" runat="server" BackColor="White" CssClass="TeamTextBox"></asp:TextBox>
&nbsp;&nbsp;
            <asp:Button ID="submitButton" runat="server" BorderStyle="Solid" BorderWidth="2px" Text="Submit" OnClick="submitButton_Click" />
        &nbsp;<asp:TextBox ID="randomizeLeagueTextBox" runat="server" Visible="False"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="randomizeButton" runat="server" BorderStyle="Solid" BorderWidth="2px" OnClick="randomizeButton_Click" Text="Randomize Order" CssClass="auto-style39" Width="138px" />
        </p>
        <h1 class="auto-style41">
            Use this section to change the draft order of the team names:</h1>
        <table border="0" style="background-color:deepskyblue;width:700px;" >
            <tr>
                <td class="auto-style35">
                    <asp:Image ID="redHelmetImage" runat="server" CssClass="Helmet" ImageUrl="~/Images1/RedHelmet.png" />
&nbsp;<asp:Image ID="team1Image" runat="server" CssClass="TeamArrow" ImageUrl="~/Images1/Team1.png" />
&nbsp;</td>
                <td class="auto-style36">
&nbsp;&nbsp;
                    <asp:TextBox ID="TeamBox1" runat="server" CssClass="TeamTextBox"></asp:TextBox>
                </td>
                <td class="auto-style37">
                    <asp:Image ID="brownHelmetImage" runat="server" CssClass="Helmet" ImageUrl="~/Images1/BrownHelmet.png" />
                    <asp:Image ID="team1Image10" runat="server" CssClass="TeamArrow" ImageUrl="~/Images1/Team7.png" />
                </td>
                <td class="auto-style38">
                    <asp:TextBox ID="TeamBox7" runat="server" CssClass="auto-style14"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style35">
                    <asp:Image ID="Image1" runat="server" CssClass="Helmet" ImageUrl="~/Images1/YellowHelmet.png" />
&nbsp;<asp:Image ID="team1Image11" runat="server" CssClass="TeamArrow" ImageUrl="~/Images1/Team2.png" />
&nbsp;</td>
                <td class="auto-style36">
&nbsp;&nbsp;<asp:TextBox ID="TeamBox2" runat="server" CssClass="TeamTextBox"></asp:TextBox>
                </td>
                <td class="auto-style37">
                    <asp:Image ID="tealHelmetImage" runat="server" CssClass="Helmet" ImageUrl="~/Images1/TealHelmet.png" />
                    <asp:Image ID="team1Image9" runat="server" CssClass="TeamArrow" ImageUrl="~/Images1/Team8.png" />
                </td>
                <td class="auto-style38">
                    <asp:TextBox ID="TeamBox8" runat="server" CssClass="auto-style15"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style35">
                    <asp:Image ID="blueHelmetImage" runat="server" CssClass="Helmet" ImageUrl="~/Images1/BlueHelmet.png" />
&nbsp;<asp:Image ID="team1Image1" runat="server" CssClass="TeamArrow" ImageUrl="~/Images1/Team3.png" />
&nbsp;</td>
                <td class="auto-style36">
&nbsp;&nbsp;<asp:TextBox ID="TeamBox3" runat="server" CssClass="TeamTextBox"></asp:TextBox>
                </td>
                <td class="auto-style37">
                    <asp:Image ID="purpleHelmetImage" runat="server" CssClass="Helmet" ImageUrl="~/Images1/PurpleHelmet.png" />
                    <asp:Image ID="team1Image8" runat="server" CssClass="TeamArrow" ImageUrl="~/Images1/Team9.png" />
                </td>
                <td class="auto-style38">
                    <asp:TextBox ID="TeamBox9" runat="server" CssClass="TeamTextBox"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style35">
                    <asp:Image ID="greenHelmetImage" runat="server" CssClass="Helmet" ImageUrl="~/Images1/GreenHelmet.png" />
&nbsp;<asp:Image ID="team1Image2" runat="server" CssClass="TeamArrow" ImageUrl="~/Images1/Team4.png" />
&nbsp;</td>
                <td class="auto-style36">
&nbsp;&nbsp;
                    <asp:TextBox ID="TeamBox4" runat="server" CssClass="TeamTextBox"></asp:TextBox>
                </td>
                <td class="auto-style37">
                    <asp:Image ID="Image2" runat="server" CssClass="Helmet" ImageUrl="~/Images1/GrayHelmet.png" />
                    <asp:Image ID="team1Image7" runat="server" CssClass="TeamArrow" ImageUrl="~/Images1/Team10.png" />
                </td>
                <td class="auto-style38">
                    <asp:TextBox ID="TeamBox10" runat="server" CssClass="TeamTextBox"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style35">
                    <asp:Image ID="orangeHelmetImage" runat="server" CssClass="Helmet" ImageUrl="~/Images1/OrangeHelmet.png" />
&nbsp;<asp:Image ID="team1Image3" runat="server" CssClass="TeamArrow" ImageUrl="~/Images1/Team5.png" />
&nbsp;</td>
                <td class="auto-style36">
&nbsp;&nbsp;<asp:TextBox ID="TeamBox5" runat="server" CssClass="TeamTextBox"></asp:TextBox>
                </td>
                <td class="auto-style37">
                    <asp:Image ID="maroonHelmetImage" runat="server" CssClass="Helmet" ImageUrl="~/Images1/MaroonHelmet.png" />
                    <asp:Image ID="team1Image6" runat="server" CssClass="TeamArrow" ImageUrl="~/Images1/Team11.png" />
                </td>
                <td class="auto-style38">
                    <asp:TextBox ID="TeamBox11" runat="server" CssClass="TeamTextBox"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style35">
                    <asp:Image ID="blackHelmetImage" runat="server" CssClass="Helmet" ImageUrl="~/Images1/BlackHelmet.png" />
&nbsp;<asp:Image ID="team1Image4" runat="server" CssClass="TeamArrow" ImageUrl="~/Images1/Team6.png" />
&nbsp;</td>
                <td class="auto-style36">
&nbsp;&nbsp;
                    <asp:TextBox ID="TeamBox6" runat="server" CssClass="TeamTextBox"></asp:TextBox>
                </td>
                <td class="auto-style37">
                    <asp:Image ID="pinkHelmetImage" runat="server" CssClass="Helmet" ImageUrl="~/Images1/PinkHelmet.png" />
                    <asp:Image ID="team1Image5" runat="server" CssClass="TeamArrow" ImageUrl="~/Images1/Team12.png" EnableTheming="True" />
                </td>
                <td class="auto-style38">
                    <asp:TextBox ID="TeamBox12" runat="server" CssClass="TeamTextBox"></asp:TextBox>
                </td>
            </tr>
        </table>
        <br />
        <h1 class="auto-style40">Use this section to change team names:</h1>
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Draft_Order" DataSourceID="draftOrderDataSource" Height="497px" PageSize="12">
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="Draft_Order" HeaderText="Draft Order" ReadOnly="True" SortExpression="Draft_Order" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            </Columns>
        </asp:GridView>
        <br />
        <asp:SqlDataSource ID="draftOrderDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:DraftOrderConnectionString1 %>" DeleteCommand="DELETE FROM [Table] WHERE [Draft Order] = @Draft_Order" InsertCommand="INSERT INTO [Table] ([Draft Order], [Name], [League Name]) VALUES (@Draft_Order, @Name, @League_Name)" SelectCommand="SELECT [Draft Order] AS Draft_Order, [Name], [League Name] AS League_Name FROM [Table]" UpdateCommand="UPDATE [Table] SET [Name] = @Name, [League Name] = @League_Name WHERE [Draft Order] = @Draft_Order">
            <DeleteParameters>
                <asp:Parameter Name="Draft_Order" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Draft_Order" Type="Int32" />
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="League_Name" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="League_Name" Type="String" />
                <asp:Parameter Name="Draft_Order" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        &nbsp;
        <br />
        <br />
    </form>
</body>
</html>

<style>
    table {
        height: 500px;
        width: 600px;
    }
    tr, td {
        border: 2px solid black;

    }

    td {
        text-align:center;
        padding:15px 0;
    }



    .TeamArrow {
        width: 100px;
        height: 75px;
    }
    .TeamTextBox {
        position: relative;
    }
    .TeamTextBox {
    }
    .Helmet {
        width: 75px;
        height: 75px;
    }
    .TeamArrow {
        width: 75px;
        height: 75px;
    }



    .auto-style14 {
        width: 100px;
        height: 15px;
        line-height: 75px;
        position: relative;
        margin-bottom: 0px;
    }
    .auto-style15 {
        width: 100px;
        height: 15px;
        line-height: 75px;
        position: relative;
        left: 4px;
        top: -2px;
    }
    .newStyle1 {
        width: 500px;
        height: 750px;
    }
    .auto-style35 {
        height: 100px;
        width: 189px;
    }
    .auto-style36 {
        height: 100px;
        width: 143px;
    }
    .auto-style37 {
        height: 100px;
        width: 192px;
    }
    .auto-style38 {
        height: 100px;
        width: 129px;
    }



    .auto-style39 {
        margin-bottom: 0px;
    }



    .auto-style40 {
        text-decoration: underline;
    }
    .auto-style41 {
        color: #000000;
    }



</style>
