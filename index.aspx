<%@ Page Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="ODCMSS.index" %>

<asp:Content ID="Content" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="slideshow-container">

<div class="mySlides fade">
  <img src="images/img_bg_1.jpg" style="width:100%">


    <div class="w3-container w3-center w3-animate-opacity center">
  <h1>Counseling with online doctors</h1>
  <h4>get help from the best doctor in town</h4>
        <a class="btn btn-primary btn-lg" href="chat.aspx">For Consultancy</a>
</div>

   
</div>

<div class="mySlides fade">
  <img src="images/img_bg_2.jpg" style="width:100%">
     <div class="w3-container w3-center w3-animate-opacity center">
  <h1>Counseling with online doctors</h1>
  <h4>get help from the best doctor in town</h4>
        <a class="btn btn-primary btn-lg" href="chat.aspx">For Consultancy</a>
</div>
</div>

<div class="mySlides fade">
  <img src="images/img_bg_5.jpg" style="width:100%">
     <div class="w3-container w3-center w3-animate-opacity center">
  <h1>Counseling with online doctors</h1>
  <h4>get help from the best doctor in town</h4>
        <a class="btn btn-primary btn-lg" href="chat.aspx">For Consultancy</a>
</div>
</div>
<div class="bottom-left" style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div>
</div>
<br>

 <div class="site-section">
      <div class="container">
        <div class="row align-items-stretch section-overlap">
          <div class="col-md-6 col-lg-4 mb-4 mb-lg-0">
            <div class="banner-wrap bg-primary">
              <a class="size">
                <h5>Best <br> Doctors</h5>
                <p>
                  We provide best way to communicate with specialist doctors
                </p>
              </a>
            </div>
          </div>
          <div class="col-md-6 col-lg-4 mb-4 mb-lg-0">
            <div class="banner-wrap h-100">
              <a class="size">
                <h5>All <br> kind of hospitals</h5>
                <p>
                  We Provide the best quality of treatment
                </p>
              </a>
            </div>
          </div>
          <div class="col-md-6 col-lg-4 mb-4 mb-lg-0">
            <div class="banner-wrap bg-warning h-100">
              <a  class="size">
                <h5>24/7 <br>Emergency Service</h5>
                <p>
                  We Provide the best quality of Treatment
                </p>
              </a>
            </div>
          </div>

        </div>
      </div>
    </div>

    <div class="site-section bg-light custom-border-bottom" data-aos="fade">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md-6">
            <div class="block-16">
              <figure>
                <img src="images/whyus.jpg" alt="Image placeholder" class="img-fluid rounded">
                
    
              </figure>
            </div>
          </div>
          <div class="col-md-1"></div>
          <div class="col-md-5">
    
    
            <div class="site-section-heading pt-3 mb-4">
              <h2 class="text-black"style="font-weight: bold">Why us</h2>
            </div>
            <p class="size">We Provide The Best Quality Of Treatment.
                Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.

            </p>
    
          </div>
        </div>
      </div>
    </div>

    
    


    <div class="site-section bg-secondary bg-image" style="background-image: url('images/bg_2.jpg');">
      <div class="container">
        <div class="row align-items-stretch">
          <div class="col-lg-6 mb-5 mb-lg-0">
            <a class="banner-1 h-100 d-flex" style="background-image: url('images/bg_1.jpg');">
              <div class="banner-1-inner align-self-center">
                <h2>Best Doctors</h2>
                <p class="size">We Provide The Best Quality Of Treatment.
                </p>
              </div>
            </a>
          </div>
          <div class="col-lg-6 mb-5 mb-lg-0">
            <a class="banner-1 h-100 d-flex" style="background-image: url('images/bg_2.jpg');">
              <div class="banner-1-inner ml-auto  align-self-center">
                <h2>Rated by Experts</h2>
                <p class="size">We Provide The Best Quality Of Treatment.
                </p>
              </div>
            </a>
          </div>
        </div>
      </div>
    </div>

<script>
var slideIndex = 0;
showSlides();

function showSlides() {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  setTimeout(showSlides, 1000);
}
</script>
</asp:Content>