
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
                        <h2 class="tm-blue-text tm-margin-b-p">Please Register Below</h2>
                    </div>
                    <div class="col-md-6 col-sm-12 mb-md-0 mb-5 tm-overflow-auto">         
                        <div class="mr-lg-5">
                        
                            <!-- contact form 
                            
                            <form action="ProcessInfo" method="post">

								<label>First Name: </label>
								<input type="text" name= "firstName"><br>
	
								<label>Last Name: </label>
								<input type="text" name= "lastName"><br>
	
								<label>Phone: </label>
								<input type="text" name= "phone"><br>
	
								<input type="submit" value="Send">

							</form>
                            
                            -->
                            
                            <form action="ProcessInfo" method="post" class="tm-contact-form">
                                <div class="form-group">
                                    <input type="text" id="contact_name" name="firstName" class="form-control" placeholder="First Name"  required/>
                                </div>
                                <div class="form-group">                                                        
                                    <input type="text" id="contact_email" name="lastName" class="form-control" placeholder="Password"  required/>
                                </div>
                                <div class="form-group">
                               		<input type="text" id="contact_message" name="phone" class="form-control" placeholder="Phone" required></textarea>
                                    <!--
                                    	<textarea id="contact_message" name="contact_message" class="form-control" rows="8" placeholder="Message" required></textarea>
                                    -->
                                </div>
                                <button type="submit" class="tm-btn tm-btn-blue float-right">Submit</button>
                            </form>
                                                      
                        </div>                                       
                    </div>
                    <div class="col-md-6 col-sm-12">
                    <h2>For more information:</h2>
                        <p class="tm-margin-b-p">Morbi auctor euismod dictum. Morbi eu nibh in nulla interdum placerat. Donec pellentesque est at sem aliquam hendrerit.</p>
                        <address>
                            <span class="tm-blue-text">Mailing Address</span><br>
                            1111 Street in Vancouver,<br>
                           	Somewhere in Vancouver BC<br><br>
                            <div class="tm-blue-text">          
                                Email: <a class="tm-blue-text" href="mailto:info@company.com">yamgarcia.ca@gmail.com</a
                                ><br>
                                Tel: <a class="tm-blue-text" href="tel:+7783232829">7783232829</a><br>
                                Fax: <a class="tm-blue-text" href="tel:+7783232829">7783232829</a><br>    
                            </div>                            
                        </address>
                        
                    </div>
                </section>

                <section class="row tm-margin-b-l">
                    <div class="col-12">
                        <header>
                            <h4 class="tm-blue-text tm-margin-b">Our Location</h4>
                        </header>
                        <div id="google-map"></div>
                    </div>
                </section>

                <section class="media tm-highlight tm-highlight-w-icon">

                    <div class="tm-highlight-icon">
                        <i class="fa tm-fa-6x fa-meetup"></i>    
                    </div>                    

                    <div class="media-body">
                        <header>
                            <h2>Need Help?</h2>
                        </header>
                        <p class="tm-margin-b">Curabitur magna tellus, condimentum vitae consectetur id, elementum sit amet erat. Phasellus arcu leo, sagittis fringilla nisi et, pulvinar vestibulum mi. Maecenas mollis ullamcorper est at dignissim.</p>
                        <a href="" class="tm-white-bordered-btn">Live Chat</a>
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
        <script>     

            /* Google map
            ------------------------------------------------*/
            var map = '';
            var center;

            function initialize() {
                var mapOptions = {
                    zoom: 16,
                    center: new google.maps.LatLng(37.769725, -122.462154),
                    scrollwheel: false
                };
            
                map = new google.maps.Map(document.getElementById('google-map'),  mapOptions);

                google.maps.event.addDomListener(map, 'idle', function() {
                  calculateCenter();
                });
            
                google.maps.event.addDomListener(window, 'resize', function() {
                  map.setCenter(center);
                });
            }

            function calculateCenter() {
                center = map.getCenter();
            }

            function loadGoogleMap(){
                var script = document.createElement('script');
                script.type = 'text/javascript';
				// use your own API key for Google Maps
                script.src = 'https://maps.googleapis.com/maps/api/js?key=AIzaSyC_iLYB-9nzlBfwB18WEDTCMla3Cr97lsg&v=3.exp&sensor=false&' + 'callback=initialize';
                document.body.appendChild(script);
            } 
       
            $(document).ready(function(){

                // Google Map
                loadGoogleMap();  
                
                // Update the current year in copyright
                $('.tm-current-year').text(new Date().getFullYear());

            });

        </script>             

</body>
</html>