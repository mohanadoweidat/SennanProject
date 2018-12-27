<%@ Page Language="C#" MasterPageFile="~/bas/master.Master" AutoEventWireup="true" CodeBehind="konferensbuss.aspx.cs" Inherits="SennanBuss.konferensbuss" Title="KONFERENSBUSS" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
</asp:Content>
   
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         <div class="super_container">
        <!--  Image Background -->
        <div class="home no-slider">
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
      <hr style="margin:0 80px 0 80px ; border:5px solid black" />
            </div>
</asp:Content>