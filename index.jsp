<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--
	Prologue by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>Prologue by HTML5 UP</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<script type="text/javascript" src="/static/js/jquery-1.11.1.min.js"></script>
		<link rel="stylesheet" href="static/assets/css/main.css" />
		<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
		
		<style type="text/css">
			#wrap{
			  margin:0 auto;
			  width:100%;
			}
			#back-to-top {
			  display: inline-block;
			  background-color: #FF9800;
			  width: 50px;
			  height: 50px;
			  text-align: center;
			  border-radius: 4px;
			  position: fixed;
			  bottom: 30px;
			  right: 30px;
			  transition: background-color .3s, 
			    opacity .5s, visibility .5s;
			  opacity: 0;
			  visibility: hidden;
			  z-index: 1000;
			}
			#back-to-top::after {
			  content: "\f077";
			  font-family: FontAwesome;
			  font-weight: normal;
			  font-style: normal;
			  font-size: 2em;
			  line-height: 50px;
			  color: #fff;
			}
			#back-to-top:hover {
			  cursor: pointer;
			  background-color: #333;
			}
			#back-to-top:active {
			  background-color: #555;
			}
			#back-to-top.show {
			  opacity: 1;
			  visibility: visible;
			}
		</style>
		<script type="text/javascript">
			$(function(){
			  $('#back-to-top').on('click',function(e){
			      e.preventDefault();
			      $('html,body').animate({scrollTop:0},600);
			  });
			  
			  $(window).scroll(function() {
			    if ($(document).scrollTop() > 100) {
			      $('#back-to-top').addClass('show');
			    } else {
			      $('#back-to-top').removeClass('show');
			    }
			  });
			});
		</script>
	</head>
	<body class="is-preload">

		<!-- Header -->
			<div id="header">
			
			<div align="center">
				<a href="jh/home.do" target="_blank">홈</a>/
				<a href="jh/login.do" target="_blank">로그인</a>
			</div>	
			
				<div class="top">

					<!-- Logo -->
						<div id="logo">
							<span class="image avatar48"><img src="static/images/avatar.jpg" alt="" /></span>
							<h1 id="title">우주</h1>
							<p>Back-End Engineer</p>
						</div>

					<!-- Nav -->
						<nav id="nav">
							<ul>
								<li><a href="#top" id="top-link"><span class="icon solid fa-home">Intro</span></a></li>
								<li><a href="#portfolio" id="portfolio-link"><span class="icon solid fa-th">Portfolio</span></a></li>
								<li><a href="#about" id="about-link"><span class="icon solid fa-user">About Me</span></a></li>
								<li><a href="#contact" id="contact-link"><span class="icon solid fa-envelope">Contact</span></a></li>
							</ul>
						</nav>

				</div>

				<div class="bottom">

					<!-- Social Icons -->
						<ul class="icons">
							<li><a href="#" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
							<li><a href="#" class="icon brands fa-facebook-f"><span class="label">Facebook</span></a></li>
							<li><a href="#" class="icon brands fa-github"><span class="label">Github</span></a></li>
							<li><a href="#" class="icon brands fa-dribbble"><span class="label">Dribbble</span></a></li>
							<li><a href="#" class="icon solid fa-envelope"><span class="label">Email</span></a></li>
						</ul>

				</div>

			</div>

		<!-- Main -->
		<div id="wrap">
  			<a id="back-to-top"></a>
			<div id="main">

				<!-- Intro -->
					<section id="top" class="one dark cover">
						<div class="container">

							<header>
								<h2>우주의 마이페이지</h2>
							</header>

							<footer>
								<a href="#portfolio" class="button scrolly">구경 하기</a>
							</footer>

						</div>
					</section>

				<!-- Portfolio -->
					<section id="portfolio" class="two">
						<div class="container">

							<header>
								<h2>Portfolio</h2>
							</header>

							<p>Vitae natoque dictum etiam semper magnis enim feugiat convallis convallis
							egestas rhoncus ridiculus in quis risus amet curabitur tempor orci penatibus.
							Tellus erat mauris ipsum fermentum etiam vivamus eget. Nunc nibh morbi quis
							fusce hendrerit lacus ridiculus.</p>

							<div class="row">
								<div class="col-4 col-12-mobile">
									<article class="item">
										<a href="#" class="image fit"><img src="images/pic02.jpg" alt="" /></a>
										<header>
											<h3>Ipsum Feugiat</h3>
										</header>
									</article>
									<article class="item">
										<a href="#" class="image fit"><img src="images/pic03.jpg" alt="" /></a>
										<header>
											<h3>Rhoncus Semper</h3>
										</header>
									</article>
								</div>
								<div class="col-4 col-12-mobile">
									<article class="item">
										<a href="#" class="image fit"><img src="images/pic04.jpg" alt="" /></a>
										<header>
											<h3>Magna Nullam</h3>
										</header>
									</article>
									<article class="item">
										<a href="#" class="image fit"><img src="images/pic05.jpg" alt="" /></a>
										<header>
											<h3>Natoque Vitae</h3>
										</header>
									</article>
								</div>
								<div class="col-4 col-12-mobile">
									<article class="item">
										<a href="#" class="image fit"><img src="images/pic06.jpg" alt="" /></a>
										<header>
											<h3>Dolor Penatibus</h3>
										</header>
									</article>
									<article class="item">
										<a href="#" class="image fit"><img src="images/pic07.jpg" alt="" /></a>
										<header>
											<h3>Orci Convallis</h3>
										</header>
									</article>
								</div>
							</div>

						</div>
					</section>

				<!-- About Me -->
					<section id="about" class="three">
						<div class="container">

							<header>
								<h2>About Me</h2>
							</header>

							<a href="#" class="image featured"><img src="images/pic08.jpg" alt="" /></a>

							<p>Tincidunt eu elit diam magnis pretium accumsan etiam id urna. Ridiculus
							ultricies curae quis et rhoncus velit. Lobortis elementum aliquet nec vitae
							laoreet eget cubilia quam non etiam odio tincidunt montes. Elementum sem
							parturient nulla quam placerat viverra mauris non cum elit tempus ullamcorper
							dolor. Libero rutrum ut lacinia donec curae mus vel quisque sociis nec
							ornare iaculis.</p>

						</div>
					</section>

				<!-- Contact -->
					<section id="contact" class="four">
						<div class="container">

							<header>
								<h2>Contact</h2>
							</header>

							<p>Elementum sem parturient nulla quam placerat viverra
							mauris non cum elit tempus ullamcorper dolor. Libero rutrum ut lacinia
							donec curae mus. Eleifend id porttitor ac ultricies lobortis sem nunc
							orci ridiculus faucibus a consectetur. Porttitor curae mauris urna mi dolor.</p>

							<form method="post" action="#">
								<div class="row">
									<div class="col-6 col-12-mobile"><input type="text" name="name" placeholder="Name" /></div>
									<div class="col-6 col-12-mobile"><input type="text" name="email" placeholder="Email" /></div>
									<div class="col-12">
										<textarea name="message" placeholder="Message"></textarea>
									</div>
									<div class="col-12">
										<input type="submit" value="Send Message" />
									</div>
								</div>
							</form>
						</div>
					</section>

			</div>

		<!-- Footer -->
			<div id="footer">

				<!-- Copyright -->
					<ul class="copyright">
						<li>&copy; Untitled. All rights reserved.</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
					</ul>

			</div>
		</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
</html>