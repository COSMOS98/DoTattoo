<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JoinForm</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	$(document).ready(function() {
		var isCheckDupId = false;
		var checkedId = "";
		
		$("#btnIdCheck").click(function() {
			if($("#uId").val() == ""){
				alert("아이디를 입력해 주세요");
				$("#uId").focus();
				return false;
			}
			
			var url = "/jh/checkDupId.do";
			var uId = $("#uId").val();
			var sendData = {
					"uId" : uId
			};
			$.get(url, sendData, function(rData) {
				console.log(rData);
				if(rData == "true"){
					alert("조회하신 아이디는 중복되는 아이디 입니다.");
					isCheckDupId = false;
				} else {
					alert("사용 가능한 아이디 입니다.");
					isCheckDupId = true;
				}
				checkedId = uId;
			});
		});

		$("#frmJoin").submit(function(e) {
			if (isCheckDupId == false) {
				alert("아이디 중복체크를 해주세요.");
				return false;
			}
			if ($("#uPw").val().length < 8 || $("#uPw").val().length > 16) {
				alert("비밀번호는 8~16자리 이내로 만들어 주세요.");
				return false;
			}
			if ($("#pwCheck").val() != $("#uPw").val()) {
				alert("비밀번호가 다릅니다.");
				$("#pwCheck").val("").focus();
				return false;
			}
			if ($("#checkAgree").is(":checked") == false) {
				alert("이용약관에 동의해 주세요.");
				return false;
			}
		});
	});
</script>

<!-- 우편번호 서비스API START -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
</script>
<!-- 우편번호 서비스API END -->

<!-- 카카오 로그인API START -->
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script>
Kakao.init('3a856723b7feb502790fb7771a6843fe'); //발급받은 키 중 javascript키를 사용해준다.
console.log(Kakao.isInitialized()); // sdk초기화여부판단
//카카오로그인
function kakaoLogin() {
    Kakao.Auth.login({
      success: function (response) {
        Kakao.API.request({
          url: 'src/main/webapp/WEB-INF/jsp/jhProject/jhBoardList.jsp',
          success: function (response) {
        	  console.log(response)
          },
          fail: function (error) {
            console.log(error)
          },
        })
      },
      fail: function (error) {
        console.log(error)
      },
    })
  }
//카카오로그아웃  
function kakaoLogout() {
    if (Kakao.Auth.getAccessToken()) {
      Kakao.API.request({
        url: '/v1/user/unlink',
        success: function (response) {
        	console.log(response)
        },
        fail: function (error) {
          console.log(error)
        },
      })
      Kakao.Auth.setAccessToken(undefined)
    }
  }  
</script>
<!-- 카카오 로그인API END -->
</head>
<body>
	<h1 align="center">회원가입</h1>
	<hr/>
	
	<h3 align="center">우편 주소</h3>
	<div align="center">
			<!-- 우편번호 서비스API START -->
			<input type="text" id="sample6_postcode" placeholder="우편번호" style="width: 350px; height: 25px; margin-left: 105px" />
			<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기" /><br />
			<input type="text" id="sample6_address" placeholder="주소" style="width: 350px; height: 25px;" /><br />
			<input type="text" id="sample6_detailAddress" placeholder="상세주소" style="width: 350px; height: 25px;" /><br />
			<input type="text" id="sample6_extraAddress" placeholder="참고항목" style="width: 350px; height: 25px;" />
			<!-- 우편번호 서비스API END -->
	</div>
	<h3 align="center">기본 정보</h3>
	<div align="center">
		<form id="frmJoin" action="insertUserRun.do" method="POST"><br/>
			<input type="text" placeholder="사용하실 ID를 입력해주세요(수신 가능 E-mail입력)" id="uId" name="uId" required style="width: 350px; height: 25px; margin-left: 119px"/>
			<button type="button" id="btnIdCheck">아이디 중복확인</button><br/><br/>
			<input type="password" placeholder="비밀번호(영문+숫자+특수문자 조합 8~16자리 이내)" id="uPw" name="uPw" required style="width: 350px; height: 25px;"/><br /><br/>
			<input type="password" placeholder="비밀번호 확인" id="pwCheck" required style="width: 350px; height: 25px;"/><br /><br/>
			<input type="text" placeholder="이름을 입력해 주세요" id="uName" name="uName" required style="width: 350px; height: 25px;"/><br /><br/>
			<input type="text" placeholder="휴대폰 번호 '-'표 없이 입력해 주세요" id="uPhone" name="uPhone" required style="width: 350px; height: 25px;"/><br />
			<p style="font-size: 13px">※개인 추가정보는 회원가입 후 등록이 가능합니다.</p><br/>
			<input type="checkbox" id="checkAgree"/> <b>약관에 동의합니다.(필수)</b> <br />
			<br />
			<button type="submit">회원가입</button>
			<button type="button" onclick="location='login.do'">로그인</button>
		</form>
	</div>
	
	<!-- 카카오 로그인API START -->
	<div align="center">
	<ul style="list-style: none;">
		<li onclick="kakaoLogin();">
	      <a href="javascript:void(0)">
	          <span>카카오 로그인</span>
	      </a>
		</li>
		<li onclick="kakaoLogout();">
	      <a href="javascript:void(0)">
	          <span>카카오 로그아웃</span>
	      </a>
		</li>
	</ul>
	</div>
	<!-- 카카오 로그인API END -->
</body>
</html>