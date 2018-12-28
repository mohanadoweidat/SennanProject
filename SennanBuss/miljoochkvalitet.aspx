<%@ Page Language="C#" MasterPageFile="~/bas/master.Master" AutoEventWireup="true" CodeBehind="miljoochkvalitet.aspx.cs" Inherits="SennanBuss.miljoochkvalitet"  Title="MILJÖ & KVALITET"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="styles/pages/quality.css" type="text/css"/>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         <div class="super_container">
             <!-- Home -->
        <!--  Image Background -->

	<div class="home no-slider"></div>


             <!-- Left section-->
              <div class="about">
 		<div class="container">
 			<div class="row">
				<div class="col text-left">
					<div class="section_subtitle"> </div>
					<div class="section_title">
                        <h4>
                            Miljö, Kvalitet & Säkerhet
                         </h4>
                 </div>
				</div>
			</div>
			<div class="row about_row">
				<div class="col-lg-6">
					<div class="about_content">
						<div class="about_text">Miljö, kvalitet och säkerhet är väldigt viktiga områden för oss.
                                               Miljö & Kvalitet Vi är miljöcertifierade sedan juni 2004 enligt ISO 14001:2004 och även 
                                               kvalitetscertifierade enligt ISO 9001:2000 sedan mars 2008.
                            </div>
                        <br />
                        <br />

                        <h4 style="color:black">Säkerhet</h4>


                        <div class="about_text">Miljö, kvalitet och säkerhet är väldigt viktiga områden för oss.
                                               Miljö & Kvalitet Vi är miljöcertifierade sedan juni 2004 enligt ISO 14001:2004 och även 
                                               kvalitetscertifierade enligt ISO 9001:2000 sedan mars 2008.
                            </div>
 					    </div>
                     </div>
               
                </div>
              </div>
          </div>
 </div>
                <!--- Card--->

        <div class="intro">
		 
		<div class="container">
					<div class="intro_container">
						<div class="row">

							<!-- Intro Item -->
							<div class="col-lg-4 intro_col"  >
 								<div class="intro_item d-flex flex-row align-items-end justify-content-start">
									<div class="intro_content">
                                            <a href="Data/sennan_certifikat_2017.pdf"><img src="images/sennan_certifikat_2017.jpg" alt="rbuss"  class="img-responsive" style="margin: 5px 5px 5px 5px"/></a> 
 									</div>
								</div>
 							</div>

                              <div class="col-lg-4 intro_col" >
 								<div class="intro_item d-flex flex-row align-items-end justify-content-start">
 									<div class="intro_content">
										 <a href="Data/skogaby_buss_certifikat_2017.pdf"> <img src="images/skogaby_buss_certifikat_2017.jpg" alt="rbuss"  class="img-responsive" style="margin: 5px 5px 5px 5px"/></a>
									</div>
								</div>
							</div>

						  <div class="col-lg-4 intro_col" >
 								<div class="intro_item d-flex flex-row align-items-end justify-content-start">
 									<div class="intro_content">
                                      <a href="Data/byggets_buss_certifikat_2017.pdf"> <img src="images/byggets_buss_certifikat_2017.jpg" alt="rbuss"  class="img-responsive"/></a>
									</div>
								</div>
							</div>
 						</div>
					</div>
				</div>		
           
			</div>
</asp:Content>