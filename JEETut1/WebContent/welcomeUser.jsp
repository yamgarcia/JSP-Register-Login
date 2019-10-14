<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="ISO-8859-1">
   <!-- <meta charset="utf-8">-->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<!--

Template 2092 Shelf

http://www.tooplate.com/view/2092-shelf

-->
    <title>Marcos' JSP Testing</title>

    <!-- load stylesheets -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400">  <!-- Google web font "Open Sans" -->
    <link rel="stylesheet" href="assets/font-awesome-4.7.0/css/font-awesome.min.css">                <!-- Font Awesome -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">                                      <!-- Bootstrap style -->
    <link rel="stylesheet" href="assets/css/tooplate-style3 - Copia3.css">                                   <!-- Templatemo style -->

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
          <![endif]-->
</head>

    <body>
        
        <div class="container">
            <header class="tm-site-header">
                 <h1 class="tm-site-name">Marcos Garcia</h1>
                <p class="tm-site-description">JSP Testing</p>
                
                <nav class="navbar navbar-expand-md tm-main-nav-container">
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#tmMainNav" aria-controls="tmMainNav" aria-expanded="false" aria-label="Toggle navigation">
                            <i class="fa fa-bars"></i>
                    </button>

                    <div class="collapse navbar-collapse tm-main-nav" id="tmMainNav">
                        <ul class="nav nav-fill tm-main-nav-ul">
                          	<li class="nav-item"><a class="nav-link" href="http://localhost:8081/JEETut1/index.jsp"> Home </a></li>
                            <li class="nav-item"><a class="nav-link" href="http://localhost:8081/JEETut1/login.jsp"> Login </a></li>
                            <li class="nav-item"><a class="nav-link" href="http://localhost:8081/JEETut1/logout.jsp"> Logout </a></li>
                            <li class="nav-item"><a class="nav-link" href="http://localhost:8081/JEETut1/register.jsp"> Register </a></li>
                            <li class="nav-item"><a class="nav-link" href="contact.html">Contact Us</a></li>
                        </ul>
                    </div>    
                </nav>
                
            </header>
            
            <div class="tm-main-content">
                <section class="row tm-margin-b-l">
                    <div class="col-12">
                        <h2 class="tm-blue-text tm-margin-b-p">You have been logged in</h2>
                    </div>
                    <div class="col-md-6 col-sm-12 mb-md-0 mb-5 tm-overflow-auto">         
                        <div class="mr-lg-5">
                        
                        <%

						String name = request.getParameter("name");
						out.println("Welcome " +name );

						%>
                                                      
                        </div>                                       
                    </div>
                   
                </section>

            </div>

            <footer>
                Copyright &copy; <span class="tm-current-year">2019</span> Marcos Garcia 
                
              
            </footer>    
        </div>
        
        <!-- load JS files -->
        <script src="js/jquery-1.11.3.min.js"></script>         <!-- jQuery (https://jquery.com/download/) -->
        <script src="js/popper.min.js"></script>                <!-- Popper (https://popper.js.org/) -->
        <script src="js/bootstrap.min.js"></script>             <!-- Bootstrap (https://getbootstrap.com/) -->
                   

</body>
</html>

<%

String name = request.getParameter("name");
out.println("Welcome " +name );

%>