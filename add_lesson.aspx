<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="add_lesson.aspx.cs" Inherits="istitution.add_lesson" %>

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
         <div ><h1 style="align-content:center">Add Lesson</h1></div>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="LESSONNO" DataSourceID="SqlDataSource1" CssClass="form-view" DefaultMode="Insert">
                <EditItemTemplate>
                    LESSONNO:
                    <asp:Label ID="LESSONNOLabel1" runat="server" Text='<%# Eval("LESSONNO") %>' />
                    <br />
                    COURSEID:
                    <asp:TextBox ID="COURSEIDTextBox" runat="server" Text='<%# Bind("COURSEID") %>' />
                    <br />
                    LESSONTITLE:
                    <asp:TextBox ID="LESSONTITLETextBox" runat="server" Text='<%# Bind("LESSONTITLE") %>' />
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
                    LESSONTITLE:
                    <asp:TextBox ID="LESSONTITLETextBox" runat="server" Text='<%# Bind("LESSONTITLE") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    LESSONNO:
                    <asp:Label ID="LESSONNOLabel" runat="server" Text='<%# Eval("LESSONNO") %>' />
                    <br />
                    COURSEID:
                    <asp:Label ID="COURSEIDLabel" runat="server" Text='<%# Bind("COURSEID") %>' />
                    <br />
                    LESSONTITLE:
                    <asp:Label ID="LESSONTITLELabel" runat="server" Text='<%# Bind("LESSONTITLE") %>' />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
&nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
&nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />

                </ItemTemplate>
            </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM &quot;LESSON&quot;" DeleteCommand="DELETE FROM &quot;LESSON&quot; WHERE &quot;LESSONNO&quot; = :LESSONNO" InsertCommand="INSERT INTO &quot;LESSON&quot; (&quot;LESSONNO&quot;, &quot;COURSEID&quot;, &quot;LESSONTITLE&quot;) VALUES (:LESSONNO, :COURSEID, :LESSONTITLE)" UpdateCommand="UPDATE &quot;LESSON&quot; SET &quot;COURSEID&quot; = :COURSEID, &quot;LESSONTITLE&quot; = :LESSONTITLE WHERE &quot;LESSONNO&quot; = :LESSONNO">
            <DeleteParameters>
                <asp:Parameter Name="LESSONNO" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="LESSONNO" Type="Decimal" />
                <asp:Parameter Name="COURSEID" Type="Decimal" />
                <asp:Parameter Name="LESSONTITLE" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="COURSEID" Type="Decimal" />
                <asp:Parameter Name="LESSONTITLE" Type="String" />
                <asp:Parameter Name="LESSONNO" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
