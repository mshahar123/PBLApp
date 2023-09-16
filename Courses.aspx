<%@ Page Title="" Language="C#" MasterPageFile="~/RS_Site.Master" AutoEventWireup="true" CodeBehind="Courses.aspx.cs" Inherits="RS_Project.Courses" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


  <!-- ======= why us section ======= -->
    <section class="why-us section-bg" data-aos="fade-up" date-aos-delay="200">
      <div class="container">

        <div class="row">
          <div class="col-lg-6 video-box">
            <img src="assets/img/artificial-intelligence-img.jpg" class="img-fluid" alt="">
            <a href="https://www.youtube.com/watch?v=ad79nYk2keg" class="venobox play-btn mb-4" data-vbtype="video" data-autoplay="true"></a>
          </div>

          <div class="col-lg-6 d-flex flex-column justify-content-center p-5">

            <div class="icon-box">
              <div class="icon"><i class="bx bx-fingerprint"></i></div>
             <%-- <h4 class="title"><a href="">lorem ipsum</a></h4>--%>
              <p class="description">A complete course which give indepth knowlege on AI.</p>
            </div>

            <div class="icon-box">
              <div class="icon"><i class="bx bx-gift"></i></div>
              <%--<h4 class="title"><a href="">nemo enim</a></h4>--%>
              <p class="description">After completion Of this Corses you will be able to get the broad idea of AI. </p>
            </div>

          </div>
        </div>

      </div>
    </section><!-- End Why Us Section -->

</asp:Content>
