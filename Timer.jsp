<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Ÿ�̸� ������</title>
</head>
<body>
		  <!-- 
form�� name�� ���� : �ڹٽ�ũ��Ʈ���� ������ �����ϰ� �ϱ� ���ؼ� ���
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

      clearInterval(time); // Ÿ�̸� �켱 �ʱ�ȭ �����ֱ�(time initialize)
      /* 
       
          ID�� ��������
         // select�� value�� �������� : value
         var val = document.getElementById("selid").value;
         alert(val);   // Ȯ�ο�
         // select�� index���� �������� : selectedIndex
         var indexNum = document.getElementById("selid").selectedIndex;
         alert(indexNum);   // Ȯ�ο�
       */


      //    name���� index ã��
      choice = document.frm.myChoice.selectedIndex;
      //   alert(choice);

      // ã�� index�� valueã��
      count = parseInt(document.frm.myChoice.options[choice].value);

      alert(count);

      // Ÿ�̸� �Լ� 1�ʾ� ȣ���ϴ� �Լ� �����
      time = setInterval("myTimer()", 1000);

    }

    function myTimer() {
      count = count - 1; // Ÿ�̸� ���� ���ڿ��� -1�� ������(���ŵǱ� ����)

      document.getElementById("countdown").innerHTML = "Ctrl + S <b>" + count + "</b>";
      if (count == 0) {
        clearInterval(time); // �ð� �ʱ�ȭ
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