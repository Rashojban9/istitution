<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Addstudent.aspx.cs" Inherits="istitution.Addstudent" %>


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
         <div ><h1 style="align-content:center">Add Student</h1></div>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID" DataSourceID="SqlDataSource1" CssClass="form-view" DefaultMode="Insert">
                <EditItemTemplate>
                    ID:
                    <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
                    <br />
                    STUDENT_NAME:
                    <asp:TextBox ID="STUDENT_NAMETextBox" runat="server" Text='<%# Bind("STUDENT_NAME") %>' />
                    <br />
                    CONTACT:
                    <asp:TextBox ID="CONTACTTextBox" runat="server" Text='<%# Bind("CONTACT") %>' />
                    <br />
                    DOB:
                    <asp:TextBox ID="DOBTextBox" runat="server" Text='<%# Bind("DOB") %>' />
                    <br />
                    EMAIL:
                    <asp:TextBox ID="EMAILTextBox" runat="server" Text='<%# Bind("EMAIL") %>' />
                    <br />
                    COUNTRY:
                    <asp:TextBox ID="COUNTRYTextBox" runat="server" Text='<%# Bind("COUNTRY") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    ID:
                    <asp:TextBox ID="IDTextBox" runat="server" Text='<%# Bind("ID") %>' />
                    <br />
                    STUDENT_NAME:
                    <asp:TextBox ID="STUDENT_NAMETextBox" runat="server" Text='<%# Bind("STUDENT_NAME") %>' />
                    <br />
                    CONTACT:
                    <asp:TextBox ID="CONTACTTextBox" runat="server" Text='<%# Bind("CONTACT") %>' />
                    <br />
                    DOB:
                    <asp:TextBox ID="DOBTextBox" runat="server" Text='<%# Bind("DOB") %>' />
                    <br />
                    EMAIL:
                    <asp:TextBox ID="EMAILTextBox" runat="server" Text='<%# Bind("EMAIL") %>' />
                    <br />
                    COUNTRY:
                    <asp:TextBox ID="COUNTRYTextBox" runat="server" Text='<%# Bind("COUNTRY") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    ID:
                    <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                    <br />
                    STUDENT_NAME:
                    <asp:Label ID="STUDENT_NAMELabel" runat="server" Text='<%# Bind("STUDENT_NAME") %>' />
                    <br />
                    CONTACT:
                    <asp:Label ID="CONTACTLabel" runat="server" Text='<%# Bind("CONTACT") %>' />
                    <br />
                    DOB:
                    <asp:Label ID="DOBLabel" runat="server" Text='<%# Bind("DOB") %>' />
                    <br />
                    EMAIL:
                    <asp:Label ID="EMAILLabel" runat="server" Text='<%# Bind("EMAIL") %>' />
                    <br />

                    COUNTRY:
                    <asp:Label ID="COUNTRYLabel" runat="server" Text='<%# Bind("COUNTRY") %>' />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />

                </ItemTemplate>
            </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM &quot;STUDENTS&quot;" DeleteCommand="DELETE FROM &quot;STUDENTS&quot; WHERE &quot;ID&quot; = :ID" InsertCommand="INSERT INTO &quot;STUDENTS&quot; (&quot;ID&quot;, &quot;STUDENT_NAME&quot;, &quot;CONTACT&quot;, &quot;DOB&quot;, &quot;EMAIL&quot;, &quot;COUNTRY&quot;) VALUES (:ID, :STUDENT_NAME, :CONTACT, :DOB, :EMAIL, :COUNTRY)" UpdateCommand="UPDATE &quot;STUDENTS&quot; SET &quot;STUDENT_NAME&quot; = :STUDENT_NAME, &quot;CONTACT&quot; = :CONTACT, &quot;DOB&quot; = :DOB, &quot;EMAIL&quot; = :EMAIL, &quot;COUNTRY&quot; = :COUNTRY WHERE &quot;ID&quot; = :ID">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ID" Type="Decimal" />
                <asp:Parameter Name="STUDENT_NAME" Type="String" />
                <asp:Parameter Name="CONTACT" Type="String" />
                <asp:Parameter Name="DOB" Type="DateTime" />
                <asp:Parameter Name="EMAIL" Type="String" />
                <asp:Parameter Name="COUNTRY" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="STUDENT_NAME" Type="String" />
                <asp:Parameter Name="CONTACT" Type="String" />
                <asp:Parameter Name="DOB" Type="DateTime" />
                <asp:Parameter Name="EMAIL" Type="String" />
                <asp:Parameter Name="COUNTRY" Type="String" />
                <asp:Parameter Name="ID" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
