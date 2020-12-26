<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>changeLocation</title>
</head>
<body>
	<button id="button">지도 중심 이동하기</button>
	<a href="directionApi">direction api 사용하기 위해 이동</a>
	<div id="map" style="width:80%; height: 95vh;"></div>
	<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBKsD4S-sKWOguH51BAb3MSljzQSUUgLy8&callback=initMap&region=kr"></script>
	<script type="text/javascript">
		var map;
		var button = document.getElementById('button');
		button.addEventListener('click', changeCenter);

		function initMap(){
			var seoul = {lat: 37.5642135, lng: 127.0016985};
			map=new google.maps.Map(document.getElementById('map'),{
				zoom: 12,
				center: seoul
			});

			new google.maps.Marker({
				position: seoul,
				map: map,
				label: "서울 중심 좌표"
			});
		}

		function changeCenter(){
			var busan = {lat: 35.1379222, lng: 129.05562775};
			map.panTo(busan);
			map.setZoom(14);

			new google.maps.Marker({
				position: busan,
				map: map,
				label: "부산 중심 좌표"
			});
		}
	</script>
</body>
</html>