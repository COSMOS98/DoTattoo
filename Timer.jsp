<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>타이머 페이지</title>
</head>
<body>
		  <!-- 
form의 name의 목적 : 자바스크립트에서 접근이 용이하게 하기 위해서 사용
-->

  <form action="" name="frm">
    <div align="center">
      <strong>Timer</strong><br><br>

      <select id="selid" name="myChoice">
        <option value="180">select time(basic : 3 minute)</option>
        <option value="300">5 minute</option>
        <option value="180">3 minute</option>
        <option value="150">2 minute 30 second</option>
        <option value="120">2 minute</option>
        <option value="60">1 minute</option>
        <option value="30">30 second</option>
      </select>

      <input type="button" value="GO!" onclick="noodle()">
      <br><br>

      <span id="countdown">time select</span>
      <br><br>

      <input type="button" value="Close" onclick='window.close()'>

    </div>

  </form>
  <script type="text/javascript">
    var count = 0;
    var time = 0;
    var choice = 0;

    function noodle() {

      clearInterval(time); // 타이머 우선 초기화 시켜주기(time initialize)
      /* 
       
          ID로 가져오기
         // select의 value를 가져오기 : value
         var val = document.getElementById("selid").value;
         alert(val);   // 확인용
         // select의 index값을 가져오기 : selectedIndex
         var indexNum = document.getElementById("selid").selectedIndex;
         alert(indexNum);   // 확인용
       */


      //    name으로 index 찾기
      choice = document.frm.myChoice.selectedIndex;
      //   alert(choice);

      // 찾은 index로 value찾기
      count = parseInt(document.frm.myChoice.options[choice].value);

      alert(count);

      // 타이머 함수 1초씩 호출하는 함수 만들기
      time = setInterval("myTimer()", 1000);

    }

    function myTimer() {
      count = count - 1; // 타이머 선택 숫자에서 -1씩 감산함(갱신되기 때문)

      document.getElementById("countdown").innerHTML = "Ctrl + S <b>" + count + "</b>";
      if (count == 0) {
        clearInterval(time); // 시간 초기화
        alert("Time is finish")
      }
    }

    document.oncontextmenu = function () {
      alert("mouse right click cannot be used")
      return false;
    }
  </script>

</body>
</html>