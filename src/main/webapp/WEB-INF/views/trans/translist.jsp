<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            data.addColumn('string', '인물');
            data.addColumn('number', '취득표');

            // 실제 데이터를 지정 ------------- (※7)    
            data.addRows([
                ['A', 51],
                ['B', 34],
                ['C', 20],
                ['D', 101],
                ['E', 80],
                ['F', 4],
            ]);

            // 그래피의 옵션을 지정 ------- (※8)    
            var opt = {
                'title': '인기투표',
                'width': 600,
                'height': 400,
                
            };
            // 그래프를 표시 ------------- (※9)    
            var chart = new google.visualization.ColumnChart( // ***Chart
                document.getElementById('chart_div'));
            chart.draw(data, opt);
        }

        
        
        
        
        if(result.length < 1){
            htmls.push("등록된 장소가 없습니다.");
         }else{         
            
            $(this.month).each(function() {
               htmls += '<tr>';
               htmls += '<td>' + this.month + '</td>'
               htmls += '<td>' + this.amount +'</td>'; 
             
               htmls += '</tr>';   
               
            });
            
       
         }
         
         $("#list-table").append(htmls);
    </script>



</head>
<body>

	<div id="chart_div"></div>


	<table width="500" border="1">
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
		
		<tr>
			<td colspan="5"> <a href="write_view">글 작성</a></td>
		</tr>
	</table>
	
	



<h1>일단 리스트</h1>
	<table id="list-table" width="500" border="1">
		
	</table>
	
</body>
</html>