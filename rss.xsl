<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
	<head>
		<meta charset="utf-8"/>
		<meta name="keywords" content="World of warships,battleships,wows"/>
		<meta name="author" content="Ignjat Jokanović"/>
		<meta name="description" content="World of warships is an online multiplayer game where players fight with their battleships to take objectives and win matches"/>
		<title>World of warships</title>
		<script type="text/javascript" src="aperance/animation/jquery-3.1.1.slim.min.js"></script>
		
		<script type="text/javascript" src="kodjq.js"></script>
		<script type="text/javascript" src="kod.js"></script>
		<link rel="stylesheet" type="text/css" href="aperance/style.css"/>
		<link rel="icon" href="images/wowslogo.ico"/>
	</head>
	<body>
		<div id="container">
			<div id="navcontainer">
				<div id="logo">
					<a href="index.html"><img src="images/logomeni.png" alt="world of warships logo"/></a>
				</div>
				
				<div id="srch">
					<form>
						<table>
							<tr>
								<td><img src="images/lupa.png" alt="search logo"/><input type="text" placeholder="search" id="serch"/><input type="button" value="GO" id="go" onclick=""/></td>
							</tr>
						</table>
					</form>
				</div>
				<div id="meni">
					<ul>
						<li><a href="index.html">HOME</a></li>
						<li><a href="stranice/gallery.html">GALLERY</a></li>
						<li><a href="stranice/ships.html">SHIPS</a></li>
						<li><a href="stranice/contact.html">CONTACT US</a></li>
						<li><a href="stranice/login.html">LOGIN</a></li>
						<li id="ddm" onmouseover="padm();" onmouseout="skrij();"><a href="stranice/game.html">ABOUT US</a>
							<ul id="ddmc">
								<li><a href="stranice/game.html">GAME</a></li>
								<li><a href="stranice/autor.html">AUTHOR</a></li>
							</ul>
						</li>
						
					</ul>
				</div>
				
				
			</div>
			<div class="rsswarp">
					<h2>RSS</h2>
					<xsl:for-each select="rss/channel/item">
						<div class="rssSadrzaj">
							<span class="titl"><xsl:value-of select="title"/></span><br/>
							<div class="opis"><xsl:value-of select="description"/><br/>
								<xsl:element name="a">
									<xsl:attribute name="href"><xsl:value-of select="link"/></xsl:attribute>Read more
								</xsl:element>
							</div>
						</div>
					</xsl:for-each>
				
			</div>
			
			

			<div id="dole">
				<div id="stavke">
					<ul>
						<li><a href="resursi/documentation.pdf">DOCUMENTATION</a></li>
						<li><a href="sitemap.xml">SITEMAP</a></li>
						<li><a href="stranice/autor.html">AUTHOR</a></li>
					</ul>
				</div>
				<div id="mreze">
					<div class="mreze">
						<a href="https://www.facebook.com/" target="blank_page"><img src="images/fejs.png" alt="facebook logo"/></a>
					</div>
					<div class="mreze">
						<a href="https://www.youtube.com/" target="blank_page"><img src="images/ju.png" alt="youtube logo"/></a>
					</div>
					<div class="mreze">
						<a href="https://twitter.com/" target="blank_page"><img src="images/twt.png" alt="twiter logo"/></a>
					</div>
					<div class="mreze">
						<a href="rss.xml" target="blank_page"><img src="images/rss.png" alt="rss logo"/></a>
					</div>
				</div>
				
				<div id="copy">
					<a href="#container"><img src="images/up.png" alt="arrow up" id="up"/></a>
					<p>Ignjat Jokanović 311/16 All rights reserved</p>
				</div>
			</div>
		</div>
		<script src="aperance/lightbox-plus-jquery.min.js"></script>
	</body>
</html>
</xsl:template>
</xsl:stylesheet>