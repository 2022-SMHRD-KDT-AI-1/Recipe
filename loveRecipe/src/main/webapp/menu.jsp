<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>
<!--
	Aesthetic by gettemplates.co
	Twitter: http://twitter.com/gettemplateco
	URL: http://gettemplates.co
-->
<html>
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>�����Ǹ� ��Ź�� &mdash; Free Website Template, Free HTML5 Template by GetTemplates.co</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Website Template by GetTemplates.co" />
	<meta name="keywords" content="free website templates, free html5, free template, free bootstrap, free website template, html5, css3, mobile first, responsive" />
	<meta name="author" content="GetTemplates.co" />

  	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Kaushan+Script" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Nanum+Brush+Script&display=swap" rel="stylesheet">
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Themify Icons-->
	<link rel="stylesheet" href="css/themify-icons.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">

	<!-- Magnific Popup -->
	<link rel="stylesheet" href="css/magnific-popup.css">

	<!-- Bootstrap DateTimePicker -->
	<link rel="stylesheet" href="css/bootstrap-datetimepicker.min.css">

	<!-- Owl Carousel  -->
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<link rel="stylesheet" href="css/owl.theme.default.min.css">

	<!-- Theme style  -->
	<link rel="stylesheet" href="css/style.css">

	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->


	</head>
	<body>
		
	<div class="gtco-loader"></div>
	
	<div id="page">

	
	<!-- <div class="page-inner"> -->
	<nav class="gtco-nav" role="navigation">
		<div class="gtco-container">
			
			<div class="row">
				<div class="col-sm-4 col-xs-12">
					<div id="gtco-logo"><a href="main.jsp"><em class="cursive-font" style="font-size: 3rem">�����Ǹ� ��Ź��!</em></a></div>
				</div>
				<div class="col-xs-8 text-right menu-1">
					<ul>
						<li><a href="menu.jsp">Menu</a></li>
						<li class="has-dropdown">
							<a href="services.jsp">Services</a>
							<ul class="dropdown">
								<li><a href="refigator.jsp">������ �����</a></li>
								<li><a href="mealplan.jsp">�Ĵ�¥��</a></li>
								<li><a href="newrecipe.jsp">�����ǵ��</a></li>
							</ul>
						</li>
						<li><a href="feedback.jsp">feedback</a></li>
						<li class="btn-cta"><a href="main.jsp"><span>login</span></a></li>
					</ul>	
				</div>
			</div>
			
		</div>
	</nav>
	
	<header id="gtco-header" class="gtco-cover gtco-cover-md" role="banner" style="background-image: url(images/img_bg_1.jpg)" data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="gtco-container">
			<div class="row">
				<div class="col-md-12 col-md-offset-0 text-left">
					

					<div class="row row-mt-15em">
						<div class="col-md-7 mt-text animate-box" data-animate-effect="fadeInUp">
							<h1 > find your recipe </h1>	
						</div>
						
					</div>
							
					
				</div>
			</div>
		</div>
	</header>
	

					
										
		<div class="gtco-container" style=" font-size:1.5em ">
											<h3 class="cursive-font" style="font-size:1.5em" >
												search</h3>
											<form action="recipesearch">
											
												<div class="row form-group">
															<label>����Ằ</label><br>
					    						     		<label><input type="radio" name="ingrident" value="fork">��������</label>
															<label><input type="radio" name="ingrident" value="beaf">�Ұ���</label>
															<label><input type="radio" name="ingrident" value="chicken">�߰���</label>
															<label><input type="radio" name="ingrident" value="fish">����</label>
															<label><input type="radio" name="ingrident" value="noodle">��</label>
															<label><input type="radio" name="ingrident" value="fruit">����</label>
															<label><input type="radio" name="ingrident" value="rice">��</label>
															<label><input type="radio" name="ingrident" value="duck">��������</label>
												</div>
												
												<div class="row form-group">
															<label>���󺰷�����</label><br>
					    						     		<label><input type="radio" name="object" value="korea">�ѽ�</label>
					    						     		<label><input type="radio" name="object" value="western">���</label>
															<label><input type="radio" name="object" value="china">�߽�</label>
															<label><input type="radio" name="object" value="japan">�Ͻ�</label>
															<label><input type="radio" name="object" value="se_asia">������</label>
															<label><input type="radio" name="object" value="italy">��Ż����</label>
															<label><input type="radio" name="object" value="mexico">�߽���</label>
															<label><input type="radio" name="object" value="fusion">ǻ��</label>
															<label><input type="radio" name="object" value="fusion">����</label>
												</div>
												<div class="row form-group">
															<label>������������</label><br>
					    						     		<label><input type="radio" name="type" value="guie">����</label>
															<label><input type="radio" name="type" value="guk">��</label>
															<label><input type="radio" name="type" value="grtang">�׶���/������</label>
															<label><input type="radio" name="type" value="namul">����/��ä/������</label>
															<label><input type="radio" name="type" value="ttuk">��/�Ѱ�</label>
															<label><input type="radio" name="type" value="dosilack">���ö�/����</label>
															<label><input type="radio" name="type" value="mundu">����/���</label>
															<label><input type="radio" name="type" value="kimchi">�ع���/��ġ</label>
															
															<label><input type="radio" name="type" value="bap">��/��/����</label>
															<label><input type="radio" name="type" value="bokum">����</label>
															<label><input type="radio" name="type" value="buchim">��ħ</label>
															<label><input type="radio" name="type" value="bbang">��/����</label>
															<label><input type="radio" name="type" value="sandwich">������ġ/�ܹ���</label>
															
															<label><input type="radio" name="type" value="yangnum">�����</label>
															<label><input type="radio" name="type" value="yangsik">���</label>
															<label><input type="radio" name="type" value="umryo">����</label>
															
															<label><input type="radio" name="type" value="jorim">����</label>
															<label><input type="radio" name="type" value="zzikae">�/����/��Ʃ</label>
															<label><input type="radio" name="type" value="zzim">��</label>
															<label><input type="radio" name="type" value="pizza">����</label>
															<label><input type="radio" name="type" value="husik">�Ľ�</label>
															<label><input type="radio" name="type" value="tikim">Ƣ��/ĿƲ��</label>
												</div>

												<div class="row form-group">
													
														<label>��ö��������</label>
														<select class="form-control" name="seasonal">
														<option value="o">o</option>
														<option value="x">x</option>
														</select>
													
												</div>
												<div class="row form-group">
													
														<label>�ִ� Į�θ� ����</label>
														<input type="number" name="kcal" class="form-control" placeholder="���Ͻô� Į�θ��� �ִ밪">
														</div>
									
												 

												<div class="row form-group">
													<div class="col-md-12">
														<input type="submit" class="btn btn-primary btn-block" value="search">
														
													</div>
													
												</div>

									
											</form>	
										</div>

										
									</div>
						
	
	

	<div class="gtco-cover gtco-cover-sm" style="background-image: url(images/img_bg_1.jpg)"  data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="gtco-container text-center">
			<div class="display-t">
				<div class="display-tc">
					<h1 class="cursive-font">&ldquo;���Ŀ� ���� ���ó�� ���ǵ� ����� ����.&rdquo;</h1> 
					<p>&mdash; ���� ������ ��</p>
				</div>	
			</div>
		</div>
	</div>

	
	


	<footer id="gtco-footer" role="contentinfo" style="background-image: url(images/img_bg_1.jpg)" data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="gtco-container">
			<div class="row row-pb-md">

				

				
				<div class="col-md-12 text-center">
					<div class="gtco-widget">
						<h3>Get Social</h3>
						<ul class="gtco-social-icons">
							<li><a href="#"><i class="icon-twitter"></i></a></li>
							<li><a href="#"><i class="icon-facebook"></i></a></li>
							<li><a href="#"><i class="icon-linkedin"></i></a></li>
							<li><a href="#"><i class="icon-dribbble"></i></a></li>
						</ul>
					</div>
				</div>

			</div>

			

		</div>
	</footer>
	<!-- </div> -->

	</div>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up"></i></a>
	</div>
	
	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Carousel -->
	<script src="js/owl.carousel.min.js"></script>
	<!-- countTo -->
	<script src="js/jquery.countTo.js"></script>

	<!-- Stellar Parallax -->
	<script src="js/jquery.stellar.min.js"></script>

	<!-- Magnific Popup -->
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/magnific-popup-options.js"></script>
	
	<script src="js/moment.min.js"></script>
	<script src="js/bootstrap-datetimepicker.min.js"></script>


	<!-- Main -->
	<script src="js/main.js"></script>

	</body>
</html>

