<%@ Page Title="" Language="C#" MasterPageFile="~/default.Master" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="car_rental_project.AdminDashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <head>
        <meta charset="utf-8">
<title>Cental - Car Rent Website Template</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,400;0,700;0,900;1,400;1,700;1,900&family=Montserrat:ital,wght@0,100..900;1,100..900&display=swap" rel="stylesheet"> 

<!-- Icon Font Stylesheet -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"/>
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

<!-- Libraries Stylesheet -->
<link href="lib/animate/animate.min.css" rel="stylesheet">
<link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">


<!-- Customized Bootstrap Stylesheet -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Template Stylesheet -->
<link href="css/style.css" rel="stylesheet">
<title>Terms & Conditions - Cental</title>
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
                   <!-- Navbar & Hero Start -->

    <div class="container">
        <nav class="navbar navbar-expand-lg navbar-light">
            <a href="" class="navbar-brand p-0">
                <h1 class="display-6 text-primary"><i class="fas fa-car-alt me-3"></i></i>Cental Admin</h1>
                <!-- <img src="img/logo.png" alt="Logo"> -->
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                <span class="fa fa-bars"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <div class="navbar-nav mx-auto py-0">
                    <a href="AdminDashboard.aspx" class="nav-item nav-link active ">Dashboard</a>
                    <a href="Add_Cars.aspx" class="nav-item nav-link ">Manage Cars</a>
                    <a href="Manage_Users.aspx" class="nav-item nav-link">Manage Users</a>
                    <a href="Bookings.aspx" class="nav-item nav-link">Bookings</a>
                    
                   
                 
                    <a href="Reports.aspx" class="nav-item nav-link">Reports</a>
                </div>
               
                <!--<a href="Login.aspx" ID="Login" >Get Started</a> -->
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label> &nbsp; &nbsp; &nbsp; <br />
                <asp:Button ID="Logout" runat="server" Text="Logout" Visible="true" class="btn btn-primary rounded-pill py-2 px-4" OnClick="Logout_Click" />
            </div>
        </nav>
    </div>
</div>
<!-- Navbar & Hero End -->
                <!-- Topbar Start -->
   <div class="container-fluid topbar bg-secondary d-none d-xl-block w-100">
       <div class="container">
           <div class="row gx-0 align-items-center" style="height: 45px;">
               
                   <center> <h1 style="color:crimson;"><b>Dashboard</b></h1></center>
               </div>
               <div class="col-lg-6 text-center text-lg-end">
                   <div class="d-flex align-items-center justify-content-end">
                      
                   </div>
               </div>
          
       </div>
   </div>
   <!-- Topbar End -->
       <br />
       <br />
       <br />

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
                            <asp:Label ID="lblCars" runat="server" ></asp:Label>
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
