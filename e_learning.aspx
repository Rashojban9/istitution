<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="e_learning.aspx.cs" Inherits="istitution.e_learning" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            padding: 0;
            margin-left: 0;
            margin-right: 0;
            margin-top: 0;
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
        .auto-style1 {}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="sidebar">
             <h1>Institution</h1>
             <br />
            <br />
            <br />
            <a href="dash.aspx" >Dashboard</a>
            <a href="Student.aspx" >Student</a>
            <a href="Instructor.aspx">Instructor</a>
            <a href="Courses.aspx">Courses</a>
             <a href="Lesson.aspx">Lesson</a>
             <a href="Progress.aspx">Progress</a>
            <a href="student_enrollment.aspx" >Student Enrollment</a>
            <a href="course_instructor.aspx" >Course Instructor</a>
            <a href="e_learning.aspx" class="active">E-Learning</a>
            
            
           
        </div>

        <div class="container" aria-orientation="horizontal" aria-setsize="20">
            <h2>Student Enrollment</h2>
             <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="MONTH" DataValueField="MONTH">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT c.Course_title 
FROM status s, course c 
WHERE s.courseid = c.id 
AND TO_CHAR(s.lastaccesseddate, 'MM') = :m
GROUP BY c.course_title 
ORDER BY COUNT(s.courseid) DESC, c.Course_title
">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="m" PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM &quot;STUDENTS&quot; WHERE &quot;ID&quot; = :ID" InsertCommand="INSERT INTO &quot;STUDENTS&quot; (&quot;ID&quot;, &quot;STUDENT_NAME&quot;, &quot;CONTACT&quot;, &quot;DOB&quot;, &quot;EMAIL&quot;, &quot;COUNTRY&quot;) VALUES (:ID, :STUDENT_NAME, :CONTACT, :DOB, :EMAIL, :COUNTRY)" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT DISTINCT TO_CHAR(LASTACCESSEDDATE, 'MM') AS Month
FROM Status order by month 
" UpdateCommand="UPDATE &quot;STUDENTS&quot; SET &quot;STUDENT_NAME&quot; = :STUDENT_NAME, &quot;CONTACT&quot; = :CONTACT, &quot;DOB&quot; = :DOB, &quot;EMAIL&quot; = :EMAIL, &quot;COUNTRY&quot; = :COUNTRY WHERE &quot;ID&quot; = :ID">
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
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style1" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Width="795px">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="COURSE_TITLE" HeaderText="COURSE_TITLE" SortExpression="COURSE_TITLE" />
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
        </div>
    </form>
</body>
</html>

