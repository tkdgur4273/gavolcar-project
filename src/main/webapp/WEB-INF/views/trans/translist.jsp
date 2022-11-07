<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- C태그 쓰기 위해 넣은 taglib므로 반드시 확인 -->



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>trans</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>


<meta chartset="utf-8">
<title>막대 그래프</title>
<!-- 라이브러리를 읽어들임 ======(※1) -->
<script type="text/javascript" src="https://www.google.com/jsapi"></script>


<script type="text/javascript">
        // 어떤 그래프를 사용할지 지정 ------ (※2)  
        google.load('visualization', '1.0', {
            'packages': ['corechart']
        });

        // 그래프API로드가 완료되면 실행할 수 있도록 이벤트를 지정 ---- (※3)  
        google.setOnLoadCallback(drawChart);

        // 차트 그리기를 실행 --- (※4)  
        function drawChart() {
            // 데이터오브젝트를 작성 --- (※5)    
            var data = new google.visualization.DataTable();

            // 데이터의 컬럼을 지정 -------- (※6)    
            data.addColumn('string', '회사');
            data.addColumn('number', '거래량');

            // 실제 데이터를 지정 ------------- (※7)    
            data.addRows([
            	<c:forEach var="transCompany" items="${company}">
   				['${transCompany.company}' , ${transCompany.companyCount}],             
				</c:forEach>
            
            ]);

            // 그래피의 옵션을 지정 ------- (※8)    
            var opt = {
                'title': '제조사별 거래비율',
                'width': 1000,
                'height': 800,
                pieSliceText: 'percentage', // label:이름 . vaule:실제값
                legend: { // 범례
                    position: 'right',
                    textStyle: {
                        color: 'black',
                        fontSize: 25
                    }
                } //'none' 
            };
            // 그래프를 표시 ------------- (※9)    
            var chart = new google.visualization.PieChart( // ***Chart
                document.getElementById('pieChart_div'));
            chart.draw(data, opt);
        }

        
      
    </script>




<script type="text/javascript">
    
    
    $(document).ready(function(){
    	
    	
        // 어떤 그래프를 사용할지 지정 ------ (※2)  
        google.load('visualization', '1.0', {	
            'packages': ['corechart']
        });

        // 그래프API로드가 완료되면 실행할 수 있도록 이벤트를 지정 ---- (※3)  
        google.setOnLoadCallback(drawChart);

        // 차트 그리기를 실행 --- (※4)  
        function drawChart() {
            // 데이터오브젝트를 작성 --- (※5)    
            var data = new google.visualization.DataTable();

            // 데이터의 컬럼을 지정 -------- (※6)    
            data.addColumn('string', '월매출');
            data.addColumn('number', '월매출');

            // 실제 데이터를 지정 ------------- (※7)    
            data.addRows([
                <c:forEach var="transMonth" items="${month}">
	   				['${transMonth.month} 월' , ${transMonth.earn}],             
   				</c:forEach>
                
            ]);

            // 그래피의 옵션을 지정 ------- (※8)    
            var opt = {
                'title': '매출(단위: 천)',
                'width': 1000,
                'height': 800,
                
            };
            // 그래프를 표시 ------------- (※9)    
            var chart = new google.visualization.ColumnChart( // ***Chart
                document.getElementById('chart_div'));
            chart.draw(data, opt);
        }

        
   
    });
    </script>
<script type="text/javascript">
    	$(document).ready(function(){
    		var maxc = 0;
    		var com = "";
    		<c:forEach var="transCompany" items="${company}">
    		 if(${transCompany.companyCount}>maxc){
    			 maxc = ${transCompany.companyCount};
    			 com = '${transCompany.company}';
    		 }
    		   
			</c:forEach>
			$("#maxC").append(com);
			
			var maxm = 0;
    		var month = "";
    		<c:forEach var="transMonth" items="${month}">
    		 if(${transMonth.earn}>maxm){
    			 maxm = ${transMonth.earn};
    			 month = '${transMonth.month}';
    		 }
    		   
			</c:forEach>
			$("#maxM").append(month);
    	});
    </script>


