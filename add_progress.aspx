<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="add_progress.aspx.cs" Inherits="istitution.add_progress" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">


        .form-view {
            width: 100%;
            padding: 20px;
        }

        .form-view label {
            font-weight: bold;
            margin-bottom: 5px;
            display: block;
        }

        .form-view input[type=text] {
            width: calc(100% - 20px); /* Adjusting for padding */
            padding: 10px;
            margin: 8px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }

        .form-view .cancel-button {
            background-color: #f44336;
        }

        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
         <div ><h1 style="align-content:center">Add Progress</h1></div>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="LESSONNO,COURSEID,STUDENTID" DataSourceID="SqlDataSource1" CssClass="form-view" DefaultMode="Insert">
                <EditItemTemplate>
                    LESSONNO:
                    <asp:Label ID="LESSONNOLabel1" runat="server" Text='<%# Eval("LESSONNO") %>' />
                    <br />
                    COURSEID:
                    <asp:Label ID="COURSEIDLabel1" runat="server" Text='<%# Eval("COURSEID") %>' />
                    <br />
                    STUDENTID:
                    <asp:Label ID="STUDENTIDLabel1" runat="server" Text='<%# Eval("STUDENTID") %>' />
                    <br />
                    STATUS:
                    <asp:TextBox ID="STATUSTextBox" runat="server" Text='<%# Bind("STATUS") %>' />
                    <br />
                    LASTACCESSEDDATE:
                    <asp:TextBox ID="LASTACCESSEDDATETextBox" runat="server" Text='<%# Bind("LASTACCESSEDDATE") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    LESSONNO:
                    <asp:TextBox ID="LESSONNOTextBox" runat="server" Text='<%# Bind("LESSONNO") %>' />
                    <br />
                    COURSEID:
                    <asp:TextBox ID="COURSEIDTextBox" runat="server" Text='<%# Bind("COURSEID") %>' />
                    <br />
                    STUDENTID:
                    <asp:TextBox ID="STUDENTIDTextBox" runat="server" Text='<%# Bind("STUDENTID") %>' />
                    <br />
                    STATUS:
                    <asp:TextBox ID="STATUSTextBox" runat="server" Text='<%# Bind("STATUS") %>' />
                    <br />
                    LASTACCESSEDDATE:
                    <asp:TextBox ID="LASTACCESSEDDATETextBox" runat="server" Text='<%# Bind("LASTACCESSEDDATE") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    LESSONNO:
                    <asp:Label ID="LESSONNOLabel" runat="server" Text='<%# Eval("LESSONNO") %>' />
                    <br />
                    COURSEID:
                    <asp:Label ID="COURSEIDLabel" runat="server" Text='<%# Eval("COURSEID") %>' />
                    <br />
                    STUDENTID:
                    <asp:Label ID="STUDENTIDLabel" runat="server" Text='<%# Eval("STUDENTID") %>' />
                    <br />
                    STATUS:
                    <asp:Label ID="STATUSLabel" runat="server" Text='<%# Bind("STATUS") %>' />
                    <br />
                    LASTACCESSEDDATE:
                    <asp:Label ID="LASTACCESSEDDATELabel" runat="server" Text='<%# Bind("LASTACCESSEDDATE") %>' />
                    <br />

                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />

                </ItemTemplate>
            </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM &quot;STATUS&quot;" DeleteCommand="DELETE FROM &quot;STATUS&quot; WHERE &quot;LESSONNO&quot; = :LESSONNO AND &quot;COURSEID&quot; = :COURSEID AND &quot;STUDENTID&quot; = :STUDENTID" InsertCommand="INSERT INTO &quot;STATUS&quot; (&quot;LESSONNO&quot;, &quot;COURSEID&quot;, &quot;STUDENTID&quot;, &quot;STATUS&quot;, &quot;LASTACCESSEDDATE&quot;) VALUES (:LESSONNO, :COURSEID, :STUDENTID, :STATUS, :LASTACCESSEDDATE)" UpdateCommand="UPDATE &quot;STATUS&quot; SET &quot;STATUS&quot; = :STATUS, &quot;LASTACCESSEDDATE&quot; = :LASTACCESSEDDATE WHERE &quot;LESSONNO&quot; = :LESSONNO AND &quot;COURSEID&quot; = :COURSEID AND &quot;STUDENTID&quot; = :STUDENTID">
            <DeleteParameters>
                <asp:Parameter Name="LESSONNO" Type="Decimal" />
                <asp:Parameter Name="COURSEID" Type="Decimal" />
                <asp:Parameter Name="STUDENTID" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="LESSONNO" Type="Decimal" />
                <asp:Parameter Name="COURSEID" Type="Decimal" />
                <asp:Parameter Name="STUDENTID" Type="Decimal" />
                <asp:Parameter Name="STATUS" Type="String" />
                <asp:Parameter Name="LASTACCESSEDDATE" Type="DateTime" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="STATUS" Type="String" />
                <asp:Parameter Name="LASTACCESSEDDATE" Type="DateTime" />
                <asp:Parameter Name="LESSONNO" Type="Decimal" />
                <asp:Parameter Name="COURSEID" Type="Decimal" />
                <asp:Parameter Name="STUDENTID" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>

