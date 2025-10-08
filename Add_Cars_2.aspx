<%@ Page Title="" Language="C#" MasterPageFile="~/default.Master" AutoEventWireup="true" CodeBehind="Add_Cars_2.aspx.cs" Inherits="car_rental_project.Add_Cars_2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard - DriveEasy</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.min.css">
   <link rel="stylesheet" href="css/admin.css">
</head>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <body>
 <div class="admin-container">
     <!-- Sidebar -->
     <div class="sidebar">
         <div class="sidebar-header">
             <h3>Cental Admin</h3>
         </div>
         <ul class="sidebar-menu">
             <li><a href="admin_dashboard.php" class="active"><i class="fas fa-tachometer-alt"></i> <span>Dashboard</span></a></li>
             <li><a href="manage_vehicles.php"><i class="fas fa-car"></i> <span>Manage Vehicles</span></a></li>
             <li><a href="manage_bookings.php"><i class="fas fa-calendar-check"></i> <span>Manage Bookings</span></a></li>
             <li><a href="manage_users.php"><i class="fas fa-users"></i> <span>Manage Users</span></a></li>
             <li><a href="manage_payments.php"><i class="fas fa-credit-card"></i> <span>Payments</span></a></li>
             <li><a href="reports.php"><i class="fas fa-chart-bar"></i> <span>Reports</span></a></li>
         </ul>
     </div>
     
     <!-- Main Content -->
     <div class="main-content">
         <div class="header">
             <h2>Dashboard</h2>
             <div class="user-info">
                 <div class="profile-image">
                     <div class="initials-avatar" style="background-color: #3498db; color: white;">
                         AD
                     </div>
                 </div>
                 <span>Admin</span>
                 <form action="logout.php" method="post" style="margin-left: 20px;">
                     <button type="submit" class="logout-btn">Logout</button>
                 </form>
             </div>
         </div>
         
         <!-- Dashboard Cards -->
         <div class="dashboard-cards">
             <div class="card">
                 <div class="card-header">
                     <div>
                         <div class="card-title">Total Vehicles</div>
                         <div class="card-value">0</div>
                     </div>
                     <div class="card-icon blue">
                         <i class="fas fa-car"></i>
                     </div>
                 </div>
             </div>
             
             <div class="card">
                 <div class="card-header">
                     <div>
                         <div class="card-title">Registered Users</div>
                         <div class="card-value">0</div>
                     </div>
                     <div class="card-icon green">
                         <i class="fas fa-users"></i>
                     </div>
                 </div>
             </div>
             
             <div class="card">
                 <div class="card-header">
                     <div>
                         <div class="card-title">Active Bookings</div>
                         <div class="card-value">0</div>
                     </div>
                     <div class="card-icon orange">
                         <i class="fas fa-calendar-check"></i>
                     </div>
                 </div>
             </div>
             
             <div class="card">
                 <div class="card-header">
                     <div>
                         <div class="card-title">Total Revenue</div>
                         <div class="card-value">$0</div>
                     </div>
                     <div class="card-icon red">
                         <i class="fas fa-dollar-sign"></i>
                     </div>
                 </div>
             </div>
         </div>
         
         <!-- Recent Bookings -->
         <div class="recent-bookings">
             <h3 class="section-title">Recent Bookings</h3>
             <table>
                 <thead>
                     <tr>
                         <th>Booking ID</th>
                         <th>Customer ID</th>
                         <th>Vehicle ID</th>
                         <th>Vehicle Name</th>
                         <th>Pickup Date</th>
                         <th>Return Date</th>
                         <th>Amount</th>
                         <th>Status</th>
                     </tr>
                 </thead>
                 <tbody>
                     <tr>
                         <td>--</td>
                         <td>--</td>
                         <td>--</td>
                         <td>--</td>
                         <td>--</td>
                         <td>--</td>
                         <td>--</td>
                         <td>--</td>
                     </tr>
                 </tbody>
             </table>
         </div>
     </div>
 </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
    <script>
        $(document).ready(function() {
            $('table').DataTable();
            
            // Logout confirmation
            $('.logout-btn').click(function(e) {
                if (!confirm('Are you sure you want to logout?')) {
                    e.preventDefault();
                }
            });
        });
    </script>
</body>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
