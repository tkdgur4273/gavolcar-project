<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!-- C태그 쓰기 위해 넣은 taglib므로 반드시 확인 -->

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<meta charset="UTF-8">
<title>예약하기</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/font-awesome.min.css" rel="stylesheet">
<link href="css/prettyPhoto.css" rel="stylesheet">
<link href="css/price-range.css" rel="stylesheet">
<link href="css/animate.css" rel="stylesheet">
<link href="css/main.css" rel="stylesheet">
<link href="css/responsive.css" rel="stylesheet">
<!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
<link rel="shortcut icon" href="images/ico/favicon.ico">
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="images/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="images/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="images/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="images/ico/apple-touch-icon-57-precomposed.png">








<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>




<link rel="stylesheet"
	href="//code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.9.1.js"></script>
<script src="//code.jquery.com/ui/1.10.2/jquery-ui.js"></script>


<link rel="stylesheet" href="/resources/css/timepicker.css" />
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css" />
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<script src="/resources/js/timepicker.js"></script>

<!-- 팝업창 -->
<script type="text/javascript">
$(function(){
  $('#cBtn').click(function(event) {
 	 cPopupOpen();
  });
  
  $('#uBtn').click(function(event) {
	 	 uPopupOpen();
	  });
});

function cPopupOpen() {
	var url = "/rez/car_search";
	var winWidth = 1000;
	var winHeight = 500;
	var popupOption = "width=" + winWidth + ", height=" + winHeight;
	window.open(url,"",popupOption);
}

function uPopupOpen() {
    var url = "/rez/user_search";
    var winWidth = 1000;
    var winHeight = 500;
    var popupOption = "width=" + winWidth + ", height=" + winHeight;
    window.open(url,"",popupOption);
}


function setOrdNumber(cno, cimg, ctype, cvolume, cprice){
	document.getElementById("car_no").value = cno;
    document.getElementById("car_img").value = cimg;
    document.getElementById("car_type").value = ctype;
	document.getElementById("car_volume").value = cvolume;
	document.getElementById("car_price").value = cprice;
}

//고객 정보 채우기
function setCustomer(uid, uname, uage, uhp, uemail){
    document.getElementById("user_id").value = uid;
    document.getElementById("user_name").value = uname;
    document.getElementById("user_age").value = uage;
    document.getElementById("user_phone_number").value = uhp;
    document.getElementById("user_email").value = uemail;
}
</script>

<!-- 달력 스크립트 -->
<script>
	$(function(){
		$('#datepicker').datepicker();
	})
</script>
<script>
$(document).ready(function () {
    $.datepicker.regional['ko'] = {
        closeText: '닫기',
        prevText: '이전달',
        nextText: '다음달',
        currentText: '오늘',
        monthNames: ['1월(JAN)','2월(FEB)','3월(MAR)','4월(APR)','5월(MAY)','6월(JUN)',
        '7월(JUL)','8월(AUG)','9월(SEP)','10월(OCT)','11월(NOV)','12월(DEC)'],
        monthNamesShort: ['1월','2월','3월','4월','5월','6월',
        '7월','8월','9월','10월','11월','12월'],
        dayNames: ['일','월','화','수','목','금','토'],
        dayNamesShort: ['일','월','화','수','목','금','토'],
        dayNamesMin: ['일','월','화','수','목','금','토'],
        weekHeader: 'Wk',
        dateFormat: 'yy-mm-dd',
        firstDay: 0,
        isRTL: false,
        showMonthAfterYear: true,
        yearSuffix: '',
        showOn: 'both', //button:버튼을 표시하고,버튼을 눌러야만 달력 표시
        buttonText: "달력",
        changeMonth: true,
        changeYear: true,
        showButtonPanel: true,
        yearRange: 'c-99:c+99',

    };
    $.datepicker.setDefaults($.datepicker.regional['ko']);

    $('#sdate').datepicker();
    $('#sdate').datepicker("option", "maxDate", $("#edate").val());
    $('#sdate').datepicker("option", "onClose", function ( selectedDate ) {
        $("#edate").datepicker( "option", "minDate", selectedDate );
    });

    $('#edate').datepicker();
    $('#edate').datepicker("option", "minDate", $("#sdate").val());
    $('#edate').datepicker("option", "onClose", function ( selectedDate ) {
        $("#sdate").datepicker( "option", "maxDate", selectedDate );
    });
});    
    <!-- 예약기간 계산 스크립트 -->
    function f_datepicker(obj) {
    	$( obj ).datepicker();
    	
        var sdd = document.getElementById("sdate").value;
        var edd = document.getElementById("edate").value;
        var ar1 = sdd.split('-');
        var ar2 = edd.split('-');
        var da1 = new Date(ar1[0], ar1[1], ar1[2]);
        var da2 = new Date(ar2[0], ar2[1], ar2[2]);
        var dif = da2 - da1;
        var cDay = 24 * 60 * 60 * 1000;// 시 * 분 * 초 * 밀리세컨
        var cMonth = cDay * 30;// 월 만듬
        var cYear = cMonth * 12; // 년 만듬
     if(sdd && edd){
        document.getElementById('days').value = parseInt(dif/cDay)
     }
    }
