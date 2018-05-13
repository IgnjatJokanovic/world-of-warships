<?xml version="1.0" encoding="UTF-8"?>
<sxl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
 
<html>
	<head>
		<meta charset="utf-8"/>
		<meta name="keywords" content="World of warships,battleships,wows"/>
		<meta name="author" content="Ignjat Jokanović"/>
		<meta name="description" content="World of warships is an online multiplayer game where players fight with their battleships to take objectives and win matches"/>
		<title>World of warships</title>
		<script type="text/javascript" src="aperance/animation/jquery-3.1.1.slim.min.js"></script>
		<script type="text/javascript" src="aperance/animation/kod.js"></script>
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
						<li id="ddm" onmouseover="padm();"><a href="stranice/game.html">ABOUT US</a>
							<ul id="ddmc">
								<li><a href="stranice/game.html">GAME</a></li>
								<li><a href="stranice/autor.html">AUTHOR</a></li>
							</ul>
						</li>
						
					</ul>
				</div>
				
				
			</div>
			
			<table border="2px" width="500px" bgcolor="#003333">
				<tr bgcolor="#003333">
				<th color="white">NAME</th>
				<th color="white">TYPE</th>
				<th color="white">POWER</th>
				<th color="white">SPEED</th>
				</tr>
				<xsl:for-each select="brodovi/brod">
				<tr bgcolor="#003333">
				<td color="white"><xsl:value-of select="ime"/></td>
				<td color="white"><xsl:value-of select="tip"/></td>
				<td color="white"><xsl:value-of select="pow"/></td>
				<td color="white"><xsl:value-of select="spd"/></td>
				</tr>
				</xsl:for-each>
			</table>
			
			<div id="dole">
				<div id="stavke">
					<ul>
						<li><a href="dokumentacija.pdf">DOCUMENTATION</a></li>
						<li><a href="dokumentacija.pdf">SITEMAP</a></li>
						<li><a href="dokumentacija.pdf">AUTHOR</a></li>
				</div>
				<div id="mreze">
					<div class="mreze">
						<a href="https://www.facebook.com/"><img src="images/fejs.png" alt="facebook logo"/></a>
					</div>
					<div class="mreze">
						<a href="https://www.youtube.com/"><img src="images/ju.png" alt="youtube logo"/></a>
					</div>
					<div class="mreze">
						<a href="https://twitter.com/"><img src="images/twt.png"/ alt="twiter logo"></a>
					</div>
					<div class="mreze">
						<img src="images/rss.png" alt="rss logo"/>
					</div>
				</div>
				
				<div id="copy">
					<a href="#container"><img src="images/up.png" alt="arrow up" id="up"/></a>
					<p>&copy Ignjat Jokanović 311/16 All rights reserved</p>
				</div>
			</div>
		</div>
	</body>
</html>
</xsl:template>
</xsl:stylesheet>