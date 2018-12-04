<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="SennanBuss.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Metas tags-->
    <title>Startsidan</title>
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
    

<link rel="stylesheet" type="text/css" href="styles/bootstrap4/bootstrap.min.css"/>
<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.carousel.css"/>
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.theme.default.css"/>
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/animate.css"/>
<link rel="stylesheet" type="text/css" href="styles/main_styles.css"/>
<link rel="stylesheet" type="text/css" href="styles/responsive.css"/>
     
 






    <!-- CSS -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,600">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.6/css/all.css">
        <link rel="stylesheet" href="assets/css/animate.css">
        <link rel="stylesheet" href="assets/css/style.css">
        <link rel="stylesheet" href="assets/css/media-queries.css">

</head>
<body>
    <form id="form1" runat="server">
       <div class="super_container">
 	
           <!-- Header -->
 	<header class="header">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="header_content d-flex flex-row align-items-center justify-content-start">
						<div class="header_content_inner d-flex flex-row align-items-end justify-content-start">
							<div class="logo"><a href="index.aspx">SENNAN BUSS</a></div>
							<nav class="main_nav">
								<ul class="d-flex flex-row align-items-start justify-content-start">
									<li class="active"><a href="index.aspx">STARTSIDAN</a></li>
									<li><a href="varabussar.aspx"> VÅRA BUSSAR</a></li>
									<li><a href="miljoochkvalitet.aspx">MILJÖ & KVALITET</a></li>
									<li><a href="historik.aspx">HISTORIK</a></li>
									<li><a href="konferensbuss.aspx">KONFERENSBUSS</a></li>
                                    <li><a href="kontaktaoss.aspx">KONTAKTA OSS</a></li>
								</ul>
							</nav>
							 

							<!-- Hamburger -->

							<div class="hamburger ml-auto">
								<i class="fa fa-bars" aria-hidden="true"></i>
							</div>
  						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="header_social d-flex flex-row align-items-center justify-content-start">
			<ul class="d-flex flex-row align-items-start justify-content-start">
				<li><a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a></li>
				<li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
				<li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
				<li><a href="#"><i class="fa fa-dribbble" aria-hidden="true"></i></a></li>
				<li><a href="#"><i class="fa fa-behance" aria-hidden="true"></i></a></li>
				<li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
			</ul>
		</div>
	</header>

	<!-- Menu(Bootstrap) -->

	<div class="menu">
		<div class="menu_header d-flex flex-row align-items-center justify-content-start">
			<div class="menu_logo"><a href="index.aspx">SENNAN BUSS</a></div>
			<div class="menu_close_container ml-auto"><div class="menu_close"><div></div><div></div></div></div>
		</div>
		<div class="menu_content">
			<ul>
				<li><a href="index.aspx">STARTSIDAN</a></li>
				<li><a href="varabussar.aspx">VÅRA BUSSAR</a></li>
                <li><a href="miljoochkvalitet.aspx">MILJÖ & KVALITET</a></li>
				<li><a href="historik.aspx">HISTORIK</a></li>
				<li><a href="konferensbuss.aspx">KONFERENSBUSS</a></li>
				<li><a href="kontaktaoss.aspx">KONTAKTA OSS</a></li>
			</ul>
		</div>
		<div class="menu_social">
 			<ul class="d-flex flex-row align-items-start justify-content-start">
				<li><a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a></li>
				<li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
				<li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
				<li><a href="#"><i class="fa fa-dribbble" aria-hidden="true"></i></a></li>
				<li><a href="#"><i class="fa fa-behance" aria-hidden="true"></i></a></li>
				<li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
			</ul>
		</div>
	</div> 
           </div>



        <!-- Home -->
        <!--  Image Background -->

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
										<div class="home_title"><h2>Let us take you away</h2></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
  			</div>

			<div class="home_page_nav">
				<ul class="d-flex flex-column align-items-end justify-content-end">
					<li><a href="#" data-scroll-to="#destinations">Offers<span>01</span></a></li>
					<li><a href="#" data-scroll-to="#testimonials">Testimonials<span>02</span></a></li>
					<li><a href="#" data-scroll-to="#news">Latest<span>03</span></a></li>
				</ul>
			</div>
		</div>
	</div>




        <!---- Content----->

        <!-- About -->

	<div class="about">
		<div class="container">
			<div class="row">
				<div class="col text-left">
					<div class="section_subtitle"> </div>
					<div class="section_title">
                        <h4>
                            Gör som hallänningar gör varje dag,åk med Sennans Buss!
                         </h4>
                 </div>
				</div>
			</div>
			<div class="row about_row">
				<div class="col-lg-6">
					<div class="about_content">
						<div class="about_text">Sennans Buss AB är ett gammalt välrenommerat företag med många kända kunder bl.a. 
                            Försvarsmakten, Halmstads kommun, Hyltebruks Kommun, Markaryds Kommun, Region Halland, Hallandstrafiken, 
                            Kronobergs Länstrafik, Erlings Resor, Resia.
                         </div>
                        <br />
                         <h4 style="color:black">Vi har resurser för alla sorters uppdrag.</h4>
						<div class="about_text">
                           
							<p> Våra bussar har upp till 59 sittplatser. Vår trevliga och kunniga personal och våra fina bussar borgar för att din resupplevelse blir något extra.</p>
						</div>
                        <br />
                        <div class="about_text">
                           
							<p style="color:red">Den 2 januari 2017 utökades familjen genom att Sennans Buss tog över verksamheten i Unnaryds Buss. Gamla kunder, såväl som nya hälsas välkomna till Sennans Buss.</p>
						</div>
						
                        
                        <img src="images/1.jpg" class="img-circle" />
                        <img src="images/2.jpg" class="img-circle" />

					</div>
				</div>
				<div class="col-lg-6">
					<div class="about_image" style="background-color: blanchedalmond; border:1px solid black; ">
                        <img src="images/rbuss.png" alt="rbuss"  class="img-responsive" style="margin: 5px 5px 5px 5px"/>
                        <br />
                        <br />
                        <h5 style="color:black; margin:5px 5px 5px 5px">Vi är unika med att kunna erbjuda konferensbuss i Hallands Län.</h5>
                         
                      
                        <p style="margin:5px 5px 5px 5px">Läs mer och titta på en film om vår nya konferensbuss!</p>

                        <p style="margin:5px 5px 5px 5px">Totalt 31 platser + Guidestol 17 personer kan sitta med ögonkontakt runt det stora bordet längst bak i bussen.</p>


                        <div class="button about_button" style="margin:5px 5px 5px 5px "><a href="#">Klicka Här</a></div>

					</div>
                    
				</div>
			</div>
		</div>




        <!--- Card<--->

        <div class="intro">
		<div class="intro_background" style="background-image:url(images/intro.png)"></div>
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="intro_container">
						<div class="row">

							<!-- Intro Item -->
							<div class="col-lg-4 intro_col"  >
                                <center>
                              <div class="intro_title">Vi är både miljö- och kvalitetscertifierade.</div>
                                     </center>
 								<div class="intro_item d-flex flex-row align-items-end justify-content-start">
 									<div class="intro_icon"></div>
									<div class="intro_content">
 										<div class="intro_subtitle"> <img src="images/c1.jpg" alt="">
 										</div>
 									</div>
								</div>
 							</div>

                            <!-- Intro Item -->
                              <div class="col-lg-4 intro_col" >
                                <center>
                             <div class="intro_title">Vi är både miljö- och kvalitetscertifierade.</div>
                                     </center>
 								<div class="intro_item d-flex flex-row align-items-end justify-content-start">
                                    <div class="intro_icon"></div>
 									<div class="intro_content">
										 <img src="images/c2.jpg" alt=""/>
										<div class="intro_subtitle"></div>
									</div>
								</div>
							</div>

                          <!-- Intro Item -->
						  <div class="col-lg-4 intro_col" >
                                <center>
                             <div class="intro_title">Vi är delägare i Bivab.</div>
                                     </center>
 								<div class="intro_item d-flex flex-row align-items-end justify-content-start">
                                    <div class="intro_icon"></div>
 									<div class="intro_content">
										 <img src="images/c3.png" alt=""/>
										<div class="intro_subtitle"></div>
									</div>
								</div>
							</div>
 						</div>
					</div>
				</div>		
			</div>
		</div>
	</div>
  	<!-- Footer -->

	 
  	<!-- Section 4 -->
        <div class="section-4-container section-container section-container-gray-bg">
	        <div class="container">
	            <div class="row">
	                <div class="col section-4 section-description wow fadeInLeftBig">
                        <center>
                            <h3>Sennans Buss AB / Byggets Buss / Skogaby Buss / Unnaryds Buss</h3>
  	                    <p> telefon: 035-661 10 - fax: 035-662 19 - epost: info@sennansbuss.se </p>
                       </center>
	                </div>
	            </div>
	        </div>
        </div>
        
        <!-- Footer -->
        



        <!-- Footer script -->
  
         
        <!--- Site scripts--->
        <script src="js/jquery-3.2.1.min.js"></script>
        <script src="styles/bootstrap4/popper.js"></script>
        <script src="styles/bootstrap4/bootstrap.min.js"></script>
        <script src="plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
        <script src="plugins/Isotope/isotope.pkgd.min.js"></script>
        <script src="plugins/scrollTo/jquery.scrollTo.min.js"></script>
        <script src="plugins/easing/easing.js"></script>
        <script src="plugins/parallax-js-master/parallax.min.js"></script>
        <script src="js/custom.js"></script>
       
           



            
     	</div>
    </form>
 </body>
</html>
