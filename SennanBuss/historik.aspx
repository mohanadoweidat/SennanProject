<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="historik.aspx.cs" Inherits="SennanBuss.historik" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <!-- Metas tags-->

    <title>Historik</title>
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
               <li><a href="index.aspx">STARTSIDAN</a></li>
				<li><a href="varabussar.aspx">VÅRA BUSSAR</a></li>
                <li><a href="miljoochkvalitet.aspx">MILJÖ & KVALITET</a></li>
				<li><a class="active" href="historik.aspx">HISTORIK</a></li>
				<li><a href="konferensbuss.aspx">KONFERENSBUSS</a></li>
				<li><a href="kontaktaoss.aspx">KONTAKTA OSS</a></li>
            </ul>


             <ul class="nav navbar-nav navbar-right">
                     
                <% 


                    if (Session["Username"] == null)
                        Response.Write("<li><a href='../Accounts/Signup.aspx'> Skapa ett konto</a></li>" + "<li><a href='../Accounts/Login.aspx'>Logga In</a></li>" );
                    else
                    {
                        
                        Response.Write("<li><a href='../Accounts/Login.aspx'> Logga ut</a></li>");

                    }
                     


                 %>


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
				<div class="background_image" style="background-image:url(images/slider/slider_1.jpg)"></div>
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
</div>
        <!-- /End Slider-->


        <!-- Left section-->

                 <div class="about">
 		<div class="container">
 			<div class="row">
				<div class="col text-left">
					<div class="section_subtitle"> </div>
					<div class="section_title">
                        <h3>
                            Historik - en bussresa genom tiden.
                         </h3>
                 </div>
				</div>
			</div>
 		</div>

<br />
     
                     <div class="about">
		<div class="container">
			<div class="row">
				<div class="col text-center">
					 
				</div>
			</div>
			<div class="row about_row">
				<div class="col-lg-6">
					<div class="about_content">
						<div class="text_highlight"> </div>
						<div class="about_text">
							<p> 1923 bildade Bröderna Andersson, Anderssons Busstrafik Gräsås.</p>
						</div>
						 
					</div>
				</div>
				<div class="col-lg-6">
					<div class="about_image"><img src="images/h1.jpg" alt=""></div>
				</div>
			</div>
		</div>
	</div>





                     <br />
     
                     <div class="about">
		<div class="container">
			<div class="row">
				<div class="col text-center">
					 
				</div>
			</div>
			<div class="row about_row">
				<div class="col-lg-6">
					<div class="about_content">
						<div class="text_highlight"> </div>
						<div class="about_text">
							<p> I januari 1969 sålde bröderna Andersson Busstrafiken till Sennan o Oskarströms Taxi Curt Börjesson. Samtidigt flyttades verksamheten till Sennan.</p>
						</div>
						 
					</div>
				</div>
				<div class="col-lg-6">
					<div class="about_image"><img src="images/h2.jpg" alt=""></div>
				</div>
			</div>
		</div>
	</div>


                     <br />
                     <div class="about">
		<div class="container">
			<div class="row">
				<div class="col text-center">
					 
				</div>
			</div>
			<div class="row about_row">
				<div class="col-lg-6">
					<div class="about_content">
						<div class="text_highlight"> </div>
						<div class="about_text">
							<p>Den 1 maj 1976 bildades Sennans Buss AB av Sven Ingelsten, Ingvar Andersson och Kenneth Wernersson och övertog bussverksamheten av Curt Börjesson som fortsatte med Sennans Taxi.</p>
						</div>
						 
					</div>
				</div>
				<div class="col-lg-6">
					<div class="about_image"><img src="images/h3.jpg" alt=""></div>
				</div>
			</div>
		</div>
	</div>
        
        

             <br />
                     <div class="about">
		<div class="container">
			<div class="row">
				<div class="col text-center">
					 
				</div>
			</div>
			<div class="row about_row">
				<div class="col-lg-6">
					<div class="about_content">
						<div class="text_highlight"> </div>
						<div class="about_text">
							<p>I augusti 1976 köptes en buss av Gösta Johansson, Skavböke.</p>
						</div>
						 
					</div>
				</div>
				<div class="col-lg-6">
					<div class="about_image"><img src="images/h4.jpg" alt=""></div>
				</div>
			</div>
		</div>
	</div>
        
                        <br />
                     <div class="about">
		<div class="container">
			<div class="row">
				<div class="col text-center">
					 
				</div>
			</div>
			<div class="row about_row">
				<div class="col-lg-6">
					<div class="about_content">
						<div class="text_highlight"> </div>
						<div class="about_text">
							<p>1978 köptes en buss av denna modellen, då av Göstas bror, Stig Johansson, Skavböke.</p>
						</div>
						 
					</div>
				</div>
				<div class="col-lg-6">
					<div class="about_image"><img src="images/h5.jpg" alt=""></div>
				</div>
			</div>
		</div>
	</div>
        

                     
                        <br />
                     <div class="about">
		<div class="container">
			<div class="row">
				<div class="col text-center">
					 
				</div>
			</div>
			<div class="row about_row">
				<div class="col-lg-6">
					<div class="about_content">
						<div class="text_highlight"> </div>
						<div class="about_text">
							<p>1981 flyttade verksamheten från Oskarströmsvägen 11 till lokaler på Industrivägen.

