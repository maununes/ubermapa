if(!!navigator.geolocation) {
    // Support
} else {
    alert('Seu navegador não suporta Geolocalização')
}

function solicitarUber(id){
	$.getJSON("webservice/requisicao.php?id="+id+"&latlng="+lat+","+lng+"&raio="+raio+"&useragent="+navigator.userAgent, function(data){
		alert("Uber solicitado, aguarde ("+data+")");
	});
	
}

function mudarRaio(raio){
	if(listaInfowindow.length == 0){
		$.getJSON("webservice/universidade.php", function(data){
			listaInfowindow = data;
			gerarMapa(listaInfowindow,raio);
		});
	}else{
		gerarMapa(listaInfowindow,raio);
	}
}

function gerarMapa(listaInfowindow,raio){
	if(!!navigator.geolocation) {
		var map;
		var mapOptions = {
			zoom: 12,
			mapTypeId: google.maps.MapTypeId.ROADMAP
		};
		map = new google.maps.Map(document.getElementById('google_canvas'), mapOptions);
		navigator.geolocation.getCurrentPosition(function(position) {
			var geolocate;
			var infowindow;
			
			//gerar infowindows
			for(i = 0; i<= listaInfowindow.length-1; i++){
				if(raio >= getDistanceFromLatLonInKm(position.coords.latitude,position.coords.longitude,listaInfowindow[i].lat,listaInfowindow[i].lng)){
					geolocate = new google.maps.LatLng(listaInfowindow[i].lat, listaInfowindow[i].lng);
					infowindow = new google.maps.InfoWindow({
						map: map,
						position: geolocate,
						content:getcontent(listaInfowindow[i])
					});
				}
			}
			
			//variaveis globais
			lat = position.coords.latitude;
			lng = position.coords.longitude;
			//
			geolocate = new google.maps.LatLng(position.coords.latitude, position.coords.longitude);
			infowindow = new google.maps.InfoWindow({
				map: map,
				position: geolocate,
				content:
					'<b>Estou aqui!</h1>'
			});
			map.setCenter(geolocate);
		});
	}
}

function getcontent(universidade){
	return '<b>'+universidade.nome+'</b>'+
			'<br>'+universidade.descricao+
			'<br><button onclick="solicitarUber('+universidade.universidadeid+')">Solicitar Uber</button>';

}

//Haversine formula.
function getDistanceFromLatLonInKm(lat1,lon1,lat2,lon2) {
  var R = 6371; // Radius of the earth in km
  var dLat = deg2rad(lat2-lat1);  // deg2rad below
  var dLon = deg2rad(lon2-lon1); 
  var a = 
    Math.sin(dLat/2) * Math.sin(dLat/2) +
    Math.cos(deg2rad(lat1)) * Math.cos(deg2rad(lat2)) * 
    Math.sin(dLon/2) * Math.sin(dLon/2)
    ; 
  var c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1-a)); 
  var d = R * c; // Distance in km
  console.log('resposta: '+d);
  return d;
}

function deg2rad(deg) {
  return deg * (Math.PI/180)
}

var listaInfowindow = [];
init();