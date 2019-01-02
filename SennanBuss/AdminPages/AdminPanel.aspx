<%@ Page Language="C#" MasterPageFile="~/bas/master-no-nav.Master" AutoEventWireup="true" CodeBehind="AdminPanel.aspx.cs" Inherits="SennanBuss.AdminPages.AdminPanel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <link href="../styles/pages/AdminPanelDesigner.css" rel="stylesheet"/>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
              <div class="semi-nav">
                      <div class="coder">
                          
                          <a href="#">
                          <i class="glyphicon glyphicon-chevron-right"></i>
                              Hello</a>
                      </div>
                      <div class="coder">
                          <a href="#">
                          <i class="glyphicon glyphicon-chevron-right"></i>
                              There</a>
                      </div>
                      <div class="coder">
                          <a href="#">
                          <i class="glyphicon glyphicon-chevron-right"></i>
                              Yes</a>
                      </div>
                      <div class="coder">
                          <a href="#">
                          <i class="glyphicon glyphicon-chevron-right"></i>
                              No</a>
                      </div>
              </div>
              <div class="liner text-center">
                  <a href="#">
                  <i class="glyphicon glyphicon-triangle-bottom"></i></a>
              </div>
    <script>
        var allWellsExceptFirst = $('.admin-content:not(:first)');
        //allWellsExceptFirst.hide();
        let lastState = false;
function checkForViewportChange () {
    var state = window.matchMedia("(max-width: 768px)").matches;
    if (state != lastState) {
        if (state) {
            DoCollapse();
        } else {
            UndoCollapse();
        }
        lastState = state
}}
        window.setInterval(checkForViewportChange, 150);
        function DoCollapse() {
            $(".coder:not(:first)").hide();
            $(".liner").addClass("liner-grow");
        }
        function UndoCollapse() {
            $(".coder:not(:first)").show();
            $(".liner").removeClass("liner-grow");
        }
    </script>
</asp:Content>