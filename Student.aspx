<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Student.aspx.cs" Inherits="istitution.Student" %>

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
           background: linear-gradient(to right, #62cff4 ,#2c67f2 );
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
            background-color: #CBC3E3;
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
        .sidebar {
    background-color: #343a40;
    height: 100%;
    width: 250px;
    position: fixed;
    top: 0;
    left: 0;
    overflow-x: hidden;
}

.sidebar-header {
    padding: 20px;
    text-align: center;
}

.sidebar-header h3 {
    margin-bottom: 0;
}

.sidebar ul.components {
    padding: 20px 0;
}

.sidebar ul.components li {
    margin-bottom: 10px;
}

.sidebar ul.components li a {
    padding: 10px 20px;
    text-decoration: none;
    display: block;
    color: #f8f9fa;
    transition: all 0.3s;
}

.sidebar ul.components li a:hover {
    background-color: #495057;
}

.sidebar ul.components li.active a {
    background-color: #adb5bd;
    color: #343a40;
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
           .edit-button {
    background-color: #007bff;
    color: white;
    border: none;
    padding: 8px 12px;
    border-radius: 4px;
    cursor: pointer;
    transition: background-color 0.3s;
}

.edit-button:hover {
    background-color: #0056b3;
}

/* Delete button */
.delete-button {
    background-color: #dc3545;
    color: white;
    border: none;
    padding: 8px 12px;
    border-radius: 4px;
    cursor: pointer;
    transition: background-color 0.3s;
}

.delete-button:hover {
    background-color: #c82333;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
       <nav class="sidebar">
    <div class="sidebar-header bg-primary">
        <h3 class="text-white">Institution</h3>
    </div>

    <ul class="list-unstyled components">
        <li >
            <a href="dash.aspx">Dashboard</a>
        </li>
        <li class="active">
            <a href="Student.aspx">Student</a>
        </li>
        <li>
            <a href="Instructor.aspx">Instructor</a>
        </li>
        <li>
            <a href="Courses.aspx">Courses</a>
        </li>
        <li>
            <a href="Lesson.aspx">Lesson</a>
        </li>
        <li>
            <a href="Progress.aspx">Progress</a>
        </li>
        <li>
            <a href="student_enrollment.aspx">Student Enrollment</a>
        </li>
        <li>
            <a href="course_instructor.aspx">Course Instructor</a>
        </li>
        <li>
            <a href="e_learning.aspx">E-Learning</a>
        </li>
    </ul>
</nav>

        <div class="container" aria-orientation="horizontal" aria-setsize="20">
            <h2>Student Details</h2>
             <asp:Button ID="btnAddData" runat="server" Text="Add Data" CommandName="AddData" CommandArgument='<%# Eval("S_ID") %>' OnClick="btnAddData_Click" BackColor="White" BorderColor="#000099" ForeColor="#000099" />
            <asp:GridView ID="GridView1" runat="server" CssClass="custom-gridview" AutoGenerateColumns="False" DataKeyNames="ID" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AllowPaging="True">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        
        <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
        <asp:BoundField DataField="STUDENT_NAME" HeaderText="STUDENT_NAME" SortExpression="STUDENT_NAME" />
        <asp:BoundField DataField="CONTACT" HeaderText="CONTACT" SortExpression="CONTACT" />
        <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
        <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
        <asp:BoundField DataField="COUNTRY" HeaderText="COUNTRY" SortExpression="COUNTRY" />
       <asp:CommandField ShowEditButton="True" ControlStyle-CssClass="edit-button" >
<ControlStyle CssClass="edit-button"></ControlStyle>
                     </asp:CommandField>
 <asp:CommandField ShowDeleteButton="True" ControlStyle-CssClass="delete-button"  >
<ControlStyle CssClass="delete-button"></ControlStyle>
                     </asp:CommandField>
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM &quot;STUDENTS&quot; WHERE &quot;ID&quot; = :ID" InsertCommand="INSERT INTO &quot;STUDENTS&quot; (&quot;ID&quot;, &quot;STUDENT_NAME&quot;, &quot;CONTACT&quot;, &quot;DOB&quot;, &quot;EMAIL&quot;, &quot;COUNTRY&quot;) VALUES (:ID, :STUDENT_NAME, :CONTACT, :DOB, :EMAIL, :COUNTRY)" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM &quot;STUDENTS&quot;" UpdateCommand="UPDATE &quot;STUDENTS&quot; SET &quot;STUDENT_NAME&quot; = :STUDENT_NAME, &quot;CONTACT&quot; = :CONTACT, &quot;DOB&quot; = :DOB, &quot;EMAIL&quot; = :EMAIL, &quot;COUNTRY&quot; = :COUNTRY WHERE &quot;ID&quot; = :ID">
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
        </div>
    </form>
</body>
</html>
