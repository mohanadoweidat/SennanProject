<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="konferensbuss.aspx.cs" Inherits="SennanBuss.konferensbuss" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <!-- Metas tags-->
    <title>Konferensbuss</title>
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

     <!-- Video style-->
    <style type="text/css">
            .embedresize {
max-width: 100%;
 margin:0 20px 0 20px;
 
}

.embedresize div {
position: relative;
height: 0;
padding-bottom: 56.25%;
}

.embedresize iframe {
position: absolute;
 
width: 100%;
height: 100%;
margin:0 auto;
 
}

.intro #intro .embedresize iframe,
.exit .quizz .embedresize iframe,
.alreadyplayed #intro .embedresize iframe, 
.identityset #intro .embedresize iframe, 
#notabene .embedresize iframe, 
#message_intro .embedresize iframe, 
.fancybox_body .embedresize iframe, 
#comments .embedresize iframe, 
#description .embedresize iframe, 
.alreadyplayed .embedresize iframe, 
#adserver .embedresize iframe {
max-width: none !important;
}

        </style>
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

        <br />
      
        
        <!-- Video-->
       
         <div class="embedresize">
       <div>
        <iframe allowfullscreen="" frameborder="0" height="315" src='https://www.youtube.com/embed/yvcE5nsqnh4' width="512"></iframe>
     </div>
     </div>
        <!-- / End Video-->

        <br />
         

         <div class="about">
 		<div class="container">
 			<div class="row">
				<div class="col text-left">
					<div class="section_subtitle"> </div>
					<div class="section_title">
                        <h4>
                            Vi är unika med att kunna erbjuda konferensbuss i Hallands Län.
                         </h4>
                 </div>
				</div>
			</div>
			<div class="row about_row">
				<div class="col-lg-6">
					<div class="about_content">
						<div class="about_text"> 
                         </div>
                        <img src="images/rbuss.png" class="img-responsive" />
                        <br />
                         <h4 style="color:black"> </h4>
						<div class="about_text">
                           
							<p></p>
						</div>
                        <br />
                        <div class="about_text">
                           
							<p style="color:red"> </p>
						</div>
						
                        
                        

					</div>
				</div>
				<div class="col-lg-6">
					<div class="about_image" <!--style="background-color: blanchedalmond; border:1px solid black;--> ">
                       
                        <br />
                        <br />
                        <p style="margin:5px 5px 5px 5px">Vår nya konferensbuss är redo för bokning. Fri offert.</p>
                         
                      
                        <p style="margin:5px 5px 5px 5px">Totalt 31 platser + Guidestol 17 personer kan sitta med ögonkontakt runt det stora bordet i bakdelen, vilket brukar vara mycket uppskattat av våra återkommande kunder.</p>

                        <p style="margin:5px 5px 5px 5px">Bussen är utrustad med många skärmar för visning av material från dator och liknande. Vi har valt 3 rader i bredd i bussen för bredare stolar med mycket högre komfort. Stolarna är av modell ROYAL AIR.</p>

                         <img src="images/kimg.png" alt="rbuss"  class="img-responsive" style="margin: 5px 5px 5px 5px"/>
                        <br />
                         <p style="margin:5px 5px 5px 5px">Toalett, trepunktsbälte, alkolås samt automatiskt brandsläckarsystem är självklart. Bussen är även utrustad med ett mindre kök med bl.a. kaffebryggare, micro, korvkokare m.m.</p>

                          <p style="margin:5px 5px 5px 5px">Som komplement till denna buss finns vår lilla konferensbuss med 24 platser.</p>
					</div>
                    
				</div>
			</div>
		</div>
        
       
 <br />
     <hr style="margin:0 80px 0 80px" />
  
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
 <script src="js/main.js"></script>


             
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
    </form>
</body>
</html>
