<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dash.aspx.cs" Inherits="istitution.dash" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

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
            display: flex; /* Use flexbox for horizontal arrangement */
            flex-wrap: wrap; /* Allow wrapping for small screens */
            justify-content: space-between; /* Distribute space between panels */
        }

        h2 {
            color: #333;
            width: 100%; /* Ensure h2 takes full width */
        }

        .panel {
            flex: 1; /* Equal width for each panel */
            margin-bottom: 20px;
            border-radius: 10px; /* Increased border radius for a more modern look */
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1); /* Increased shadow depth */
            padding: 20px;
            background-color: #fff;
            transition: box-shadow 0.3s; /* Smooth transition for shadow */
        }

        .panel:hover {
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.2); /* Darker shadow on hover */
        }

        .panel-heading {
            padding: 15px 20px; /* Increased padding for better spacing */
            border-top-left-radius: 10px; /* Match the panel border radius */
            border-top-right-radius: 10px; /* Match the panel border radius */
            color: white;
            font-weight: bold;
            margin-bottom: 20px; /* Added margin bottom for better separation */
        }

        .panel-1 .panel-heading {
            background-color: #007BFF;
            width: 214px;
            height: 142px;
        }

        .panel-2 .panel-heading {
            background-color: #28A644;
            width: 217px;
            height: 144px;
        }

        .panel-3 .panel-heading {
            background-color: #DC3545;
            width: 216px;
            height: 151px;
        }

        .panel-count {
            padding: 20px;
            width: 206px;
        }
        .auto-style3 {
            margin-left: 47px;
            margin-top: 57px;
        }
        .auto-style2 {
            margin-left: 65px;
            margin-top: 45px;
        }
        .auto-style1 {
            margin-left: 50px;
            margin-top: 45px;
        }
        .auto-style4 {}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="sidebar">
             <h1>Institution</h1>
             <br />
            <br />
            <br />
            <a href="dashboard.aspx" class="active">Dashboard</a>
            
            <a href="Student.aspx" >Student</a>
            <a href="Instructor.aspx">Instructor</a>
            <a href="Courses.aspx">Courses</a>
             <a href="Lesson.aspx">Lesson</a>
             <a href="Progress.aspx">Progress</a>
            <a href="student_enrollment.aspx" >Student Enrollment</a>
            <a href="course_instructor.aspx" >Course Instructor</a>
            <a href="e_learning.aspx" >E-Learning</a>
        </div>

        <div class="container">
            <h2>Dashboard</h2>

            <div class="panel courses-panel panel-1">
                <div class="panel-heading">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Total Student<asp:TextBox ID="TextBox1" runat="server" BackColor="#007BFF" BorderStyle="None" CssClass="auto-style1" Font-Bold="True" Font-Size="X-Large" ForeColor="White" Height="37px" ReadOnly="True" Width="82px" ></asp:TextBox>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="select count(id) from students"></asp:SqlDataSource>
                </div>
            </div>

            <div class="panel courses-panel panel-2">
                <div class="panel-heading">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Total Instructor<asp:TextBox ID="TextBox2" runat="server" BackColor="#28A644" BorderStyle="None" CssClass="auto-style2" Font-Bold="True" Font-Size="X-Large" ForeColor="White" ReadOnly="True" Width="95px"></asp:TextBox>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="select count(InstructorId) from Instructor"></asp:SqlDataSource>
                </div>
            </div>

            <div class="panel courses-panel panel-3">
                <div class="panel-heading">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Total courses<asp:TextBox ID="TextBox3" runat="server" BackColor="#DC3545" BorderStyle="None" CssClass="auto-style3" Font-Bold="True" Font-Size="X-Large" ForeColor="White" ReadOnly="True" Width="92px"></asp:TextBox>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="select count(id) from course"></asp:SqlDataSource>
                </div>
                <div class="panel-count">
                </div>
            </div>

            <!-- Chart -->
            <div class="auto-style4">
                <asp:Chart ID="Chart1" runat="server" CssClass="auto-style4" Width="529px" DataSourceID="SqlDataSource4">
                    <series>
                        <asp:Series ChartType="ErrorBar" Name="Series1" YValuesPerPoint="3" XValueMember="STUDENT_NAME" YValueMembers="DOB">
                        </asp:Series>
                    </series>
                    <chartareas>
                        <asp:ChartArea Name="ChartArea1">
                        </asp:ChartArea>
                    </chartareas>
                </asp:Chart>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM &quot;STUDENTS&quot;"></asp:SqlDataSource>
            </div>
        </div>

        <script>
            // JavaScript code to initialize Chart.js and create a simple chart
            var ctx = document.getElementById('Chart1').getContext('2d');
            var myChart = new Chart(ctx, {
                type: 'bar',
                data: {
                    labels: ['Red', 'Blue', 'Yellow', 'Green', 'Purple', 'Orange'],
                    datasets: [{
                        label: '# of Votes',
                        data: [12, 19, 3, 5, 2, 3],
                        backgroundColor: [
                            'rgba(255, 99, 132, 0.2)',
                            'rgba(54, 162, 235, 0.2)',
                            'rgba(255, 206, 86, 0.2)',
                            'rgba(75, 192, 192, 0.2)',
                            'rgba(153, 102, 255, 0.2)',
                            'rgba(255, 159, 64, 0.2)'
                        ],
                        borderColor: [
                            'rgba(255, 99, 132, 1)',
                            'rgba(54, 162, 235, 1)',
                            'rgba(255, 206, 86, 1)',
                            'rgba(75, 192, 192, 1)',
                            'rgba(153, 102, 255, 1)',
                            'rgba(255, 159, 64, 1)'
                        ],
                        borderWidth: 1
                    }]
                },
                options: {
                    scales: {
                        y: {
                            beginAtZero: true
                        }
                    }
                }
            });
        </script>
    </form>
</body>
</html>