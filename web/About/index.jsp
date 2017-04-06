<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>About Ratsada!</title>
    <jsp:include page="/head.jsp" />
</head>
<body>
<jsp:include page="/WEB-INF/header.jsp" />
	<div id="About1">
		<div class="container">
			<div class="row">
				<div class="col-md-6 wow bounceInLeft" data-wow-delay="0.2s" style="padding: 80px">
					<img src="<%=request.getContextPath()%>/images/About.png" onContextMenu="return false">
				</div>
				<div class="col-md-6 wow bounceInRight" data-wow-delay="0.4s">
				<p class="main1">
				What began as a dream and grew with hard work is now Ratsada, the Philippines' most trusted one-stop shop for the latest in tech stuff. As the friendliest and most reliable online gadget store in the country, we have been known for providing only the best products at the most affordable prices, and through outstanding customer service. Since 2006, our mission has been to make it easier for Filipinos to enjoy the latest in mobile technology through our range of pro-consumer products and services. We offer a wide selection of gadgets for all your tech needs - mobile phones, laptops, cameras, gaming consoles, tablet PCs, and various accessories - you name it, we have it! 
				<br><br>
				We take pride in being one of the pioneers of e-commerce in the Philippines, and are truly grateful to obtain recognition for what we do. Aside from being hailed as a Go Negosyo Awardee, 12 Young Starpreneur Awardee, and Multiply Philippines' Best Online Store in 2011, we were also featured in several major publications, including the Philippine Daily Inquirer, Philippine Star, and Entrepreneur Magazine. Major TV and radio networks, such as ABS-CBN, GMA, Studio 23, GMA News TV, ANC, Radio Aksyon, and DZRH have also mentioned Ratsada as the country's go-to online store for quality electronics.
				</p>
				</div>
			</div>
		</div>
	</div>
	
	<div id="About2">
		<div class="container">
			<div class="row">
				<div class="col-md-12 wow fadeIn">
					<p class="header">System Developers</p>
				</div>
			</div>
			<br><br>
			<div class="row">
				<div class="col-md-6 wow bounceInUp" data-wow-delay="0.2s">
					<div style="vertical-align:middle; display: inline-block; padding-right: 10px;">
					<img src="<%=request.getContextPath()%>/images/Zuleta.jpg" onContextMenu="return false" style="border-radius: 50%; width: 150px; border: 2px solid white;">
					</div>
					<div style="vertical-align:middle; display: inline-block">
					<p class="about1">Franz Zildjian Zuleta</p><br>
					<p class="about2"><b>Team Leader</b><br>Mr. Zuleta is also an LRT1 Monitoring Officer<br>under the Light Rail Transit Authority</p>
					</div>
				</div>
				<div class="col-md-6 wow bounceInLeft" data-wow-delay="0.4s">
					<div style="vertical-align:middle; display: inline-block; padding-right: 10px;">
					<img src="<%=request.getContextPath()%>/images/Lizardo.png" onContextMenu="return false" style="border-radius: 50%; width: 150px; border: 2px solid white;">
					</div>
					<div style="vertical-align:middle; display: inline-block">
					<p class="about1">Jionne Mari Lizardo</p><br>
					<p class="about2"><b>Coding Development</b><br>Mr. Lizardo loves anything tech related<br>and movies/series</p>
					</div>
				</div>				
			</div>
			<br>
			<div class="row">
				<div class="col-md-6 wow bounceInRight" data-wow-delay="0.6s">
					<div style="vertical-align:middle; display: inline-block; padding-right: 10px;">
					<img src="<%=request.getContextPath()%>/images/Aldover.png" onContextMenu="return false" style="border-radius: 50%; width: 150px; border: 2px solid white;">
					</div>
					<div style="vertical-align:middle; display: inline-block">
					<p class="about1">Jae Van Austin Aldover</p><br>
					<p class="about2"><b>Design & Coding</b><br>Mr. Aldover is hardworking and humble that<br>is always dependable</p>
					</div>
				</div>
				<div class="col-md-6 wow bounceInDown" data-wow-delay="0.8s">
					<div style="vertical-align:middle; display: inline-block; padding-right: 10px;">
					<img src="<%=request.getContextPath()%>/images/David.jpg" onContextMenu="return false" style="border-radius: 50%; width: 150px; border: 2px solid white;">
					</div>
					<div style="vertical-align:middle; display: inline-block">
					<p class="about1">Kyle David</p><br>
					<p class="about2"><b>Coding Development</b><br>Mr. David also loves Adventure, Food, Sports<br>and Connections</p>
					</div>
				</div>				
			</div>
		</div>
	</div>
	<jsp:include page="/WEB-INF/footer.jsp" />
</body>
</html>