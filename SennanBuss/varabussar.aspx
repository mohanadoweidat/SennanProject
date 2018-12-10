<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="varabussar.aspx.cs" Inherits="SennanBuss.varabussar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <!-- Metas tags-->
    <title>Våra Bussar</title>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    
    <!-- Bootstrap-->
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

     <!------------>
    

<!--<link rel="stylesheet" type="text/css" href="styles/bootstrap4/bootstrap.min.css"/>-->
<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.carousel.css"/>
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.theme.default.css"/>
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/animate.css"/>
<link rel="stylesheet" type="text/css" href="styles/main_styles.css"/>
<link rel="stylesheet" type="text/css" href="styles/responsive.css"/>
    <link rel="stylesheet"  href="styles/Style.css" type="text/css" />
     
</head>
<body>
    <form id="form1" runat="server">
         <div class="super_container">
 	
              <!-- Start Navbar-->
               <!-- Load an icon library to show a hamburger menu (bars) on small screens -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>

 <nav class="navbar navbar-default navbar-fixed-top" id="myScrollspy">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" data-target="#navbarCollapse" data-toggle="collapse" class="navbar-toggle">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
             <a href="#" class="navbar-brand" style="  color: black;">  Sennan Buss</a>
        </div>


        <!-- Collection of nav links and other content for toggling -->
        <div id="navbarCollapse" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
               <li><a class="active" href="index.aspx">STARTSIDAN</a></li>
				<li><a href="varabussar.aspx">VÅRA BUSSAR</a></li>
                <li><a href="miljoochkvalitet.aspx">MILJÖ & KVALITET</a></li>
				<li><a href="historik.aspx">HISTORIK</a></li>
				<li><a href="konferensbuss.aspx">KONFERENSBUSS</a></li>
				<li><a href="kontaktaoss.aspx">KONTAKTA OSS</a></li>
            </ul>


            <ul class="nav navbar-nav navbar-right">
                <li><a href="#">Logga in</a></li>
                <li><a href="#">Skapa konto</a></li>
            </ul>
        </div>
    </div>
