<!DOCTYPE html>
<!-- Created By CodingNepal -->
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Sidebar Menu with sub-menu | CodingNepal</title>
      <link href="Stylesheets/ss.css" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
  </head>
  <body>
    <div class="btn">
      <span class="fas fa-bars"></span>
    </div>
<nav class="sidebar">
<ul>
<li>
          <a href="#" class="feat-btn">Features
            <span class="fas fa-caret-down first"></span>
          </a>
          <ul class="feat-show">
<li><a href="#">Pages</a></li>
<li><a href="#">Elements</a></li>
</ul>
</li>

          <
<script>
    $('.btn').click(function(){
      $(this).toggleClass("click");
      $('.sidebar').toggleClass("show");
    });
      $('.feat-btn').click(function(){
        $('nav ul .feat-show').toggleClass("show");
        $('nav ul .first').toggleClass("rotate");
      });
      $('.serv-btn').click(function(){
        $('nav ul .serv-show').toggleClass("show1");
        $('nav ul .second').toggleClass("rotate");
      });
      $('nav ul li').click(function(){
        $(this).addClass("active").siblings().removeClass("active");
      });
</script>

  </body>
</html>
