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
        <!--  Image Background -->

	<div class="home">
 		<!-- Home Slider -->
		<div class="home_slider_container">
			<div class="owl-carousel owl-theme home_slider">
				
				<!-- Slide -->
				<div class="owl-item">

					<div class="background_image" style="background-image:url(images/crap.jpg)">
 					</div>
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

                				<div class="owl-item">

					<div class="background_image" style="background-image:url(images/around.svg)">
 					</div>
					<div class="home_slider_content_container">
						<div class="container">
							<div class="row">
								<div class="col">
									<div class="home_slider_content">
										<div class="home_title"><h3 style="color:black">Hello</h3></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
  			</div>
           
            <div class="home_page_nav">

			</div>
 		</div>

	</div>
           
            








         
         
  

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
       
           

<script type="text/javascript">
    //Change pos/background/padding/add shadow on nav when scroll event happens 
$(function(){
	var navbar = $('.navbar');
	
	$(window).scroll(function(){
		if($(window).scrollTop() <= 40){
			navbar.removeClass('navbar-scroll');
		} else {
			navbar.addClass('navbar-scroll');
		}
	});
});
</script>

            
     	</div>
         </div>     
             
              
              
    </form>
 </body>
</html>