</nav>  
                    
          <!--/End navbar-->
	
	<!-- Home -->

	<div class="home">
		
		<!-- Home Slider -->
		<div class="home_slider_container">
			<div class="owl-carousel owl-theme home_slider">
				
				<!-- Slide -->
				<div class="owl-item">
					<div class="background_image" style="background-image:url(images/crap.jpg)"></div>
					<div class="home_slider_content_container">
						<div class="container">
							<div class="row">
								<div class="col">
									<div class="home_slider_content">
										<div class="home_title"><h3 style="color:white">Let us take you away</h3></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
  			</div>
  		</div>
	</div>
       
        
        <div class="about">
		<div class="container">
			<div class="row">
				<div class="col text-left">
					<div class="section_subtitle"></div>
					<div class="section_title">
                        <h4>Våra Bussar </h4>
                  </div>
				</div>
			</div>
			<div class="row about_row">
				<div class="col-lg-6">
					<div class="about_content">
						<div class="about_text">Vi har idag 26 bussar i storlekar upp till 59 passagerare.<br /><br />
                               Alla bussarna är utrustade med alkolås, säkerhetsbälte och automatiskt brandskydd för att förhindra brand i motorutrymmet.<br /><br />
                               I april kommer vår nya konferensbuss. Väldigt lyxig...
                         </div>
    					</div>
				</div>
                </div>

                <!-- Buss images -->

	<div class="destinations" id="destinations">
		<div class="container">
			<div class="row">
				<div class="col text-center">
					<div class="section_subtitle"></div>
					<div class="section_title"> <h3 style="color:black">Här kan ni se några av våra bussar. </h3></div>
				</div>
			</div>
			<div class="row destinations_row">
				<div class="col">
					<div class="destinations_container item_grid">

						<!-- Destination -->
						<div class="destination item">
							<div class="destination_image">
								<img src="images/imgv1.jpg" alt=""/>
								<!---<div class="spec_offer text-center"><a href="#"></a></div>-->
							</div>
							<div class="destination_content">
								<div class="destination_title"><a href="destinations.html">Bali</a></div>
								<div class="destination_subtitle"><p>Nulla pretium tincidunt felis, nec.</p></div>
								 
							</div>
						</div>

						<!-- Destination -->
						<div class="destination item">
							<div class="destination_image">
								<img src="images/imgv2.jpg" alt=""/>
							</div>
							<div class="destination_content">
								<div class="destination_title"><a href="destinations.html">Indonesia</a></div>
								<div class="destination_subtitle"><p>Nulla pretium tincidunt felis, nec.</p></div>
					 
							</div>
						</div>

						<!-- Destination -->
						<div class="destination item">
							<div class="destination_image">
								<img src="images/imgv3.jpg" alt=""/>
							</div>
							<div class="destination_content">
								<div class="destination_title"><a href="destinations.html">San Francisco</a></div>
								<div class="destination_subtitle"><p>Nulla pretium tincidunt felis, nec.</p></div>
 							</div>
						</div>

						<!-- Destination -->
						<div class="destination item">
							<div class="destination_image">
								<img src="images/imgv4.jpg" alt=""/>
							</div>
							<div class="destination_content">
								<div class="destination_title"><a href="destinations.html">Paris</a></div>
								<div class="destination_subtitle"><p>Nulla pretium tincidunt felis, nec.</p></div>
								 
							</div>
						</div>

						<!-- Destination -->
						<div class="destination item">
							<div class="destination_image">
								<img src="images/imgv5.jpg" alt=""/>
							</div>
							<div class="destination_content">
								<div class="destination_title"><a href="destinations.html">Phi Phi Island</a></div>
								<div class="destination_subtitle"><p>Nulla pretium tincidunt felis, nec.</p></div>
							 
							</div>
						</div>

						<!-- Destination -->
						<div class="destination item">
							<div class="destination_image">
								<img src="images/imgv6.jpg" alt=""/>
							</div>
							<div class="destination_content">
								<div class="destination_title"><a href="destinations.html">Mykonos</a></div>
								<div class="destination_subtitle"><p>Nulla pretium tincidunt felis, nec.</p></div>
								 
							</div>
						</div>

                        <div class="destination item">
							<div class="destination_image">
								<img src="images/imgv7.jpg" alt=""/>
							</div>
							<div class="destination_content">
								<div class="destination_title"><a href="destinations.html">Phi Phi Island</a></div>
								<div class="destination_subtitle"><p>Nulla pretium tincidunt felis, nec.</p></div>
								 
							</div>
						</div>


                        <div class="destination item">
							<div class="destination_image">
								<img src="images/imgv8.jpg" alt=""/>
							</div>
							<div class="destination_content">
								<div class="destination_title"><a href="destinations.html">Phi Phi Island</a></div>
								<div class="destination_subtitle"><p>Nulla pretium tincidunt felis, nec.</p></div>
							</div>
						</div>
                        <div class="destination item">
							<div class="destination_image">
								<img src="images/imgv9.jpg" alt=""/>
							</div>
							<div class="destination_content">
								<div class="destination_title"><a href="destinations.html">Phi Phi Island</a></div>
								<div class="destination_subtitle"><p>Nulla pretium tincidunt felis, nec.</p></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

                
			
		</div>
        </div>
</div>

                    <!---- Scripts----->
        <script src="js/jquery-3.2.1.min.js"></script>
<script src="styles/bootstrap4/popper.js"></script>
<script src="styles/bootstrap4/bootstrap.min.js"></script>
<script src="plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="plugins/Isotope/isotope.pkgd.min.js"></script>
<script src="plugins/scrollTo/jquery.scrollTo.min.js"></script>
<script src="plugins/easing/easing.js"></script>
<script src="plugins/parallax-js-master/parallax.min.js"></script>
<script src="js/custom.js"></script>
    </form>
</body>
</html>
