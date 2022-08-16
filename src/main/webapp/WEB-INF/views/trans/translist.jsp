<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!-- C태그 쓰기 위해 넣은 taglib므로 반드시 확인 --> 
  
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>


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
                'title': '회사별 거래비율',
                'width': 600,
                'height': 400,
                pieSliceText: 'percentage', // label:이름 . vaule:실제값
                legend: { // 범례
                    position: 'right',
                    textStyle: {
                        color: 'blue',
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
            data.addColumn('string', '월');
            data.addColumn('number', '수익');

            // 실제 데이터를 지정 ------------- (※7)    
            data.addRows([
                <c:forEach var="transMonth" items="${month}">
	   				['${transMonth.month} 월' , ${transMonth.earn}],             
   				</c:forEach>
                
            ]);

            // 그래피의 옵션을 지정 ------- (※8)    
            var opt = {
                'title': '매출',
                'width': 600,
                'height': 400,
                
            };
            // 그래프를 표시 ------------- (※9)    
            var chart = new google.visualization.ColumnChart( // ***Chart
                document.getElementById('chart_div'));
            chart.draw(data, opt);
        }

        
   
    });
    </script>


<meta name="viewport" content="width=device-width, initial-scale=1.0">
  
    <title>Home | E-Shopper</title>
    
    	<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
	
	
	
	<style type="text/css">
		#headerpotal{
			text-align: center;
			font-size: 1.5em;
			line-height: 4em;
			
		}
		#headlogin{
			text-align: center;
			line-height: 4em;
			
		}
		#upperbar{
			text-align: center;
		}
		#footbar{
			text-align: center;
		}
		#foottxt{
			color: gray;
			line-height: 2em;
			font-size: 1em;
		}
		#mainarea{
			margin: 0 auto;
		}
	</style>





</head>
<body>

<div class="container col-12" id="headbar" style="background: gray;">
		<div class="row">
			<div class="col-3"><a id="headlogo" href="/main"><img src="투명로고.png" height="100em"></a></div>
			
			<table  class="col-4" id="headerpotal">
				<tr>
					<td class="col-3"><a href="#"><img src="마이페이지.png" width="100em"></a></td>
					<td class="col-3"><a href="#"><img src="예약.png" width="100em"></a></td>
					<td class="col-3"><a href="#"><img src="고객지원.png" width="100em"></a></td>
					<td class="col-3"><a href="#"><img src="후기.png" width="100em"></a></td>
				</tr>
			</table>
			
			<div class="col-2">
				
			</div>
			<div id="headlogin" class="col-2">
			<a href="#"><img src="로그인.png" width="100em"></a>
			<a href="#"><img src="회원가입.png" width="100em"></a>
			</div>
		</div>
	</div>


<div class="container">
<div class="col-4"></div>
<div id="mainarea" class="col-4">
	<div id="pieChart_div"></div>
	<div id="chart_div"></div>
	<div><a href="admin/transEdit">데이터 관리</a></div>

	<table id="ta" width="500" border="1">
		<tr>
			<td>번호</td>
			<td>이익</td>
			<td>차종</td>
			<td>대여일수</td>			
		</tr>
		
<!-- 		for (DeptVO dept : deptMapper.getDeptEmpList()) {
			
			log.info(dept.getLoc() + dept.getDeptno());
			
			for (EmpVO vo : dept.getEmpList()) {
				System.out.println(vo);
			}
		} -->
		<c:forEach var="list" items="${transList}">
			
			<tr>
				<td>${list.trans_no}</td>
				<td>${list.trans_sales}</td>

				<td>${list.trans_type}</td>
				<td>${list.trans_date}</td>				
			</tr>
			
		</c:forEach>
		
	</table>
</div>
</div>

<footer id="footbar" style="background-color: black;">
		
		<div class="container col-11">
			<div class="row">
				<div class="col-3"><img src="회색로고.png" height="100em" width="100em"></div>
				<div id="foottxt" class="col-9">
					<div>프로젝트 가볼카 | 대표이사: 정다은 | 제주도 가볼길 001호</div>
					<div>사업자등록번호 : 010-11-11122 | 통신판매신고번호: 제2022-제주서귀포-0001호 | TEL: 1111-1111 | Fax:000-000-0000 | Project@Gavolcar.co.kr</div>
					<div>COPYRIGHT©GAVOLCAR.ALL.RIGHTS.RESERVED</div>
					
				</div>
			</div>
		</div>

	</footer><!--/Footer-->
	

  
    <script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.scrollUp.min.js"></script>
	<script src="js/price-range.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/main.js"></script>

	
</body>
</html>