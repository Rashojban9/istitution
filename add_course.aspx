<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="add_course.aspx.cs" Inherits="istitution.add_course" %>

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
         <div ><h1 style="align-content:center">Add Course</h1></div>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID" DataSourceID="SqlDataSource1" CssClass="form-view" DefaultMode="Insert">
                <EditItemTemplate>
                    ID:
                    <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
                    <br />
                    COURSE_TITLE:
                    <asp:TextBox ID="COURSE_TITLETextBox" runat="server" Text='<%# Bind("COURSE_TITLE") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    ID:
                    <asp:TextBox ID="IDTextBox" runat="server" Text='<%# Bind("ID") %>' />
                    <br />
                    COURSE_TITLE:
                    <asp:TextBox ID="COURSE_TITLETextBox" runat="server" Text='<%# Bind("COURSE_TITLE") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    ID:
                    <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                    <br />
                    COURSE_TITLE:
                    <asp:Label ID="COURSE_TITLELabel" runat="server" Text='<%# Bind("COURSE_TITLE") %>' />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
&nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
&nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />

                </ItemTemplate>
            </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM &quot;COURSE&quot;" DeleteCommand="DELETE FROM &quot;COURSE&quot; WHERE &quot;ID&quot; = :ID" InsertCommand="INSERT INTO &quot;COURSE&quot; (&quot;ID&quot;, &quot;COURSE_TITLE&quot;) VALUES (:ID, :COURSE_TITLE)" UpdateCommand="UPDATE &quot;COURSE&quot; SET &quot;COURSE_TITLE&quot; = :COURSE_TITLE WHERE &quot;ID&quot; = :ID">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ID" Type="Decimal" />
                <asp:Parameter Name="COURSE_TITLE" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="COURSE_TITLE" Type="String" />
                <asp:Parameter Name="ID" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>

