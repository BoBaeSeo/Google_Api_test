<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false" %>
<html>
<head>
	<title>Google Map</title>
</head>
<body>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>
<a href="changeLocation">지도 중심 변경하기위해 사이트 이동</a>
<div id="map" style="width:100%; height: 100vh;"></div>
<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBKsD4S-sKWOguH51BAb3MSljzQSUUgLy8&callback=initMap&region=kr"></script>
<!-- region=kr을 표시하지 않으면 동해가 일본해로 표기되니까 개빡치는 결과를 보고싶지 않다면 꼭 추가하자 -->
<script>
	function initMap()	{
		var seoul={lat:37.5642135, lng: 127.0016985}; /* seoul의 위도 경도를 입력하고 */
		var map=new google.maps.Map(
			document.getElementById('map'),{
				zoom: 12,
				center:seoul
			}); /* 그 중심으로 zoom이 12인 지도를 첫 화면에서 보여주는 코드이다. (숫자가 커질수록 확대 비율이 높아진다.)*/
		
		new google.maps.Marker({
			position: seoul, 
			map: map,
			label: "서울 중심 좌표"
		}); /* 서울에 label을 이용해 좌표를 찍었다. */
	}
</script>


</body>
</html>