<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Home | E-Shopper</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>



<style type="text/css">
@font-face {
	font-family: 'tway_sky';
	src: url("./tway_sky.ttf");
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

#mainbody {
	background: url(./차트페이지.jpg);
	background-repeat: no-repeat;
	background-size: cover;
}

#mainarea1 {
	opacity: 0.9;
}

#mainarea2 {
	opacity: 0.9;
}

#text1 {
	padding: 300px 0px;
	text-align: center;
	line-height: 100px;
	background-color: white;
	opacity: 0.9;
	height: 800px;
	width: 634px;
}

#text2 {
	padding: 300px 0px;
	text-align: center;
	line-height: 100px;
	background-color: white;
	opacity: 0.9;
	height: 800px;
	width: 634px;
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
					<td><a href="/user/userHome"
						style="text-decoration: none; color: black; font-size: 20px; font-weight: 900; width: 100px;">마이페이지</a></td>
					<td>
						<sec:authorize access="isAnonymous()">
					<a href="/login"
						style="text-decoration: none; color: black; font-size: 20px; font-weight: 900; width: 100px;">예약</a>
					
					</sec:authorize>
					<sec:authorize access="isAuthenticated()">
					<a href="/rez/reserve"
						style="text-decoration: none; color: black; font-size: 20px; font-weight: 900; width: 100px;">예약</a>
					</sec:authorize>	
						
					</td>
					<td><a href="/custommerService"
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
						style="text-decoration: none; color: black; font-size: 20px; font-weight: 900; width: 100px;">로그인</a>
					<span
						style="text-decoration: none; color: black; font-size: 20px; font-weight: 900; width: 100px;">|</span>
					<a href="/add/addForm"
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


	<div id="mainbody" class="container col-12">
		<div class="row">
			<div class="col-1"></div>
			<div class="col-4">
				<div id="text1">
					<h2>저희 매장에서 선호 되었던 자량제조사들 입니다.</h2>
					<span style= "font-size: 1.5em;">가장 선호되는 제조사는</span> <span id="maxC" style="color: rgb(41, 144, 212); font-size: 2em;"></span> <span style= "font-size: 1.5em;">입니다</span>
				</div>
			</div>
			<div id="mainarea1" class="col-4">
				<div id="pieChart_div"></div>
				<!-- 	<div><a href="admin/transEdit">데이터 관리</a></div>

	<table id="ta" width="500" border="1">
		<tr>
			<td>번호</td>
			<td>이익</td>
			<td>차종</td>
			<td>대여일수</td>			
		</tr>
		
		for (DeptVO dept : deptMapper.getDeptEmpList()) {
			
			log.info(dept.getLoc() + dept.getDeptno());
			
			for (EmpVO vo : dept.getEmpList()) {
				System.out.println(vo);
			}
		} 
		<c:forEach var="list" items="${transList}">
			
			<tr>
				<td>${list.trans_no}</td>
				<td>${list.trans_sales}</td>

				<td>${list.trans_type}</td>
				<td>${list.trans_date}</td>				
			</tr>
			
		</c:forEach>
		
	</table>
	-->
			</div>
		</div>
		<div class="row">
			<div class="col-1"></div>
			<div class="col-4">
				<div id="text2">
					<h2>저희 매장의 매출을 월별로 나타낸 그래프 입니다.</h2>
					<span style= "font-size: 1.5em;">가장매출이 많이나온 달은</span> <span id="maxM" style="color: rgb(255, 185, 35); font-size: 2em;"></span> <span style= "font-size: 1.5em;">월 입니다</span>
				</div>
			</div>
			<div id="mainarea2" class="col-4">

				<div id="chart_div"></div>

			</div>


		</div>
	</div>

	<footer id="footbar" style="background-color: black;">

		<div class="container col-11">
			<div class="row">
				<div class="col-3">
					<img src="회색로고.png" height="100em" width="100em">
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