</script>
<!-- 라디오 버튼 -->

<script type="text/javascript">
      		$(document).ready(function () {
            	$('#hipass_check').click(function () {
              	// getter
              	var radioVal = $('input[name="hipass"]:checked').val();
              	alert(radioVal);
            	});
            	
      			$('#cseat_check').click(function () {
      	          	// getter
      	         var radioVal = $('input[name="baby_car_seat"]:checked').val();
      	         alert(radioVal);
      	        	});
      });
</script>

<script type="text/javascript">
      		$(document).ready(function () {
            	$('#hipass_check').click(function () {
              	// getter
              	var radioVal = $('input[name="hipass"]:checked').val();
              	alert(radioVal);
            	});
            	
      			$('#cseat_check').click(function () {
      	          	// getter
      	         var radioVal = $('input[name="baby_car_seat"]:checked').val();
      	         alert(radioVal);
      	        	});
      });
</script>

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
}

#foottxt {
	color: gray;
	line-height: 2em;
	font-size: 1em;
}

#mainpart {
	width: 70%;
	text-align: center;
	margin: 60px auto;
	font-size: 30px;
}

.sector {
	height: 90px;
	line-height: 90px;
	color: rgb(206, 206, 206);
	background-color: rgb(52, 118, 218); border : 2px solid rgb( 59, 59, 59
	);
	font-size: 50px;
	border: 2px solid rgb(59, 59, 59);
}

#cBtn {
	color: rgb(255, 255, 255);
	background-color: rgb(52, 118, 218);
	border: 2px solid rgb(59, 59, 59);
	border-radius: 20px;
}

