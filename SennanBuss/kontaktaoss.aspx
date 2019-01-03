<%@ Page Language="C#" MasterPageFile="~/bas/master.Master" AutoEventWireup="true" CodeBehind="kontaktaoss.aspx.cs" Inherits="SennanBuss.kontaktaoss"  Title="KONTAKTA OSS"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  
     <!-- Log in and sign up form style-->
  <style>
        html { height: 100% }
::-moz-selection { background: #fe57a1; color: #fff; text-shadow: none; }
::selection { background: #fe57a1; color: #fff; text-shadow: none; }

 

 .homecontactform {
width: 350px;
position: relative;
display: block;
margin: 0 auto;
  padding: 40px 0;
}
.homecontactform:after {
content: "";
clear: both;
}
.homecontactform .wpcf7 {
width: 100%;
display: block;
position: relative;
background: #f4f4f4;
text-align: center;
border-radius: 15px;
padding: 20px 15px;
}
.homecontactform .wpcf7 h2 {
color: #567f56;
font-family: 'Lato', sans-serif;
font-weight: bold;
margin-bottom: 20px;
}
.homecontactform .headerstyle {
width: 90%;
position: relative;
display: -webkit-box;
display: -moz-box;
display: -ms-flexbox;
display: -webkit-flex;
display: flex;
margin-bottom: 15px;
}
.homecontactform .headerstyle h3 {
display: inline-block;
position: relative;
width:140px;
color: #fff;
font-family: 'Lato', sans-serif;
font-weight: normal;
margin: 0;
padding: 16px 5px;
background: rgba(127,187,127,1);
background: -moz-linear-gradient(top, rgba(127,187,127,1) 0%, rgba(84,125,84,1) 100%);
background: -webkit-gradient(left top, left bottom, color-stop(0%, rgba(127,187,127,1)), color-stop(100%, rgba(84,125,84,1)));
background: -webkit-linear-gradient(top, rgba(127,187,127,1) 0%, rgba(84,125,84,1) 100%);
background: -o-linear-gradient(top, rgba(127,187,127,1) 0%, rgba(84,125,84,1) 100%);
background: -ms-linear-gradient(top, rgba(127,187,127,1) 0%, rgba(84,125,84,1) 100%);
background: linear-gradient(to bottom, rgba(127,187,127,1) 0%, rgba(84,125,84,1) 100%);
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#7fbb7f', endColorstr='#547d54', GradientType=0 );
border-radius: 15px 0px 0px 15px;
-moz-border-radius: 15px 0px 0px 15px;
-webkit-border-radius: 15px 0px 0px 15px;
}
.homecontactform .headerstyle h3:after {
	left: 100%;
	top: 50%;
	border: solid transparent;
	content: " ";
	height: 0;
	width: 0;
	position: absolute;
	pointer-events: none;
	border-color: rgba(106, 156, 106, 0);
	border-left-color: #6a9c6a;
	border-width: 8px;
	margin-top: -8px;
        z-index: 10;
}
.homecontactform .headerstyle p {
  margin-top: 0px;
  margin-bottom: 0px;
}
.homecontactform .wpcf7 input[type="text"], .homecontactform .wpcf7 input[type="email"],
.homecontactform .wpcf7 input[type="tel"] {
width: 100%;
  font-size: 15px;
padding: 17px 10px;
border-radius: 0px 15px 15px 0px;
-moz-border-radius: 0px 15px 15px 0px;
-webkit-border-radius: 0px 15px 15px 0px;
border: 1px solid #c6c6c6;
box-sizing: border-box;
}
.homecontactform .headerstyle span {
position: relative;
}
.homecontactform .wpcf7 input[type="text"].wpcf7-not-valid, .homecontactform .wpcf7 input[type="email"].wpcf7-not-valid,
.homecontactform .wpcf7 input[type="tel"].wpcf7-not-valid {
position: relative;
border: 1px solid #f00;
border-radius: 0px 15px 15px 0px;
-moz-border-radius: 0px 15px 15px 0px;
-webkit-border-radius: 0px 15px 15px 0px;
}
.homecontactform .wpcf7  .formname  .wpcf7-not-valid-tip:before {
content: "Your name";
color: #fff;
display: block;
position: absolute;
width: 130px;
top: -11px;
left: -130px;
font-family: 'Lato', sans-serif;
font-weight: normal;
font-size: 18px;
margin: 0;
padding: 8px 0px;
background: rgba(253,102,107,1);
background: -moz-linear-gradient(top, rgba(253,102,107,1) 0%, rgba(255,0,0,1) 100%);
background: -webkit-gradient(left top, left bottom, color-stop(0%, rgba(253,102,107,1)), color-stop(100%, rgba(255,0,0,1)));
background: -webkit-linear-gradient(top, rgba(253,102,107,1) 0%, rgba(255,0,0,1) 100%);
background: -o-linear-gradient(top, rgba(253,102,107,1) 0%, rgba(255,0,0,1) 100%);
background: -ms-linear-gradient(top, rgba(253,102,107,1) 0%, rgba(255,0,0,1) 100%);
background: linear-gradient(to bottom, rgba(253,102,107,1) 0%, rgba(255,0,0,1) 100%);
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#fd666b', endColorstr='#ff0000', GradientType=0 );
border-radius: 15px 0px 0px 15px;
-moz-border-radius: 15px 0px 0px 15px;
-webkit-border-radius: 15px 0px 0px 15px;
z-index: 20;
}
.homecontactform .wpcf7  .formname  .wpcf7-not-valid-tip:before:after {
        left: 100%;
	top: 50%;
	border: solid transparent;
	content: " ";
	height: 0;
	width: 0;
	position: absolute;
	pointer-events: none;
	border-color: rgba(254, 51, 53, 0);
	border-left-color: #fe3335;
	border-width: 10px;
	margin-top: -10px;
}
.homecontactform .wpcf7 span.wpcf7-not-valid-tip {
position: absolute;
top: 0;
left:0;
  color: #f00;
font-family: 'Lato', sans-serif;
  font-size: 1em;
  display: block;
padding: 0 10px;
  border: none;
box-sizing: border-box;
z-index: 5;
}
.homecontactform .wpcf7 textarea  {
width: 100%;
border-radius: 15px;
padding: 10px 10px;
box-sizing: border-box;
resize: none;
border: 1px solid #c6c6c6;
}

  </style>

     
    <link rel="stylesheet" href="styles/pages/forms/register.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
    <div class="homecontactform">
<div role="form" class="wpcf7" id="wpcf7-f6-p7-o1" lang="en-US" dir="ltr">
<div class="screen-reader-response"></div>
<form action=" ">
<div style="display: none;">
 
</div>
<h2>Kontakta Oss</h2>
<div class="headerstyle formname">
<h3>Ditt Namn</h3>
<p><span class="wpcf7-form-control-wrap your-name">
    <asp:TextBox ID="nmbox" runat="server" CssClass="wpcf7-form-control wpcf7-text wpcf7-validates-as-required"></asp:TextBox></span></p>
</div>



<div class="headerstyle formemail">
<h3>Ditt Email</h3>
<p><span class="wpcf7-form-control-wrap your-email">
    <asp:TextBox ID="embox" runat="server" CssClass="wpcf7-form-control wpcf7-text wpcf7-email wpcf7-validates-as-required wpcf7-validates-as-email" TextMode="Email"></asp:TextBox></span></p>
     
</div>


    
    <div class="headerstyle">
 

 </div>


<p><span class="wpcf7-form-control-wrap your-message"><textarea  cols="40" rows="10" class="wpcf7-form-control wpcf7-textarea" aria-invalid="false" placeholder="Ditt Meddelande här..."  name="meddelande"  runat="server" id="med"></textarea></span> </p>

<p>    <asp:Button ID="skbtn" runat="server" Text="skicka" CssClass="wpcf7-form-control wpcf7-submit" OnClick="skbtn_Click"/> </p>
 


<div class="wpcf7-response-output wpcf7-display-none"></div>
</form>
</div>
        
</div>

  
    
</asp:Content>