I november 1983 slutade Kenneth på Sennans Buss och blev utlöst ur firman i april 1984.

1988 övertogs Hallands Buss. (Slättåkra Taxi) Samma år köptes den första konferensbussen.

1991 tog Ingvar över verksamheten själv.</p>
						</div>
						 
					</div>
				</div>
				<div class="col-lg-6">
					<div class="about_image"><img src="images/h6.jpg" alt=""></div>
				</div>
			</div>
		</div>
	</div>
        
                         <br />
                     <div class="about">
		<div class="container">
			<div class="row">
				<div class="col text-center">
					 
				</div>
			</div>
			<div class="row about_row">
				<div class="col-lg-6">
					<div class="about_content">
						<div class="text_highlight"> </div>
						<div class="about_text">
							<p>1993 började Sennans Buss att köra linjetrafik för Hallandstrafiken. Detta gjordes till 2002.</p>
						</div>
						 
					</div>
				</div>
				<div class="col-lg-6">
					<div class="about_image"><img src="images/h7.jpg" alt=""></div>
				</div>
			</div>
		</div>
	</div>
        
                             <br />
                     <div class="about">
		<div class="container">
			<div class="row">
				<div class="col text-center">
					 
				</div>
			</div>
			<div class="row about_row">
				<div class="col-lg-6">
					<div class="about_content">
						<div class="text_highlight"> </div>
						<div class="about_text">
							<p>1998 köptes Skogaby Buss. Depå i Laholm övertogs.</p>
						</div>
						 
					</div>
				</div>
				<div class="col-lg-6">
					<div class="about_image"><img src="images/h8.jpg" alt=""/></div>
				</div>
			</div>
		</div>
	</div>

                  <br />
                     <div class="about">
		<div class="container">
			<div class="row">
				<div class="col text-center">
					 
				</div>
			</div>
			<div class="row about_row">
				<div class="col-lg-6">
					<div class="about_content">
						<div class="text_highlight"> </div>
						<div class="about_text">
							<p>2002 köptes konferensbussen. En Scania PB Irizar..</p>
						</div>
						 
					</div>
				</div>
				<div class="col-lg-6">
					<div class="about_image"><img src="images/h9.jpg" alt=""/></div>
				</div>
			</div>
		</div>
	</div>

                       <br />
                     <div class="about">
		<div class="container">
			<div class="row">
				<div class="col text-center">
					 
				</div>
			</div>
			<div class="row about_row">
				<div class="col-lg-6">
					<div class="about_content">
						<div class="text_highlight"> </div>
						<div class="about_text">
							<p>2010 var vi tillbaka för att köra för Hallandstrafiken.</p>
						</div>
						 
					</div>
				</div>
				<div class="col-lg-6">
					<div class="about_image"><img src="images/h10.jpg" alt=""/></div>
				</div>
			</div>
		</div>
	</div>

                      <br />
                     <div class="about">
		<div class="container">
			<div class="row">
				<div class="col text-center">
					 
				</div>
			</div>
			<div class="row about_row">
				<div class="col-lg-6">
					<div class="about_content">
						<div class="text_highlight"> </div>
						<div class="about_text">
							<p>2013 öppnades Depå i Markaryd med 6 bussar åt Kronobergstrafiken.</p>
						</div>
						 
					</div>
				</div>
				<div class="col-lg-6">
					<div class="about_image"><img src="images/h11.jpg" alt=""/></div>
				</div>
			</div>
		</div>
	</div>

                      <br />
                     <div class="about">
		<div class="container">
			<div class="row">
				<div class="col text-center">
					 
				</div>
			</div>
			<div class="row about_row">
				<div class="col-lg-6">
					<div class="about_content">
						<div class="text_highlight"> </div>
						<div class="about_text">
							<p>2014 övertogs Byggets Buss.</p>
						</div>
						 
					</div>
				</div>
				<div class="col-lg-6">
					<div class="about_image"><img src="images/h12.jpg" alt=""/></div>
				</div>
			</div>
		</div>
	</div>

                      <br />
                     <div class="about">
		<div class="container">
			<div class="row">
				<div class="col text-center">
					 
				</div>
			</div>
			<div class="row about_row">
				<div class="col-lg-6">
					<div class="about_content">
						<div class="text_highlight"> </div>
						<div class="about_text">
							<p>2016 – Sennans Buss firar 40 år.</p>
						</div>
						 
					</div>
				</div>
				<div class="col-lg-6">
					<div class="about_image"><img src="images/h13.jpg" alt=""/></div>
				</div>
			</div>
		</div>
	</div>

                          <br />
                     <div class="about">
		<div class="container">
			<div class="row">
				<div class="col text-center">
					 
				</div>
			</div>
			<div class="row about_row">
				<div class="col-lg-6">
					<div class="about_content">
						<div class="text_highlight"> </div>
						<div class="about_text">
							<p>2017 - Unnaryds Buss övertogs med 5 fordon.</p>
						</div>
						 
					</div>
				</div>
				<div class="col-lg-6">
					<div class="about_image"><img src="images/h14.jpg" alt=""/></div>
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
        <script src="js/main.js"></script>
       
           
<!-- Navbar script (Scroll)-->
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



	 

	 
 



 
       
    </form>
</body>
</html>
