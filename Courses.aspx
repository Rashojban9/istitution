<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Courses.aspx.cs" Inherits="istitution.Courses" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Courses</title>
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
        <nav class="sidebar">
    <div class="sidebar-header bg-primary">
        <h3 class="text-white">Institution</h3>
    </div>

    <ul class="list-unstyled components">
        <li >
            <a href="dash.aspx">Dashboard</a>
        </li>
        <li>
            <a href="Student.aspx">Student</a>
        </li>
        <li>
            <a href="Instructor.aspx">Instructor</a>
        </li>
        <li class="active">
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

        <div class="container">
            <h2>Courses</h2>
            <p>
             <asp:Button ID="btnAddData" runat="server" Text="Add Data" CommandName="AddData" CommandArgument='<%# Eval("S_ID") %>' OnClick="btnAddData_Click" BackColor="White" BorderColor="#000099" ForeColor="#000099" />
            </p>
            <asp:GridView ID="GridView1" runat="server" CssClass="custom-gridview" AutoGenerateColumns="False" DataKeyNames="ID" CellPadding="4" DataSourceID="SqlDataSource1" GridLines="None" ForeColor="#333333" AllowPaging="True">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                 
        

                    <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="COURSE_TITLE" HeaderText="COURSE_TITLE" SortExpression="COURSE_TITLE" />
                                       <asp:CommandField ShowEditButton="True" ControlStyle-CssClass="edit-button" >
<ControlStyle CssClass="edit-button"></ControlStyle>
                    </asp:CommandField>
                     <asp:CommandField ShowDeleteButton="True" ControlStyle-CssClass="delete-button"  >
        

<ControlStyle CssClass="delete-button"></ControlStyle>
                    </asp:CommandField>
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM &quot;COURSE&quot; WHERE &quot;ID&quot; = :original_ID" InsertCommand="INSERT INTO &quot;COURSE&quot; (&quot;ID&quot;, &quot;COURSE_TITLE&quot;) VALUES (:ID, :COURSE_TITLE)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM &quot;COURSE&quot;" UpdateCommand="UPDATE &quot;COURSE&quot; SET &quot;COURSE_TITLE&quot; = :COURSE_TITLE WHERE &quot;ID&quot; = :original_ID">
                <DeleteParameters>
                    <asp:Parameter Name="original_ID" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ID" Type="Decimal" />
                    <asp:Parameter Name="COURSE_TITLE" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="COURSE_TITLE" Type="String" />
                    <asp:Parameter Name="original_ID" Type="Decimal" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
