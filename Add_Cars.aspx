<%@ Page Title="" Language="C#" MasterPageFile="~/default.Master" AutoEventWireup="true" CodeBehind="Add_Cars.aspx.cs" Inherits="car_rental_project.Add_Cars" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <head>
        <title>Add Cars</title>
        
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
        <style>

         body{
             
         }
         
           

            table {
                background: #fff;
                width:500px;
                border-collapse: collapse;
                padding: 20px;
                border-radius: 10px;
                box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            }

            table td {
                padding: 10px 15px;
                font-size: 14px;
                color: #333;
            }

            input[type="text"], 
            select, 
            .aspNetDisabled, 
            textarea {
                width: 220px;
                padding: 8px;
                border: 1px solid #ccc;
                border-radius: 6px;
                font-size: 14px;
            }

            input[type="text"]:focus, 
            select:focus, 
            textarea:focus {
                border-color: #007bff;
                outline: none;
                box-shadow: 0 0 5px rgba(0,123,255,0.4);
            }

            .aspNetDisabled {
                background: #e9ecef;
            }

            

            .gridview {
                margin-top: 30px;
                background: #fff;
                border-collapse: collapse;
                width: 90%;
                border-radius: 10px;
                overflow: hidden;
                box-shadow: 0 4px 10px rgba(0,0,0,0.1);
            }

            .gridview th {
                background: #007bff;
                color: #fff;
                padding: 10px;
                text-align: left;
                font-size: 14px;
            }

            .gridview td {
                padding: 10px;
                border-bottom: 1px solid #eee;
                font-size: 14px;
            }

            .gridview tr:nth-child(even) {
                background: #f9f9f9;
            }

            .gridview tr:hover {
                background: #f1f1f1;
            }

            .gridview a {
                color: #007bff;
                text-decoration: none;
                font-weight: bold;
            }

            .gridview a:hover {
                color: #0056b3;
                text-decoration: underline;
            }

            
           .btn-form {
              font-weight: bold;
              color: white;
              border-radius: 2px;
              cursor: pointer;
              width: 95.02px;
              height: 42.66px;
              border: none;
              background-color: royalblue;
              display: flex;
              justify-content: center;
              align-items: center;
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
                     <a href="AdminDashboard.aspx" class="nav-item nav-link ">Dashboard</a>
                     <a href="Add_Cars.aspx" class="nav-item nav-link active">Manage Cars</a>
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
                
                    <center> <h1 style="color:crimson;"><b>Manage Cars</b></h1></center>
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
          <center>
             
    <table>
        <tr>
            <td colspan="5">
        <center><h1 style="color:crimson;"><b>Add Cars</b></h1></center></td></tr>
        <tr>
            <td>Car Category</td>
            <td>
                <asp:RadioButtonList ID="rdbcategory" runat="server">
                    <asp:ListItem>Common</asp:ListItem>
                    <asp:ListItem>Premium</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td>Car Name</td>
            <td>
                <asp:TextBox ID="Car_Name" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Car Model </td>
            <td>
                <asp:TextBox ID="Car_Model" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Car Seat</td>
            <td>
                <asp:DropDownList ID="ddlseat" runat="server">
                    <asp:ListItem>&lt;-- Select Seats --&gt;</asp:ListItem>
                    <asp:ListItem>2 Seats</asp:ListItem>
                    <asp:ListItem>4 Seats</asp:ListItem>
                    <asp:ListItem>5 Seats</asp:ListItem>
                    <asp:ListItem>6 Seats</asp:ListItem>
                    <asp:ListItem>7 Seats</asp:ListItem>
                </asp:DropDownList>
               </td>
        </tr>
        <tr>
            <td>Transmission</td>
            <td>
                <asp:RadioButtonList ID="rdbtransmission" runat="server" CellPadding="0" CellSpacing="0">
                    <asp:ListItem>Automatic</asp:ListItem>
                    <asp:ListItem>Manual</asp:ListItem>
                </asp:RadioButtonList>   
            </td>
        </tr>
        <tr>
            <td>Fuel</td>
            <td>
                <asp:RadioButtonList ID="rdbfuel" runat="server">
                    <asp:ListItem>Petrol</asp:ListItem>
                    <asp:ListItem>Diesel</asp:ListItem>
                    <asp:ListItem>CNG</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td>Car Driven</td>
            <td>
                <asp:TextBox ID="Car_Driven" runat="server" placeholder="In KM"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Car Price</td>
            <td>
                <asp:TextBox ID="Car_Price" runat="server" placeholder="In Dollar"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>image</td>
            <td>
                <asp:FileUpload ID="flpimg"  runat="server" /></td>
        </tr>
        <tr>
            <td></td>
            <td>
                <asp:Button ID="Button1" class="btn-form" runat="server" Text="save" OnClick="Button1_Click"/></td>
        </tr>
    </table>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:TemplateField HeaderText="id">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("id") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Car_Category">
                <ItemTemplate>
                    <asp:Label ID="Label9" runat="server" Text='<%# Eval("Car_Category") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Car_Name">
               
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("Car_Name") %>'></asp:Label>
                </ItemTemplate>
               
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Car_Model">
                 
                <ItemTemplate>
                    <asp:Label ID="Label8" runat="server" Text='<%# Eval("Car_Model") %>'></asp:Label>
                </ItemTemplate>
                 
            </asp:TemplateField>
           
            <asp:TemplateField HeaderText="Car_Seats">
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("Car_Seat") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Car_Transmission">
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("Car_Transmission") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Car_Fuel">
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("Car_Fuel") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Car_Driven">
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("Car_Driven") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Car_Price">
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("Car_Price") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Image">
                <ItemTemplate>
                     <asp:Image ID="Image1" runat="server" height="100" Width="100" ImageUrl='<%# Eval("Car_Image") %>' />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="edit">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CommandName="cmd_edt" Text="edit" CommandArgument='<%# Eval("Id") %>'></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="delete">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton2" runat="server" CommandName="cnd_dlt" Text="delete" CommandArgument='<%# Eval("Id") %>'></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
</center>
   
          </div>

   
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
   <footer>
       
   </footer>
    </body>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
