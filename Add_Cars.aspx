<%@ Page Title="" Language="C#" MasterPageFile="~/default.Master" AutoEventWireup="true" CodeBehind="Add_Cars.aspx.cs" Inherits="car_rental_project.Add_Cars" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <head>
        <title>Add Cars</title>
        
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

            body {
                font-family: Arial, sans-serif;
                background: #f5f7fa;
                margin: 0;
                padding: 0;
            }

            center {
                display: block;
                margin: 20px auto;
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
             
<asp:Button ID="Button2" runat="server" Text="Logout" class="list-group-item list-group-item-action bg-dark text-white" OnClick="Logout_Click" />
                    
               </a>
           </div>
       </div>
        

          <center>
              <h1 style="color:crimson;">Add Cars</h1>
    <table>
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
   
    </body>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
