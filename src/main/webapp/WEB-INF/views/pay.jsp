<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- C태그 쓰기 위해 넣은 taglib므로 반드시 확인 -->


<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">

<script type="text/javascript">document.cookie = "crosscookie=bar; samesite=none; secure"</script>
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<style type="text/css">
@font-face {
	font-family: 'tway_sky';
	src: url("../tway_sky.ttf");
	font-weight: 400;
}

* {
	font-family: 'tway_sky';
}

#headlogin2 {
	text-align: center;
	line-height: 4em;
}

#headerpotal {
	text-align: center;
	font-size: 1.5em;
	line-height: 4em;
}

#headlogin {
	text-align: center;
	line-height: 4em;
}

#upperbar {
	text-align: center;
}

#footbar {
	text-align: center;
	width: 100%;
	position: absolute;
	bottom: 0;
	position: absolute;
}

#foottxt {
	color: gray;
	line-height: 2em;
	font-size: 1em;
}

#check {
	text-align: center;
}
</style>

<title>event list</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>



<!-- 
	<sec:authorize access="isAuthenticated()">
		<form:form action="${pageContext.request.contextPath}/logout" method="POST">
	    	<input type="submit" value="로그아웃" />
		</form:form>
	</sec:authorize>
 -->

</head>
<body>

	<div class="container col-12" id="headbar"
		style="border-bottom: 3px solid black;">
		<div class="row">
			<div class="col-3">
				<a id="headlogo" href="/main"><img src="../투명로고.png"
					height="100em"></a>
			</div>

			<table class="col-4" id="headerpotal">
				<tr>
					<!-- <td class="col-2"><a href="#"><img src="마이페이지.png" width="100em"></a></td>
					<td class="col-2"><a href="#"><img src="예약.png" width="100em"></a></td>
					<td class="col-2"><a href="#"><img src="고객지원.png" width="100em"></a></td>
					<td class="col-2"><a href="#"><img src="후기.png" width="100em"></a></td>  -->
					<td><a href="#"
						style="text-decoration: none; color: black; font-size: 20px; font-weight: 900; width: 100px;">마이페이지</a></td>
					<td><sec:authorize access="isAnonymous()">
							<a href="/login"
								style="text-decoration: none; color: black; font-size: 20px; font-weight: 900; width: 100px;">예약</a>

						</sec:authorize> <sec:authorize access="isAuthenticated()">
							<a href="/rez/reserve"
								style="text-decoration: none; color: black; font-size: 20px; font-weight: 900; width: 100px;">예약</a>
						</sec:authorize></td>
					<td><a href="/custommerService"
						style="text-decoration: none; color: black; font-size: 20px; font-weight: 900; width: 100px;">고객지원</a></td>
					<td><a href="#"
						style="text-decoration: none; color: black; font-size: 20px; font-weight: 900; width: 100px;">후기</a></td>
					<td><a href="/user/eventlist"
						style="text-decoration: none; color: black; font-size: 20px; font-weight: 900; width: 100px;">이벤트</a></td>
				</tr>
			</table>

			<div class="col-2"></div>
			<sec:authorize access="isAnonymous()">
				<div id="headlogin" class="col-2">
					<a href="#"
						style="text-decoration: none; color: black; font-size: 20px; font-weight: 900; width: 100px;">로그인</a>
					<span
						style="text-decoration: none; color: black; font-size: 20px; font-weight: 900; width: 100px;">|</span>
					<a href="#"
						style="text-decoration: none; color: black; font-size: 20px; font-weight: 900; width: 100px;">회원가입</a>
				</div>
			</sec:authorize>
			<sec:authorize access="isAuthenticated()">
				<div id="headlogin2" class="col-2">
					<span
						style="text-decoration: none; color: black; font-size: 10px; font-weight: 900; width: 100px;"><sec:authentication
							property="principal.username" />님 환영합니다.</span> <a
						href="${pageContext.request.contextPath}/logout"
						style="text-decoration: none; color: black; font-size: 20px; font-weight: 900; width: 100px;">로그아웃</a>
				</div>
			</sec:authorize>
		</div>
	</div>


	<!-- jQuery -->
	<script type="text/javascript"
		src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
	<!-- iamport.payment.js -->
	<script type="text/javascript"
		src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>


	<script>
  	
	  var IMP = window.IMP; // 생략 가능
	  IMP.init("imp48123044"); // 예: imp00000000
	  function requestpay() {
	      // imp.request_pay(param, callback) 결제창 호출
	      IMP.request_pay({ // param
	          pg: "html5_inicis",
	          pay_method: "samsung",
	          merchant_uid: "ord20180131-0000011",
	          name: "가볼카 랜트카 예약",
	          amount: ${rentsinfo.final_cost},
	          buyer_email: "gildong@gmail.com",
	          buyer_name: "홍길동",
	          buyer_tel: "010-4242-4242",
	          buyer_addr: "서울특별시 강남구 신사동",
	          buyer_postcode: "01181"
	      }, function (rsp) { // callback
	          if (rsp.success) { // 결제 성공 시: 결제 승인 또는 가상계좌 발급에 성공한 경우
	            // jquery로 http 요청
	            jquery.ajax({
	                url: "http://localhost:8282/pay", // 예: https://www.myservice.com/payments/complete
	                method: "post",
	                headers: { "content-type": "application/json" },
	                data: {
	                    imp_uid: rsp.imp_uid,
	                    merchant_uid: rsp.merchant_uid
	                }
	            }).done(function (data) {
	              // 가맹점 서버 결제 api 성공시 로직
	            })
	          } else {
	            alert("결제에 실패하였습니다. " +  rsp.error_msg);
	          }
	        });
	    }
  </script>

	<div style="text-align: center;">

		<div
			style="height: 40px; line-height: 40px; font-size: 30px; margin: 20px auto;">최종내역
			확인</div>


		<table id="check" width="700" cellpadding="0" cellspacing="0"
			style="margin: 50px auto;" border="4px solid black;">
			<form method="post">

				<tr>
					<td
						style="border-bottom: 4px solid black; border-top: 4px solid black; background-color: rgb(125, 164, 224);">랜트
						시작일</td>
					<td
						style="border-bottom: 4px solid black; border-top: 4px solid black; font-size: 40px; height: 70px"><input
						type="hidden" name="b_title" value="${rentsinfo.rent_start_date}">${rentsinfo.rent_start_date}</td>
				</tr>
				<tr>
					<td
						style="border-bottom: 4px solid black; border-top: 4px solid black; background-color: rgb(125, 164, 224);">랜트
						종료일</td>
					<td
						style="border-bottom: 4px solid black; border-top: 4px solid black; font-size: 40px; height: 70px"><input
						type="hidden" name="b_title" value="${rentsinfo.rent_end_date}">${rentsinfo.rent_end_date}</td>
				</tr>

				<tr>
					<td
						style="border-bottom: 4px solid black; border-top: 4px solid black; background-color: rgb(125, 164, 224);">하이패스</td>
					<td
						style="border-bottom: 4px solid black; border-top: 4px solid black; font-size: 40px; height: 70px"><input
						type="hidden" name="b_title" value="${rentsinfo.hipass}">${rentsinfo.hipass}</td>
				</tr>
				<tr>
					<td
						style="border-bottom: 4px solid black; border-top: 4px solid black; background-color: rgb(125, 164, 224);">카시트</td>
					<td
						style="border-bottom: 4px solid black; border-top: 4px solid black; font-size: 40px; height: 70px"><input
						type="hidden" name="b_title" value="${rentsinfo.baby_car_seat}">${rentsinfo.baby_car_seat}</td>
				</tr>
				<tr>
					<td
						style="border-bottom: 4px solid black; border-top: 4px solid black; background-color: rgb(125, 164, 224);">차량번호</td>
					<td
						style="border-bottom: 4px solid black; border-top: 4px solid black; font-size: 40px; height: 70px"><input
						type="hidden" name="b_title" value="${rentsinfo.car_no}">${rentsinfo.car_no}</td>

				</tr>
				<tr>
					<td
						style="border-bottom: 4px solid black; border-top: 4px solid black; background-color: rgb(125, 164, 224);">총
						요금</td>
					<td
						style="border-bottom: 4px solid black; border-top: 4px solid black; font-size: 40px; height: 70px"><input
						type="hidden" name="b_title" value="${rentsinfo.final_cost}">${rentsinfo.final_cost}
						원</td>
				</tr>

			</form>
		</table>





		<button onclick="requestpay()">
			<img src="../삼성페이.jpg" height="90px">
		</button>
		<table>
			<form action="/insertRents2" method="post">


				<tr>
					<td><input type="hidden" name="user_id" id="user_id"
						title="아이디"
						value=<sec:authentication property="principal.username" />
						valid='{"required":"true"}' readonly></td>
					<td><input type="hidden" name="rent_start_date"
						id="rent_start_date" title="아이디"
						value="${rentsinfo.rent_start_date}" valid='{"required":"true"}'
						readonly></td>
					<td><input type="hidden" name="rent_end_date"
						id="rent_end_date" title="아이디" value="${rentsinfo.rent_end_date}"
						valid='{"required":"true"}' readonly></td>
					<td><input type="hidden" name="final_cost" id="final_cost"
						title="아이디" value="${rentsinfo.final_cost}"
						valid='{"required":"true"}' readonly></td>
					<td><input type="hidden" name="hipass" id="hipass" title="아이디"
						value="${rentsinfo.hipass}" valid='{"required":"true"}' readonly>
					</td>
					<td><input type="hidden" name="baby_car_seat"
						id="baby_car_seat" title="아이디" value="${rentsinfo.baby_car_seat}"
						valid='{"required":"true"}' readonly></td>
					<td><input type="hidden" name="car_no" id="car_no" title="아이디"
						value="${rentsinfo.car_no}" valid='{"required":"true"}' readonly>
					</td>

				</tr>

				<tr>
					<td><input type="submit" value="(테스트용)예약하기"></a></td>
					<td>
				</tr>

			</form>
		</table>
	</div>


	<footer id="footbar" style="background-color: black;">

		<div class="container col-11">
			<div class="row">
				<div class="col-3">
					<img src="../회색로고.png" height="100em" width="100em">
				</div>
				<div id="foottxt" class="col-9">
					<div>프로젝트 가볼카 | 대표이사: 정다은 | 제주도 가볼길 001호</div>
					<div>사업자등록번호 : 010-11-11122 | 통신판매신고번호: 제2022-제주서귀포-0001호 |
						TEL: 1111-1111 | Fax:000-000-0000 | Project@Gavolcar.co.kr</div>
					<div>COPYRIGHT©GAVOLCAR.ALL.RIGHTS.RESERVED</div>

				</div>
			</div>
		</div>

	</footer>
</body>
</html>