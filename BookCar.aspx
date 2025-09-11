<%@ Page Title="" Language="C#" MasterPageFile="~/default.Master" AutoEventWireup="true" CodeBehind="BookCar.aspx.cs" Inherits="car_rental_project.BookCar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <head>
    <title>Book Car</title>
        <style>
            /* General page styling */
body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background-color: #f8f9fa;
    margin: 0;
    padding: 0;
    color: #333;
}

/* Form container styling */
#form1 {
    background-color: white;
    padding: 30px;
    border-radius: 10px;
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
    margin: 40px auto;
    max-width: 500px;
    width: 90%;
}

/* Heading styling */
h2 {
    color: #2c3e50;
    margin-bottom: 25px;
    font-size: 28px;
    font-weight: 600;
}

/* Car info labels */
#ContentPlaceHolder1_lblCarName,
#ContentPlaceHolder1_lblCarPrice {
    font-size: 18px;
    color: #2c3e50;
    margin: 5px 0;
}

#ContentPlaceHolder1_lblCarPrice {
    color: #e74c3c;
    font-weight: bold;
    font-size: 20px;
}

/* Textbox styling */
input[type="text"],
input[type="email"],
input[type="date"] {
    width: 100%;
    max-width: 300px;
    padding: 12px 15px;
    border: 2px solid #ddd;
    border-radius: 6px;
    font-size: 16px;
    transition: border-color 0.3s ease;
    box-sizing: border-box;
}

input[type="text"]:focus,
input[type="email"]:focus,
input[type="date"]:focus {
    border-color: #3498db;
    outline: none;
    box-shadow: 0 0 5px rgba(52, 152, 219, 0.3);
}

/* Placeholder styling */
input::placeholder {
    color: #999;
    font-style: italic;
}

/* Date input labels */
#form1 center br + br + br + br + br {
    display: none;
}

/* Date section styling */
#form1 center > br + br + br + br {
    display: block;
    margin: 15px 0;
}

/* Button styling */
#ContentPlaceHolder1_btnBook {
    background-color: #27ae60;
    color: white;
    padding: 14px 30px;
    border: none;
    border-radius: 6px;
    font-size: 16px;
    font-weight: 600;
    cursor: pointer;
    transition: background-color 0.3s ease;
    text-transform: uppercase;
    letter-spacing: 1px;
}

#ContentPlaceHolder1_btnBook:hover {
    background-color: #219a52;
    transform: translateY(-2px);
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
}

#ContentPlaceHolder1_btnBook:active {
    transform: translateY(0);
}

/* Message label styling */
#ContentPlaceHolder1_lblMessage {
    font-size: 16px;
    font-weight: 500;
    padding: 10px;
    border-radius: 5px;
    display: inline-block;
    margin-top: 15px;
}

/* Responsive design */
@media (max-width: 600px) {
    #form1 {
        padding: 20px;
        margin: 20px auto;
    }
    
    h2 {
        font-size: 24px;
    }
    
    input[type="text"],
    input[type="email"],
    input[type="date"] {
        max-width: 100%;
        padding: 10px;
    }
    
    #ContentPlaceHolder1_btnBook {
        padding: 12px 25px;
        font-size: 14px;
    }
}

/* Date input specific styling */
input[type="date"] {
    background-color: #fff;
    cursor: pointer;
}

/* Center alignment for all content */
center {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
}

/* Spacing between form elements */
br {
    margin: 8px 0;
}

/* Optional: Add some spacing for better visual hierarchy */
#ContentPlaceHolder1_txtName,
#ContentPlaceHolder1_txtEmail,
#ContentPlaceHolder1_txtStartDate,
#ContentPlaceHolder1_txtEndDate {
    margin-bottom: 20px;
}
        </style>
</head>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <body>
    <form id="form1">
        <center>
            <h2>Book Car</h2>
            <asp:Label ID="lblCarName" runat="server" Font-Bold="true"></asp:Label><br />
            <asp:Label ID="lblCarPrice" runat="server"></asp:Label><br /><br />

            <asp:TextBox ID="txtName" runat="server" Placeholder="Your Name"></asp:TextBox><br /><br />
            <asp:TextBox ID="txtEmail" runat="server" Placeholder="Your Email"></asp:TextBox><br /><br />
            Start Date: <asp:TextBox ID="txtStartDate" TextMode="Date" runat="server"></asp:TextBox><br /><br />
            End Date: <asp:TextBox ID="txtEndDate" TextMode="Date" runat="server"></asp:TextBox><br /><br />

            <asp:Button ID="btnBook" runat="server" Text="Confirm Booking" OnClick="btnBook_Click" /><br /><br />
            <asp:Label ID="lblMessage" runat="server" ForeColor="Green"></asp:Label>
        </center>
    </form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
   
</body>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
