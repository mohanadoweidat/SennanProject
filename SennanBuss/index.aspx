<%@ Page Title="STARTSIDAN" Language="C#" MasterPageFile="~/bas/master.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="SennanBuss.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
               html { height: 100% }
::-moz-selection { background: #fe57a1; color: #fff; text-shadow: none; }
::selection { background: #fe57a1; color: #fff; text-shadow: none; }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         <div class="super_container">
        <!--  Image Background -->
	<div class="home">
 		<!-- Home Slider -->
		<div class="home_slider_container">
			<div class="owl-carousel owl-theme home_slider">
				<!-- Slide -->
				<div class="owl-item">
					<div class="background_image" style="background-image:url(images/slider/slider_1.jpg)">
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
					<div class="background_image" style="background-image:url(images/slider/slider_1.jpg)">
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
                            Gör som hallänningar gör varje dag, åk med Sennans Buss!
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
                        <img src="../images/1.jpg" class="img-circle" />
                        <img src="../images/2.jpg" class="img-circle" />
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
                        <div class="button about_button" style="margin:5px 5px 5px 5px "><a href="konferensbuss.aspx">Klicka Här</a> </div>
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
 										<div class="intro_subtitle"> <img src="images/c1.jpg" alt=""/>
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
     	</div>
             
         </div>
  
</asp:Content>