<%@ Page Title="" Language="C#" MasterPageFile="~/default.Master" AutoEventWireup="true" CodeBehind="Terms.aspx.cs" Inherits="car_rental_project.Terms" %>
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
   
   
    .container{
      width:100%;
      max-width:var(--maxw);
    }
    header{
      display:flex;
      align-items:center;
      gap:16px;
      margin-bottom:20px;
    }
    .brand{
      display:inline-grid;
      place-items:center;
      width:56px;
      height:56px;
      border-radius:10px;
      background:linear-gradient(135deg,var(--accent),#7aa6ff);
      color:white;
      font-weight:700;
      font-size:18px;
      box-shadow:0 6px 18px rgba(43,110,246,0.18);
    }
    h1{font-size:20px;margin:0}
    p.lead{margin:6px 0 0;color:var(--muted);font-size:14px}
    main{
      background:var(--card);
      border-radius:14px;
      padding:28px;
      box-shadow:0 10px 30px rgba(12,35,64,0.06);
    }
    section{margin-bottom:20px}
    h2{font-size:16px;margin:0 0 10px}
    p{margin:0 0 10px;color:#111827}
    ul{margin:8px 0 12px 20px}
    li{margin:6px 0}
    .meta{font-size:13px;color:var(--muted)}
    footer{font-size:13px;color:var(--muted);text-align:center;margin-top:14px}
    @media (max-width:520px){
      body{padding:20px 12px}
      .brand{width:48px;height:48px;font-size:16px}
    }
  </style>
</head>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <body>
            <!-- Spinner Start -->
    <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
        <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
            <span class="sr-only">Loading...</span>
        </div>
    </div>
    <!-- Spinner End -->

    <!-- Topbar Start -->
    <div class="container-fluid topbar bg-secondary d-none d-xl-block w-100">
        <div class="container">
            <div class="row gx-0 align-items-center" style="height: 45px;">
                <div class="col-lg-6 text-center text-lg-start mb-lg-0">
                    <div class="d-flex flex-wrap">
    <a href="#" class="text-muted me-4"><i class="fas fa-map-marker-alt text-primary me-2"></i>Rajkot,Gujarat,India</a>
    <a href="tel:+01234567890" class="text-muted me-4"><i class="fas fa-phone-alt text-primary me-2"></i>+01234567890</a>
    <a href="mailto:example@gmail.com" class="text-muted me-0"><i class="fas fa-envelope text-primary me-2"></i>Cental@business.com</a>
</div>
                </div>
                <div class="col-lg-6 text-center text-lg-end">
                    <div class="d-flex align-items-center justify-content-end">
                        <a href="#" class="btn btn-light btn-sm-square rounded-circle me-3"><i class="fab fa-facebook-f"></i></a>
                        <a href="#" class="btn btn-light btn-sm-square rounded-circle me-3"><i class="fab fa-twitter"></i></a>
                        <a href="#" class="btn btn-light btn-sm-square rounded-circle me-3"><i class="fab fa-instagram"></i></a>
                        <a href="#" class="btn btn-light btn-sm-square rounded-circle me-0"><i class="fab fa-linkedin-in"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Topbar End -->

    <!-- Navbar & Hero Start -->
    <div class="container-fluid nav-bar sticky-top px-0 px-lg-4 py-2 py-lg-0">
        <div class="container">
            <nav class="navbar navbar-expand-lg navbar-light">
                <a href="" class="navbar-brand p-0">
                    <h1 class="display-6 text-primary"><i class="fas fa-car-alt me-3"></i></i>Cental</h1>
                    <!-- <img src="img/logo.png" alt="Logo"> -->
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                    <span class="fa fa-bars"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarCollapse">
    <div class="navbar-nav mx-auto py-0">
        <a href="Home.aspx" class="nav-item nav-link ">Home</a>
        <a href="about.aspx" class="nav-item nav-link">About</a>
        <a href="service.aspx" class="nav-item nav-link">Service</a>
        <a href="blog.aspx" class="nav-item nav-link">Blog</a>
        
        <div class="nav-item dropdown">
            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Pages</a>
            <div class="dropdown-menu m-0">
                <a href="feature.aspx" class="dropdown-item">Our Feature</a>
                <a href="cars.aspx" class="dropdown-item">Our Cars</a>
                <a href="team.aspx" class="dropdown-item active">Our Team</a>
                <a href="testimonial.aspx" class="dropdown-item">Testimonial</a>
                <a href="404.aspx" class="dropdown-item">404 Page</a>
            </div>
        </div>
                        <a href="Contact.aspx" class="nav-item nav-link">Contact</a>
                    </div>
                    <asp:Button ID="Login" class="btn btn-primary rounded-pill py-2 px-4" runat="server" Text="Login" OnClick="Login_Click" />
                         <!--<a href="Login.aspx" ID="Login" >Get Started</a> -->
                         <asp:Label ID="Label1" runat="server" Text=""></asp:Label> &nbsp; &nbsp; &nbsp; <br />
                         <asp:Button ID="Logout" runat="server" Text="Logout" Visible="false" class="btn btn-primary rounded-pill py-2 px-4" OnClick="Logout_Click" />
                </div>
            </nav>
        </div>
    </div>
    <!-- Navbar & Hero End -->

    <!-- Header Start -->
    <div class="container-fluid bg-breadcrumb">
        <div class="container text-center py-5" style="max-width: 900px;">
            <h4 class="text-white display-4 mb-4 wow fadeInDown" data-wow-delay="0.1s">Terms & Conditions</h4>
            <ol class="breadcrumb d-flex justify-content-center mb-0 wow fadeInDown" data-wow-delay="0.3s">
                <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                <li class="breadcrumb-item"><a href="#">Pages</a></li>
                <li class="breadcrumb-item active text-primary">T&C</li>
            </ol>    
        </div>
    </div>
    <!-- Header End -->
        <br /><br /><br /><br /><br />
         <center>
  <div>
    <h1>Terms &amp; Conditions</h1>
    <p class="lead">Effective date: September 11, 2025 — Cental</p>
  </div>
     </center>
  <div class="container" role="main">
    <header>
    
    </header>

    <main>
      <section>
        <h2>1. Agreement to Terms</h2>
        <p class="meta">By accessing or using Cental's website, products, or services you agree to be bound by these Terms &amp; Conditions.</p>
      </section>

      <section>
        <h2>2. Definitions</h2>
        <p><strong>“Service”</strong> means Cental's website, applications, and any features or tools provided. <strong>“You”</strong> means the user or entity using the Service.</p>
      </section>

      <section>
        <h2>3. Changes to Terms</h2>
        <p>Cental may modify these terms at any time. If material changes are made, Cental will provide notice. Continued use of the Service after changes constitutes acceptance of the updated terms.</p>
      </section>

      <section>
        <h2>4. Use of Service</h2>
        <p>You must use the Service in compliance with all applicable laws. You agree not to:</p>
        <ul>
          <li>Use the Service for unlawful activities;</li>
          <li>Attempt to gain unauthorized access to any part of the Service;</li>
          <li>Interfere with or disrupt the integrity or performance of the Service;</li>
          <li>Transmit harmful or malicious code.</li>
        </ul>
      </section>

      <section>
        <h2>5. Account Registration</h2>
        <p>Some features require an account. You are responsible for keeping account credentials secure. You must provide accurate information and notify Cental of any unauthorized use.</p>
      </section>

      <section>
        <h2>6. Intellectual Property</h2>
        <p>All content, trademarks, logos, and software on the Service are the property of Cental or its licensors and are protected by copyright, trademark, and other laws. You may not copy, modify, or distribute Cental content without written permission.</p>
      </section>

      <section>
        <h2>7. Payments and Subscriptions</h2>
        <p>Paid features are subject to separate subscription terms and refund policies. You authorize Cental to charge applicable fees to your chosen payment method. Prices and billing terms may change with notice.</p>
      </section>

      <section>
        <h2>8. Termination</h2>
        <p>Cental may suspend or terminate access to the Service for violations of these terms or other policies, or for business reasons. You can stop using the Service at any time. Termination does not relieve you of obligations incurred prior to termination.</p>
      </section>

      <section>
        <h2>9. Disclaimers</h2>
        <p>The Service is provided "as is" and "as available" without warranties of any kind. Cental disclaims all warranties, express and implied, including merchantability, fitness for a particular purpose, and non-infringement.</p>
      </section>

      <section>
        <h2>10. Limitation of Liability</h2>
        <p>To the maximum extent permitted by law, Cental and its affiliates are not liable for indirect, incidental, special, consequential, or punitive damages arising from your use of the Service. Cental's total aggregate liability for direct damages will not exceed the amounts you have paid in the prior 12 months, or $100 if you have not paid anything.</p>
      </section>

      <section>
        <h2>11. Indemnification</h2>
        <p>You agree to indemnify and hold Cental harmless from any claim, loss, liability, or expense arising from your breach of these Terms or your misuse of the Service.</p>
      </section>

      <section>
        <h2>12. Third-Party Links and Services</h2>
        <p>The Service may include links or integrations with third parties. Cental does not control third-party content and is not responsible for their policies or practices.</p>
      </section>

      <section>
        <h2>13. Privacy</h2>
        <p>Your use of the Service is also governed by Cental's Privacy Policy, which describes how personal data is collected, used, and shared.</p>
      </section>

      <section>
        <h2>14. Governing Law</h2>
        <p>These Terms are governed by the laws of the jurisdiction where Cental is established, without regard to conflict of law principles. Any dispute will be subject to the exclusive jurisdiction of the courts in that jurisdiction unless otherwise required by law.</p>
      </section>

      <section>
        <h2>15. Severability</h2>
        <p>If a court finds any part of these Terms unenforceable, the remaining provisions remain in effect to the fullest extent permitted by law.</p>
      </section>

      <section>
        <h2>16. Entire Agreement</h2>
        <p>These Terms constitute the entire agreement between you and Cental regarding the Service and supersede prior agreements.</p>
      </section>

      <section>
        <h2>17. Contact</h2>
        <p>If you have questions about these Terms, contact us at: <strong>support@cental.example</strong></p>
      </section>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <footer>
        <div>Cental • Terms &amp; Conditions • Effective September 11, 2025</div>
        <div style="margin-top:8px;font-size:12px;color:var(--muted)">This template is provided for general informational purposes and does not constitute legal advice. Consult a qualified attorney for guidance tailored to your situation.</div>
      </footer>
    </main>
  </div>
</body>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