.sub_bar {
	color: rgb(255, 255, 255);
	background-color: rgb(125, 164, 224);
	border: 2px solid rgb(59, 59, 59);
}
</style>





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
					<td><a href="/user/userHome"
						style="text-decoration: none; color: black; font-size: 20px; font-weight: 900; width: 20em;">마이페이지</a></td>
					<td><sec:authorize access="isAnonymous()">
							<a href="/login"
								style="text-decoration: none; color: black; font-size: 20px; font-weight: 900; width: 100px;">예약</a>

						</sec:authorize> <sec:authorize access="isAuthenticated()">
							<a href="/rez/reserve"
								style="text-decoration: none; color: black; font-size: 20px; font-weight: 900; width: 100px;">예약</a>
						</sec:authorize></td>
					<td><a href="custommerService"
						style="text-decoration: none; color: black; font-size: 20px; font-weight: 900; width: 100px;">고객지원</a></td>
					<td><a href="/review/userList"
						style="text-decoration: none; color: black; font-size: 20px; font-weight: 900; width: 100px;">후기</a></td>
					<td><a href="/user/eventlist"
						style="text-decoration: none; color: black; font-size: 20px; font-weight: 900; width: 100px;">이벤트</a></td>
				</tr>
			</table>

			<div class="col-2"></div>
			<sec:authorize access="isAnonymous()">
				<div id="headlogin" class="col-2">
					<a href="/login"
						style="text-decoration: none; color: black; font-size: 1.5em; font-weight: 900; width: 100px;">로그인</a>
					<span
						style="text-decoration: none; color: black; font-size: 1.5em; font-weight: 900; width: 100px;">|</span>
					<a href="/add/addForm"
						style="text-decoration: none; color: black; font-size: 1.5em; font-weight: 900; width: 100px;">회원가입</a>
				</div>
			</sec:authorize>

			<sec:authorize access="isAuthenticated()">
				<div id="headlogin2" class="col-3">
					<span
						style="text-decoration: none; color: black; font-size: 10px; font-weight: 900; width: 100px;"><sec:authentication
							property="principal.username" />님 환영합니다.</span> <a
						href="${pageContext.request.contextPath}/logout"
						style="text-decoration: none; color: black; font-size: 20px; font-weight: 900; width: 100px;">|로그아웃</a>
				</div>
			</sec:authorize>
		</div>
	</div>





	<div id="mainpart">
		<table style="margin: 0 auto; width: 100%; border: 2px solid black;">
			<form action="/insertRents" method="post">

				<!-- 이름 나이 전화번호 이메일 받아오기 -->

				<tr>
					<td><input type="hidden" name="user_id" id="user_id"
						title="아이디"
						value=<sec:authentication property="principal.username" />
						valid='{"required":"true"}' readonly></td>
				</tr>

				<!-- 예약 종료일은 예약 시작일을 앞설 수 없다 -->
				<tr>
					<td colspan="2"><h3 class="sector">예약 일정</h3></td>
				<tr style="height: 100px;">
					<td colspan="2">예약 시작일 <input type="text"
						name="rent_start_date" id="sdate" size="10" maxlength="10"
						value="" class="datepicker"
						onclick="javascript:f_datepicker(this);"></td>
				</tr>

				<tr style="height: 100px;">
					<td colspan="2">예약 종료일 <input type="text" name="rent_end_date"
						id="edate" size="10" maxlength="10" value="" class="datepicker"
						onclick="javascript:f_datepicker(this);"></td>
				</tr>




				<tr>
					<td colspan="2"><h3 class="sector">차량 정보</h3></td>
				<tr style="height: 200px;">
					<td colspan="2"><button
							style="font-size: 40px; height: 80px; width: 600px;"
							type="button" class="btn btn-default btn-sm" id="cBtn">차량조회</button></td>
				</tr>
				</tr>
				<!-- 팝업창에서 전달받는 내용 -->

				<tr>
					<td style="text-align: left; width: 600px; padding-left: 230px;">차량
						사진</td>
					</br>
					<td style="text-align: left; width: 600px;"><input type="text"
						name="cimg" id="car_img" title="차량 사진" value="${sform.cimg}"
						valid='{"required":"true"}' readonly style="width: 270px;"></td>
				</tr>

				<tr>
					<td style="text-align: left; width: 600px; padding-left: 230px;">차량
						번호</td>
					</br>
					<td style="text-align: left; width: 600px;"><input type="text"
						name="car_no" id="car_no" title="차량 번호" class="only_number"
						value="${sform.cno}" valid='{"required":"true"}' readonly
						style="width: 270px;"></td>
				</tr>

				<tr>
					<td style="text-align: left; width: 600px; padding-left: 230px;">차종</td>
					<td style="text-align: left; width: 600px;"><input type="text"
						name="ctype" id="car_type" title="차종" value="${sform.ctype}"
						valid='{"required":"true"}' readonly style="width: 270px;">
					</td>
				</tr>

				<tr>
					<td style="text-align: left; width: 600px; padding-left: 230px;">탑승가능인원</td>
					<td style="text-align: left; width: 600px;"><input type="text"
						name="cvolume" id="car_volume" title="탑승가능인원" class="only_number"
						value="${sform.cvolume}" valid='{"required":"true"}' readonly
						style="width: 270px;"></td>
				</tr>

				<tr>
					<td style="text-align: left; width: 600px; padding-left: 230px;">시간당
						요금</td>
					</br>
					<td style="text-align: left; width: 600px;"><input type="text"
						name="cprice" id="car_price" title="시간당 요금" class="only_number"
						value="${sform.cprice}" valid='{"required":"true"}' readonly
						style="width: 270px;"></td>
				</tr>

				<!-- 이게 맞는가 모르겠다 -->
				<tr>
					<td style="text-align: left; width: 600px; padding-left: 230px;">총요금</td>
					</br>
					<td style="text-align: left; width: 600px;"><input type="text"
						name="final_cost" id="days" title="총요금" value="11111"
						style="width: 270px;"></td>
				</tr>



				<tr>
					<td colspan="2"><h3 class="sector">추가옵션</h3></td>
				</tr>

				<tr>
					<td colspan="2" class="sub_bar"><p>하이패스 유무</p></td>
				</tr>

				<tr>
					<td><input type="radio" id="hipass_check" name="hipass"
						value="0" checked="checked">미선택</td>
					<td><input type="radio" id="hipass_check" name="hipass"
						value="1">선택</td>
				</tr>

				<tr>
					<td colspan="2" class="sub_bar"><p>카시트 유무</p></td>
				</tr>

				<tr>
					<td><input type="radio" id="cseat_check" name="baby_car_seat"
						value="0" checked="checked">미선택</td>
					<td><input type="radio" id="cseat_check" name="baby_car_seat"
						value="1">선택</td>
				</tr>

				<tr style="height: 200px;">
					<td colspan="2"><input type="submit" value="예약하기"
						style="height: 120px; width: 600px; background-color: rgb(247, 228, 121);"></a>
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
	<!--/Footer-->



	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.scrollUp.min.js"></script>
	<script src="js/price-range.js"></script>
	<script src="js/jquery.prettyPhoto.js"></script>
	<script src="js/main.js"></script>

</body>
</html>