<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Progress.aspx.cs" Inherits="istitution.Progress" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Progress</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        html, body, .container {
            height: 100%;
        }

        .sidebar {
            width: 250px;
            height: 100%;
            position: fixed;
            top: 0;
            left: 0;
            background: linear-gradient(to right, #333, #666);
            overflow-x: hidden;
            padding-top: 20px;
        }

        .sidebar h1 {
            color: #fff;
            text-align: center;
        }

        .sidebar a {
            padding: 12px 20px;
            text-decoration: none;
            font-size: 18px;
            color: #fff;
            display: block;
            transition: background-color 0.3s;
        }

        .sidebar a:hover {
            background-color: #555;
        }

        .sidebar a.active {
            background-color: #4CAF50;
        }

        .container {
            margin-left: 250px;
            max-width: 1200px;
            margin-top: 0; /* Remove top margin */
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            color: #333;
        }

        .custom-gridview {
            width: 100%;
            border-collapse: collapse;
            border: 1px solid #ddd;
            margin-top: 20px;
        }

        .custom-gridview th, .custom-gridview td {
            padding: 12px;
            border: 1px solid #ddd;
        }

        .custom-gridview th {
            background-color: #f2f2f2;
            color: #333;
            font-weight: bold;
            text-align: left;
        }

        .custom-gridview tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        .custom-gridview tr:hover {
            background-color: #f2f2f2;
        }

        /* Override button styles */
        .custom-gridview .btn {
            padding: 6px 12px;
            text-align: center;
            display: inline-block;
            border: none;
            background-color: transparent;
            color: white;
            cursor: pointer;
            border-radius: 4px;
            transition: background-color 0.3s;
        }

        .custom-gridview .btn.edit {
            background-color: #007bff;
        }

        .custom-gridview .btn.delete {
            background-color: #dc3545;
        }

        .custom-gridview .btn.edit:hover,
        .custom-gridview .btn.delete:hover {
            background-color: #555;
        }
            .delete-button {
    background-color: #dc3545;
    color: white; 
    border: none;
    padding: 5px 10px;
    border-radius: 4px;
    cursor: pointer;
}


.edit-button {
    background-color: #007bff; 
    color: white; 
    border: none;
    padding: 5px 10px;
    border-radius: 4px;
    cursor: pointer;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="sidebar">
             <h1>Progress</h1>
             <br />
            <br />
            <br />
            <a href="dash.aspx" >Dashboard</a>
            <a href="Student.aspx" >Student</a>
            <a href="Instructor.aspx">Instructor</a>
            <a href="Courses.aspx">Courses</a>
             <a href="Lesson.aspx">Lesson</a>
             <a href="Progress.aspx" class="active">Progress</a>
            <a href="student_enrollment.aspx" >Student Enrollment</a>
            <a href="course_instructor.aspx" >Course Instructor</a>
            <a href="e_learning.aspx" >E-Learning</a>
        </div>

        <div class="container">
            <h2>Progress</h2>
            <p>
             <asp:Button ID="btnAddData" runat="server" Text="Add Data" CommandName="AddData" CommandArgument='<%# Eval("S_ID") %>' OnClick="btnAddData_Click" BackColor="White" BorderColor="#000099" ForeColor="#000099" />
            </p>
            <asp:GridView ID="GridView1" runat="server" CssClass="custom-gridview" AutoGenerateColumns="False" DataKeyNames="LESSONNO,COURSEID,STUDENTID" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                   
                     <asp:CommandField ShowEditButton="True" ControlStyle-CssClass="edit-button" >
<ControlStyle CssClass="edit-button"></ControlStyle>
                     </asp:CommandField>
 <asp:CommandField ShowDeleteButton="True" ControlStyle-CssClass="delete-button"  >
<ControlStyle CssClass="delete-button"></ControlStyle>
                     </asp:CommandField>
                    <asp:BoundField DataField="LESSONNO" HeaderText="LESSONNO" ReadOnly="True" SortExpression="LESSONNO" />
                    <asp:BoundField DataField="COURSEID" HeaderText="COURSEID" SortExpression="COURSEID" ReadOnly="True" />
                    <asp:BoundField DataField="STUDENTID" HeaderText="STUDENTID" SortExpression="STUDENTID" ReadOnly="True" />
                    <asp:BoundField DataField="STATUS" HeaderText="STATUS" SortExpression="STATUS" />
                    <asp:BoundField DataField="LASTACCESSEDDATE" HeaderText="LASTACCESSEDDATE" SortExpression="LASTACCESSEDDATE" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM &quot;STATUS&quot; WHERE &quot;LESSONNO&quot; = :LESSONNO AND &quot;COURSEID&quot; = :COURSEID AND &quot;STUDENTID&quot; = :STUDENTID" InsertCommand="INSERT INTO &quot;STATUS&quot; (&quot;LESSONNO&quot;, &quot;COURSEID&quot;, &quot;STUDENTID&quot;, &quot;STATUS&quot;, &quot;LASTACCESSEDDATE&quot;) VALUES (:LESSONNO, :COURSEID, :STUDENTID, :STATUS, :LASTACCESSEDDATE)" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM &quot;STATUS&quot;" UpdateCommand="UPDATE &quot;STATUS&quot; SET &quot;STATUS&quot; = :STATUS, &quot;LASTACCESSEDDATE&quot; = :LASTACCESSEDDATE WHERE &quot;LESSONNO&quot; = :LESSONNO AND &quot;COURSEID&quot; = :COURSEID AND &quot;STUDENTID&quot; = :STUDENTID">
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
        </div>
    </form>
</body>
</html>
