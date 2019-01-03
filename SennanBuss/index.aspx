<%@ Page Title="Startsidan" Language="C#" MasterPageFile="~/bas/master.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="SennanBuss.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="styles/pages/index.css" rel="stylesheet"/>
    <style type="text/css">

        #Slideshow{
            margin:80px auto;
            
            width:100vh;
            height:240px;
             
            box-shadow:0 0 20px rgba(0,0,0,0.4);
        }
        #Slideshow > div{
           
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <div class="container">

 
    <div id="Slideshow">
        <div>
           <img src="images/slider/slider_1.jpg" class="img-responsive" />

       </div>
       <div>
           <img src="images/h10.jpg" class="img-responsive" />
       </div>
       <div>
           <img src="images/h2.jpg" class="img-responsive" />
       </div>
   </div>
       </div>
    <br />
    <%-- <div class="super_container">
	<div class="home">
		<div class="home_slider_container">
			<div class="owl-carousel owl-theme home_slider">
				<!-- Slide -->
				<div class="owl-item">
                    <img src="images/slider/slider_1.jpg" class="img-responsive"/>
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
	</div>--%>
         <!-- About -->
 		<div class="container about-a">
			<div class="row">
				<div class="col-lg-6" style="padding-bottom: 50px;">
                       <h4>
                        Gör som hallänningar gör varje dag, åk med Sennans Buss!
                       </h4>
						<div class="about_text">Sennans Buss AB är ett gammalt välrenommerat företag med många kända kunder bl.a. 
                            Försvarsmakten, Halmstads kommun, Hyltebruks Kommun, Markaryds Kommun, Region Halland, Hallandstrafiken, 
                            Kronobergs Länstrafik, Erlings Resor, Resia.
                         </div>
                        <br />
                         <h4 style="color:black">Vi har resurser för alla sorters uppdrag.</h4>
						<div class="about_text">
							<p> Våra bussar har upp till 59 sittplatser. Vår trevliga och kunniga personal och våra fina bussar borgar för att din resupplevelse blir något extra.</p>
						</div>
                        <div class="row about-bar">
                        <img src="../images/1.jpg" class="img-circle col-sm-6"/>
                        <img src="../images/2.jpg" class="img-circle col-sm-6"/>
                        </div>
                    <br />
		<p style="color:red">Den 2 januari 2017 utökades familjen genom att Sennans Buss tog över verksamheten i Unnaryds Buss. Gamla kunder, såväl som nya hälsas välkomna till Sennans Buss.</p>
                        <br />
				</div>
				<div class="col-lg-6">
					<div class="about-gallery">
                        <img src="images/rbuss.png" alt="rbuss" class="about-item img-responsive"/>
                        <div>
                        <h5 style="color:black; margin:5px 5px 5px 5px">Vi är unika med att kunna erbjuda konferensbuss i Hallands Län.</h5>
                        <p style="margin:5px 5px 5px 5px">Läs mer och titta på en film om vår nya konferensbuss!</p>
                        <p style="margin:5px 5px 5px 5px">Totalt 31 platser + Guidestol 17 personer kan sitta med ögonkontakt runt det stora bordet längst bak i bussen.</p>
                        <div class="button about_button" style="margin:5px 5px 5px 5px "><a href="konferensbuss.aspx">Klicka Här</a> </div>
                        </div>
 					</div>
				</div>
			</div>
		</div>
        <br /><br /><br />
		<div class="container symbols-a">
		<div class="row">
		<div class="col-lg-4 text-center">
        <div class="intro_title">Vi är både miljö- och kvalitetscertifierade.</div>
 		<div class="intro_item d-flex flex-row align-items-end justify-content-start">
 		<div class="intro_icon"></div>
		<div class="intro_content">
 		<div class="intro_subtitle"> <img src="images/c1.jpg" alt=""/>
 		</div>
 		</div>
		</div>
 		</div>

        <div class="col-lg-4 text-center">
        <div class="intro_title">Vi är både miljö- och kvalitetscertifierade.</div>
 		<div class="intro_item d-flex flex-row align-items-end justify-content-start">
        <div class="intro_icon"></div>
 		<div class="intro_content">
		<img src="images/c2.jpg" alt=""/>
		<div class="intro_subtitle"></div>
		</div>
		</div>
		</div>

		<div class="col-lg-4 text-center">
        <div class="intro_title">Vi är delägare i Bivab.</div>
 		<div class="intro_item d-flex flex-row align-items-end justify-content-start">
        <div class="intro_icon"></div>
 		<div class="intro_content">
		<img src="images/c3.png" alt=""/>
		</div>
		</div>
		</div>
		</div>
		</div>

    <script type="text/javascript">
        $("#Slideshow > div:gt(0)").hide();

        setInterval(function () {
            $('#Slideshow > div:first')
                .fadeOut(500)
                .next()
                .fadeIn(500)
                .end()
                .appendTo('#Slideshow');
        }, 3000);
    </script>
</asp:Content>