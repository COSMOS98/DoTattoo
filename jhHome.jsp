<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.96.1/js/materialize.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.96.1/css/materialize.min.css"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.96.1/css/materialize.min.css" />
<link rel="stylesheet" href="static/assets/css/main.css" />

<script type="text/javascript">
	$(document).ready(function(){
		  $('.slider').slider();
		});
</script>

<style type="text/css">
.slider .indicators .indicator-item {
  background-color: #666666;
  border: 3px solid #ffffff;
  -webkit-box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0 rgba(0, 0, 0, 0.12);
  -moz-box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0 rgba(0, 0, 0, 0.12);
  box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0 rgba(0, 0, 0, 0.12);
}
.slider .indicators .indicator-item.active {
  background-color: #ffffff;
}
.slider {
  width: 900px;
  margin: 0 auto;
}
.slider .indicators {
  bottom: 60px;
  z-index: 100;
  /* text-align: left; */
}
</style>
</head>
<body>
<h2 align="center">TEST</h2>
<div align="right">
	<button type="button" id="btnTest" class="button scrolly" onclick="location.href='join.do'">회원가입</button>
	<button type="button" id="btnTest" class="button scrolly" onclick="location.href='login.do'">로그인</button>
</div>

<hr/>

 <div class="slider">
    <ul class="slides">
      <li>
        <img src="../static/images/images3.jpg"> <!-- random image -->
        <div class="caption center-align">
          <h3>우주 사진</h3>
          <h5 class="light grey-text text-lighten-3">아름다운 우주 사진.</h5>
        </div>
      </li>
      <li>
        <img src="../static/images/images1.jpg"> <!-- random image -->
        <div class="caption left-align">
          <h3>지구 사진</h3>
          <h5 class="light grey-text text-lighten-3">아름다운 지구 사진.</h5>
        </div>
      </li>
      <li>
        <img src="../static/images/images2.jpg"> <!-- random image -->
        <div class="caption right-align">
          <h3>별똥별 사진</h3>
          <h5 class="light grey-text text-lighten-3">아름다운 별동별사진.</h5>
        </div>
      </li>
      <li>
        <img src="../static/images/images4.jpg"> <!-- random image -->
        <div class="caption center-align">
          <h3>달 사진</h3>
          <h5 class="light grey-text text-lighten-3">아름다운 달 사진.</h5>
        </div>
      </li>
    </ul>
  </div>

</body>
</html>