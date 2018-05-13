					var xmlDoc;
					var xmlhttp=null;
						if(window.XMLHttpRequest){
							xmlhttp=new XMLHttpRequest();}else{
							xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
						}
						xmlhttp.open("GET","ships.xml",false); 
						xmlhttp.send(); 
						xmlDoc=xmlhttp.responseXML; 
						dohvati(xmlDoc);





					function dohvati(xmlv)
					{
						var prikaz = "<table ><tr><th>NAME</th><th>TYPE</th><th>POWER</th><th>SPEED</th></tr>";
						var svi = xmlv.getElementsByTagName("brod");
						var i;
						for(i=0;i<svi.length;i++){
							prikaz += "<tr><td>" + svi[i].getElementsByTagName("ime")[0].childNodes[0].nodeValue + "</td>";
							prikaz += "<td>" + svi[i].getElementsByTagName("tip")[0].childNodes[0].nodeValue + "</td>";
							prikaz += "<td>" + svi[i].getElementsByTagName("pow")[0].childNodes[0].nodeValue + "</td>";
							prikaz += "<td>" + svi[i].getElementsByTagName("spd")[0].childNodes[0].nodeValue + "</td></tr>";
						}
						prikaz += "</table>";
						document.getElementById("sh").innerHTML = prikaz;
					}