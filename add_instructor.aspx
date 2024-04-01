<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="add_instructor.aspx.cs" Inherits="istitution.add_instructor" %>

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
         <div ><h1 style="align-content:center">Add Instructor</h1></div>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="INSTRUCTORID" DataSourceID="SqlDataSource1" CssClass="form-view" DefaultMode="Insert">
                <EditItemTemplate>
                    INSTRUCTORID:
                    <asp:Label ID="INSTRUCTORIDLabel1" runat="server" Text='<%# Eval("INSTRUCTORID") %>' />
                    <br />
                    INSTRUCTORNAME:
                    <asp:TextBox ID="INSTRUCTORNAMETextBox" runat="server" Text='<%# Bind("INSTRUCTORNAME") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    INSTRUCTORID:
                    <asp:TextBox ID="INSTRUCTORIDTextBox" runat="server" Text='<%# Bind("INSTRUCTORID") %>' />
                    <br />
                    INSTRUCTORNAME:
                    <asp:TextBox ID="INSTRUCTORNAMETextBox" runat="server" Text='<%# Bind("INSTRUCTORNAME") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    INSTRUCTORID:
                    <asp:Label ID="INSTRUCTORIDLabel" runat="server" Text='<%# Eval("INSTRUCTORID") %>' />
                    <br />
                    INSTRUCTORNAME:
                    <asp:Label ID="INSTRUCTORNAMELabel" runat="server" Text='<%# Bind("INSTRUCTORNAME") %>' />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
&nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
&nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />

                </ItemTemplate>
            </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM &quot;INSTRUCTOR&quot;" DeleteCommand="DELETE FROM &quot;INSTRUCTOR&quot; WHERE &quot;INSTRUCTORID&quot; = :INSTRUCTORID" InsertCommand="INSERT INTO &quot;INSTRUCTOR&quot; (&quot;INSTRUCTORID&quot;, &quot;INSTRUCTORNAME&quot;) VALUES (:INSTRUCTORID, :INSTRUCTORNAME)" UpdateCommand="UPDATE &quot;INSTRUCTOR&quot; SET &quot;INSTRUCTORNAME&quot; = :INSTRUCTORNAME WHERE &quot;INSTRUCTORID&quot; = :INSTRUCTORID">
            <DeleteParameters>
                <asp:Parameter Name="INSTRUCTORID" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="INSTRUCTORID" Type="Decimal" />
                <asp:Parameter Name="INSTRUCTORNAME" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="INSTRUCTORNAME" Type="String" />
                <asp:Parameter Name="INSTRUCTORID" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
