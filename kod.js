function padm(){
	var prikazi=document.getElementById('ddmc');
	prikazi.style="display: block;";
}
function skrij(){
	var prikazi=document.getElementById('ddmc');
	prikazi.style="display: none;";
}
function provera()
{
	var ime = document.getElementById('ime');
	var mejl = document.getElementById('mejl');
	var poruka = document.getElementById('por');
	var regime = /^[A-Z]{1}[a-z]{2,17}$/;
	
	var greske = new Array();
	if(!ime.value.match(regime))
	{
		greske.push("Invalid name");
		
	}
	if (mejl.value =="")
	{
		greske.push("Pleae enter email");
	}
	
	if(poruka.value=="")
	{
		greske.push("please enter message");
	}
	alert(greske);
}
function vidi() {
	
	var ime = document.getElementById('regime');
	var prezime = document.getElementById('regprezime');
	var sif = document.getElementById('regpas');
	var sifpov = document.getElementById('regrpas').value;
	var aregime = /^[A-Z]{1}[a-z]{2,17}$/;
	var aprezime = /^[A-Z]{1}[a-z]{2,17}$/;
	var user = document.getElementById('regus');
	var reguser = /^[A-Z]{1}[a-z]{2,17}[0-9]{3}$/;
	
	var greske = new Array();
	
	if(!ime.value.match(aregime))
	{
		greske.push("Invalid name");
		
	}
	if (!prezime.value.match(aprezime))
	{
		greske.push("Invalid surname");
	}
	
	if(!user.value.match(reguser))
	{
		greske.push("Invalid username");
	}
	if(!sif.value.match(sifpov))
	{
		greske.push("Password error");
	}
	alert(greske);

	
}

					var xmlDoc;
					var xmlhttp=null;
						if(window.XMLHttpRequest){
							xmlhttp=new XMLHttpRequest();}else{
							xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
						}
						xmlhttp.open("GET","vesti.xml",false); 
						xmlhttp.send(); 
						xmlDoc=xmlhttp.responseXML; 
						dohvati(xmlDoc);





					function dohvati(xmlv)
					{
						var prikaz = "<table ><tr><th>PATCH</th><th>SHIP BUFFED</th><th>MISSIONS</th></tr>";
						var svi = xmlv.getElementsByTagName("vest");
						var i;
						for(i=0;i<svi.length;i++){
							prikaz += "<tr><td>" + svi[i].getElementsByTagName("patch")[0].childNodes[0].nodeValue + "</td>";
							prikaz += "<td>" + svi[i].getElementsByTagName("ships")[0].childNodes[0].nodeValue + "</td>";
							prikaz += "<td>" + svi[i].getElementsByTagName("mission")[0].childNodes[0].nodeValue + "</td></tr>";
						}
						prikaz += "</table>";
						document.getElementById("pojava").innerHTML = prikaz;
					}