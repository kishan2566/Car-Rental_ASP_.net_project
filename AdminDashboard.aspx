<%@ Page Title="" Language="C#" MasterPageFile="~/default.Master" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="car_rental_project.AdminDashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <head>
        <title>Admin Dashboard</title>

        <!-- Bootstrap -->
        <link href="css/bootstrap.min.css" rel="stylesheet" />
        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" />
        <!-- Custom CSS -->
        <link href="css/admin-dashboard.css" rel="stylesheet" />
        <style>
            body {
    font-family: 'Lato', sans-serif;
}

#wrapper {
    display: flex;
    width: 100%;
    align-items: stretch;
}

#sidebar-wrapper {
    min-width: 250px;
    max-width: 250px;
}

#page-content-wrapper {
    flex: 1;
    width: 100%;         /* ensures full available width */
    min-height: 100vh;   /* stretches to full height */
    padding: 20px;       /* optional spacing */
}


.list-group-item {
    border: none;
    transition: 0.3s;
}

.list-group-item:hover {
    background-color: #0d6efd !important;
    color: #fff !important;
}

.card {
    border-radius: 10px;
    transition: transform 0.2s;
}

.card:hover {
    transform: translateY(-5px);
}

        </style>
    </head>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <body>
    <div class="d-flex" id="wrapper">
        <!-- Sidebar -->
        <div class="bg-dark border-right" id="sidebar-wrapper">
            <div class="sidebar-heading text-white text-center py-4">
                <i class="fas fa-car-alt"></i> Car Rental Admin
            </div>
            <div class="list-group list-group-flush">
                <a href="AdminDashboard.aspx" class="list-group-item list-group-item-action bg-dark text-white active">
                    <i class="fas fa-tachometer-alt me-2"></i> Dashboard
                </a>
                <a href="Add_Cars.aspx" class="list-group-item list-group-item-action bg-dark text-white">
                    <i class="fas fa-car me-2"></i> Manage Cars
                </a>
                <a href="Bookings.aspx" class="list-group-item list-group-item-action bg-dark text-white">
                    <i class="fas fa-calendar-check me-2"></i> Bookings
                </a>
                <a href="Users.aspx" class="list-group-item list-group-item-action bg-dark text-white">
                    <i class="fas fa-users me-2"></i> Users
                </a>
                <a href="Reports.aspx" class="list-group-item list-group-item-action bg-dark text-white">
                    <i class="fas fa-chart-line me-2"></i> Reports
                </a>
                <a>
              
 <asp:Button ID="Logout" runat="server" Text="Logout" class="list-group-item list-group-item-action bg-dark text-white" OnClick="Logout_Click" />
                     
                </a>
            </div>
        </div>
        <!-- /#sidebar-wrapper -->

        <!-- Page Content -->
        <div id="page-content-wrapper">
           

            <div class="container-fluid mt-4">
                <h2 class="mb-4">Dashboard Overview</h2>

                <!-- Dashboard Cards -->
                <div class="row g-4">
                    <div class="col-md-3">
                        <div class="card shadow-sm text-center p-3">
                            <i class="fas fa-car fa-2x text-primary mb-2"></i>
                            <h5>Total Cars</h5>
                            <asp:Label ID="lblCars" runat="server" CssClass="fw-bold fs-4">--</asp:Label>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="card shadow-sm text-center p-3">
                            <i class="fas fa-calendar-check fa-2x text-success mb-2"></i>
                            <h5>Total Bookings</h5>
                            <asp:Label ID="lblBookings" runat="server" CssClass="fw-bold fs-4">--</asp:Label>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="card shadow-sm text-center p-3">
                            <i class="fas fa-users fa-2x text-warning mb-2"></i>
                            <h5>Total Users</h5>
                            <asp:Label ID="lblUsers" runat="server" CssClass="fw-bold fs-4">--</asp:Label>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="card shadow-sm text-center p-3">
                            <i class="fas fa-dollar-sign fa-2x text-danger mb-2"></i>
                            <h5>Revenue</h5>
                            <asp:Label ID="lblRevenue" runat="server" CssClass="fw-bold fs-4">--</asp:Label>
                        </div>
                    </div>
                </div>

                <!-- Recent Bookings Table -->
                <div class="card shadow-sm mt-5">
                    <div class="card-header bg-primary text-white fw-bold">
                        Recent Bookings
                    </div>
                    <div class="card-body">
                        <asp:GridView ID="gvBookings" runat="server" CssClass="table table-striped table-bordered"></asp:GridView>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
