<%@page import="model.ingrivo"%>
<%@page import="model.refivo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.MemberVO"%>
<%@page import="model.DAO"%>
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
	<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Brush+Script&display=swap"
	rel="stylesheet">
	
	
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
	<%
	 	DAO dao = new DAO();
		MemberVO info = (MemberVO) session.getAttribute("info");
		ArrayList<refivo> refilist = null;
		ArrayList<ingrivo> ingrilist = null;
		
		if (info!=null){refilist = dao.selectrefi(info.getId());}
	%>
		
	<div class="gtco-loader"></div>
	
	<div id="page">

	
	<!-- <div class="page-inner"> -->
	<nav class="gtco-nav" role="navigation">
		<div class="gtco-container">
			
			<div class="row">
				<div class="col-sm-4 col-xs-12">
					<div id="gtco-logo"><a href="main.jsp">�����Ǹ� ��Ź��!  <em></em></a></div>
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
	
	<header id="gtco-header" class="gtco-cover gtco-cover-sm" role="banner" style="background-image: url(images/img_bg_1.jpg)" data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="gtco-container">
			<div class="row">
				<div class="col-md-12 col-md-offset-0 text-center">
					

					<div class="row row-mt-15em">
						<div class="col-md-12 mt-text animate-box" data-animate-effect="fadeInUp">
							<%if(info!= null) {%>					
										<h1 class="cursive-font" ><%=info.getNickname()  %>���� �����</h1>
										<%}else{ %>
										<h1 class="cursive-font" > �α����� �ϼ���!</h1>
										<%} %>	
						</div>
						
					</div>
							
					
				</div>
			</div>
		</div>
	</header>
	<div id="gtco-features">
		<div class="gtco-container">
			<div class="row animate-box">
				<div class="col-md-8 col-md-offset-2 text-center gtco-heading">
					<table width="800px" , align="center">
					<caption><h2 class="cursive-font" >���� ���� ���</h2></caption>
					<tr style="font-size:1.5em">
					<th>���</th>
					<th>����</th>
					
					<th>���Ÿ��</th>
					<th>�������</th>
					<th>��ö</th>
					<th>Į�θ�</th>
					<th>�������</th>
					<th>�������</th>
					</tr>
					<% if (refilist != null && info!= null){ for (int i=0; i<refilist.size();i++){
						ingrilist = dao.selectingri(refilist.get(i).getIngre_name());
						
					%>
					<tr>
					<td><%= refilist.get(i).getIngre_name() %></td>
					<td><%= refilist.get(i).getIngre_amount() %></td>	
					
					<td><%=ingrilist.get(0).getType() %></td>
					<td><%=dao.expire(ingrilist.get(0).getExpire())%></td>
					<td><%=ingrilist.get(0).getSeason() %></td>
					<td><%=ingrilist.get(0).getCarloy() %></td>
					<td><%= refilist.get(i).getIngre_temp() %></td>
					<td><%=ingrilist.get(0).getTempt() %></td>
					
					<td>
					<form action="deleteingri">
					<input type="hidden" name="delete" value="<%= refilist.get(i).getIngre_name() %>">
					<button type="submit">DELTE</button>
					</form></td>		
					</tr>
					<%}} %>
					</table>
						
					</div>
				</div>	
			</div>
		</div>
	</div>
	<div id="gtco-features">
		<div class="gtco-container" style="right: 400px;  font-size:1.5em">
			<div class="row animate-box">
				<div class="col-md-5 col-md-offset-2 text-center gtco-heading">
					<h2 class="cursive-font" style="border:1px solid gray; color: black">�õ���</h2>
					<fieldset style="border:1px solid gray;">
						<label class="cursive-font">����: </label>
							<input type="text" name = "ingre1"><br>
						<label class="cursive-font">����: </label>
							<input type="number" name="number1"><br>
							<input type = "button" value="���" onClick="low_save();">
						
					</fieldset>
					<div id = "ref1" style = "background-color: #289AFF	; color:black" class="cursive-font">
						<table>
							<thead>
								<tr>
									<td>���</td>
									<td>����</td>
								</tr>
							</thead>
							
							<tbody id="low">
							
							</tbody>
						</table>
					</div>
				</div>	
			</div>
		</div>
	</div>

	<div id="gtco-features">
		<div class="gtco-container" style="bottom: 630px; left: 170px; font-size:1.5em ">
			<div class="row animate-box">
				<div class="col-md-5 col-md-offset-2 text-center gtco-heading">
					<h2 class="cursive-font" style="border:1px solid gray; color: black">�����</h2>			
						<fieldset style="border:1px solid gray;">
					
						<label class="cursive-font">����: </label>
							<input type="text" name = "ingre2"><br>
						<label class="cursive-font">����: </label>
							<input type="number" name="number2"><br>
							<input type = "button" value="���" onClick="mid_save()">
					
					</fieldset>
					<div id = "ref2" style = "background-color: #289AFF	; color:black" class="cursive-font">
						<table>
							<thead>
								<tr>
									<td>���</td>
									<td>����</td>
								</tr>
							</thead>
							
							<tbody id="mid">
							
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div id="gtco-features">
		<div class="gtco-container" style="bottom: 1250px; left: 800px ;  font-size:1.5em">
			<div class="row animate-box">
				<div class="col-md-5 col-md-offset-2 text-center gtco-heading">
					<h2 class="cursive-font" style="border:1px solid gray; color: black">���</h2>
						<fieldset style="border:1px solid gray;"> 
							<form action="#">
							<label class="cursive-font">����: </label>
								<input type="text" name = "ingre3"><br>
							<label class="cursive-font">����: </label>
								<input type="number" name="number3"><br>
								<input type = "button" value="���" onClick="high_save()">
							</form>
						</fieldset>
						<div id = "ref3" style = "background-color: #289AFF	; color:black" class="cursive-font">
						<table>
							<thead>
								<tr>
									<td>���</td>
									<td>����</td>
								</tr>
							</thead>
							
							<tbody id="high">
							
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script type="text/javascript">
	
	function low_save() {
		// input�±� �� ��������
		var ingre1 = $('input[name=ingre1]').val();
		var number1 = $('input[name=number1]').val();
		// ajax 
		// �񵿱� ���
		
		$.ajax({
			url : 'refService', // ���� ���� �ּ�
			type : 'POST', // get or post
			data : { // �����ϰ����ϴ� ������
				ingre1 : ingre1, //  javascript ��ü ���·�  name : value
				number1 : number1
			},
			//dataType : 'json', // json �����ͷ� ������� ��,
			success : function(res){ // ����� �������� �� ����Ǵ� �Լ�
				// res --> Server���� �������� �����Ͱ� �Ű������� �ڵ����� ���
				low_print(ingre1, number1);

			},
			error : function(){ // ����� �����Ѱ�쿡 ����Ǵ� �Լ� 
				alert("error");
			}
		});
		
	}
	
	function low_print(ingre1, number1){
		// div�� �߰�
		// jqury ���� html �ϴ� �ڵ�
		// $('������').html('���ڿ�'); --> ����� ���빰�� �� ���������� '���ڿ�'��ü
		// $('������').after(); --> ������ �ٷ� �տ�
		// $('������').before(); --> �ٷε�
		// $('������').append(); --> ������ �ȿ� ��� �߰� 
		tr = `
			<tr> 
				<td><a href="detail?ingre1=`+ ingre1 +`&number1=`+ number1+`">` + ingre1 +`</a></td>
				<td>` + number1 + `</td>
			</tr>
		`;
		
		
		$('tbody[id=low]').append(tr);
		
	}
	function mid_save() {
		// input�±� �� ��������
		var ingre2 = $('input[name=ingre2]').val()
		var number2 = $('input[name=number2]').val()

		// ajax 
		// �񵿱� ���
		
		$.ajax({
			url : 'refService', 
			type : 'post', 
			data : {
				'ingre2' : ingre2,
				'number2' : number2
			},
			success : function(res){ 
				mid_print(ingre2, number2);

			},
			error : function(){ 
				alert("error");
			}
		});
		
	}
	function mid_print(ingre2, number2){
		tr = `
			<tr> 
				<td><a href="detail?ingre2=`+ ingre2 +`&number2=`+ number2+`">` + ingre2 +`</a></td>
				<td>` + number2 + `</td>
			</tr>
		`;
		
		
		$('tbody[id=mid]').append(tr);
		
	}
	function high_save() {
		// input�±� �� ��������
		var ingre3 = $('input[name=ingre3]').val()
		var number3 = $('input[name=number3]').val()

		// ajax 
		// �񵿱� ���
		
		$.ajax({
			url : 'refService', 
			type : 'post', 
			data : { 
				'ingre3' : ingre3,
				'number3' : number3
			},
			success : function(res){ 
				high_print(ingre3, number3);
			},
			error : function(){ 
				alert("error");
			}
		});
		
	}

	function high_print(ingre3, number3){

		tr = `
			<tr> 
				<td><a href="detail?ingre3=`+ ingre3 +`&number3=`+ number3+`">` + ingre3 +`</a></td>
				<td>` + number3 + `</td>
			</tr>
		`;
		
		
		$('tbody[id=high]').append(tr);
		
	}
	</script>
	
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

