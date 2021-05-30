<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"   %>  
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
     <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/reset.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

    <style>
        .system-comSell-head{
            margin-left: 20px;
            font-size: 30px;
            padding: 15px;
            border-bottom: 2px solid rgb(119, 94, 238) ;
            color: rgb(119, 94, 238);

        }

        .system-comSell-sellInfo1 > input[type="text"]{
           font-size: 20px;
           margin-top: 30px;
           margin-left: 90px;
           margin-right: 100px;
        }
        .system-comSell-sellInfo2 > input[type="text"]{
           font-size: 20px;
           margin-top: 10px;
           margin-left: 90px;
           margin-right: 100px;
           border:2px solid rgb(119, 94, 238);
           /* text-align: center; */
        }

   /*      system-comSell-sellInfo1 >  input[type="text"]{
           font-size: 10px;
           margin-top: 30px;
           margin-left: 100px;
           margin-right: 100px;
           display: inline-block;
        }
        .system-comSell-sellInfo2 >  input[type="text"]{
           font-size: 10px;
           margin-top: 10px;
           margin-left: 90px;
           margin-right: 100px;
           border:2px solid rgb(119, 94, 238);
        }  */

        .system-comSell-sellInfo3{
            margin-top: 15px;
            margin-left: 90px;
            width: 1150px;
            height: 300px;
            border: 2px solid rgb(119, 94, 238);
            border-radius: 10px;
        }

        .system-comSell-sellInfo4{
            margin-top: 50px;
            margin-left: 90px;
            width: 1150px;
            height: 300px;

          
        }

        .sellInfo4{   
            width: 550px;
            height: 290px;
            line-height: 2;
            display: inline-block;
            border: 2px solid rgb(119, 94, 238);
            border-radius: 10px;
        }

        

        .sellInfo5{
            display: inline-block;
            border: 2px solid rgb(119, 94, 238);
            width: 550px;
            height: 290px;
            margin-left: 35px;
            border-radius: 10px;

        }
        
        .system-comSell-sellInfo6{
        	   margin-top: 30px;
        	  margin-left: 850px;
        }
        
        .system-comSell-sellInfo6 > input[type="text"]{
            border: 2px solid  rgb(119, 94, 238); 
            width : 150px;
            height: 27px;
            
            
        }
        
        .system-comSell-sellInfo6 > input[type="button"]{
            border: 2px solid  rgb(119, 94, 238); 
            color : rgb(119, 94, 238);
            font-weight: bolder;
            height: 30px;
            padding: 8px ; 
            
            
        }
        
        .system-comSell-sellInfo6 > p{
          	margin-top: 10px;
          	margin-left: 230px;
            color : rgb(247, 62, 49);
            font-size: 11px;
            

            
        }

        .system-comSell-searchBar{
            margin-left: 100px;
            margin-bottom: 50px;

        }

       


        .system-comSell-searchBar > select{
            border: 2px solid rgb(119, 94, 238);
            margin-left: 550px;
            font-size: 22px;
        }


        .system-comSell-searchBar > input[type="search"] {
            border: 2px solid rgb(119, 94, 238);
            width: 400px;
        }

        .system-comSell-searchBar > input[type="button"] {
            font-size: 16px;
            padding: 4px;
            background-color: rgb(119, 94, 238);
            color: white;
        }
        .system-comSell-searchBar > input[type="text"] {
            font-size: 23px;
            width: 350px;
            border: 2px solid rgb(119, 94, 238);
            line-height: 1;
        }

        .system-comSell-info{
             margin-left: 100px;
             text-align: center; 
             line-height: 2;
             margin-top: 10px;
             font-size: 12px;
             
        }

        

        .system-comSell-info tr{
            border-bottom: 1px solid  rgb(119, 94, 238) ;
       }

       .system-comSell-info td{
            padding-top: 10px;

            
       }

        .first-tr  {
            background: rgb(119, 94, 238);
            padding: 5px;
            color: white;
            
        }
        .first-tr > th:nth-child(1) {border-radius:15px 0 0 15px;}
        .first-tr > th:nth-child(9) {border-radius:0 15px 15px 0;}


        .system-comSell-page>td{
            border: 1px solid  rgb(119, 94, 238); 
            color: rgb(47, 16, 201);
            padding: 5px;
            
        }

        .system-comSell-so{
            width: 1100px;
            margin-left: 100px;
            margin-top: 30px;
            color: rgb(119, 94, 238);
            border-bottom:2px solid rgb(119, 94, 238);
            size: 30px;
        }
        
           .pagingArea button{
         	border: 1px solid  rgb(119, 94, 238); 
            color: rgb(47, 16, 201);
            padding: 5px;
        }

    </style>


</head>
<body>

   <header>
		<jsp:include page="../common/systemHeader.jsp"></jsp:include>
    </header>
		
    <aside>
		<jsp:include page="../common/systemNavi.jsp"></jsp:include>
    </aside>
    <section >
        <div class="system-comSell-head">기업 매출내역</div>

        <br>

        <div class="system-comSell-searchBar" >
            
            
            <select name="condition" id="condition">
                <option value="" <c:if test="${empty corpSellPage.condition }">selected</c:if> >전체<option>
                <option value="corpNo" <c:if test="${ corpSellPage.condition eq 'corpNo' }">selected</c:if> >기업회원번호</option>
                <option value="corpId" <c:if test="${ corpSellPage.condition eq 'corpId'}">selected</c:if> >기업회원ID</option>
                <option value="corpName" <c:if test="${ corpSellPage.condition eq 'corpName' }">selected</c:if> >회사이름</option>
            </select>

            <input type="text" id="corpSellText" name="corpSellText" <c:if test="${!empty corpSellPage.corpSellText }">value="${corpSellPage.corpSellText}"</c:if> >
            <input type="button" value="검색하기" id="corpSellSearchBtn">
            

        </div>

        <div class="system-comSell-sellInfo1">
            <input type="text" value="일별 판매금액" readonly/>
            <input type="text" value="월별 판매금액" readonly/>
            
            
            
        </div>
		
        <div class="system-comSell-sellInfo2" >
            <input type="text" readonly  <c:choose>
            	<c:when test="${!empty todaySalse }">value="<fmt:formatNumber value="${todaySalse }" pattern="#,###"/> 원"</c:when>
            	<c:otherwise>value="0"</c:otherwise>
            </c:choose>	 />
            
           
            <input type="text" readonly  <c:choose>
            	<c:when test="${!empty todaySalse }">value="<fmt:formatNumber value="${oneMonthSalse }" pattern="#,###"/> 원"</c:when>
            	<c:otherwise>value="0"</c:otherwise>
            </c:choose>	/>
           
        </div>


        <div class="system-comSell-sellInfo1">
            <input type="text" value="일별 수수료금액" readonly/>
            <input type="text" value="월별 수수료금액" readonly/>
           
            
            <!-- <input type="text" value="년도별 수수료금액" readonly/> -->
        </div>

        <div class="system-comSell-sellInfo2">
            <input type="text" readonly <c:choose>
            	<c:when test="${!empty todaySalse }">value="<fmt:formatNumber value="${todaySalse*0.05 }" pattern="#,###"/> 원"</c:when>
            	<c:otherwise>value="0"</c:otherwise>
            </c:choose> />
            <input type="text" readonly <c:choose>
            	<c:when test="${!empty todaySalse }">value="<fmt:formatNumber value="${oneMonthSalse*0.05 }" pattern="#,###"/> 원"</c:when>
            	<c:otherwise>value="0"</c:otherwise>
            </c:choose> />
           <!--  <input type="text" readonly/> -->
        </div>
        
        
         <div class="system-comSell-sellInfo6">
            <input type="button" id="agoweek" value="<">
            <input type="text" id="startDate" name="startDate" <c:if test="${!empty corpSellPage.startDate }">value="${corpSellPage.startDate}"</c:if> > ~
            <input type="text" id="endDate" name="endDate" <c:if test="${!empty corpSellPage.endDate }">value="${corpSellPage.endDate}"</c:if> >
            <input type="button" value=">" id="nextweek">
            <br>
            <p>통계는 7일 기준입니다.</p>
        </div>

        
        <div class="system-comSell-sellInfo3" id="system-comSell-sellInfo3">
           

        </div>
        
        

        <div class="system-comSell-sellInfo4">
            <div class="sellInfo4" id="sellInfo4">
               
            </div>

            <div class="sellInfo5" id="sellInfo5">
               
            </div>
        </div>

        <div class="system-comSell-so">최근 판매내역</div>
        <br>
        <div class="system-comSell-info" >
          
            <table>
                <tr class="first-tr">
                    <th width=80px;>회원번호</th>
                    <th width=160px;>기업명</th>
                    <th width=80px;>상품번호</th>
                    <th width=300px;>상품이름</th>
                    <th width=100px;>주문번호</th>
                    <th width=100px;>구매자ID</th>
                    <th width=100px;>구매자</th>
                    <th width=100px;>결제금액</th>
                    <th width=100px;>판매일시</th>
                 </tr>
                 <tr>
                     <td >comp0001</td>
                     <td >회사</td>
                     <td >p0001</td>
                     <td >존나 비싼 가구</td>
                     <td >r0001</td>
                     <td >user01</td>
                     <td >김수형</td>
                     <td >10,000,000</td>
                     <td >2021-05-12</td>
                 </tr>
                
                
                 
            </table>

        </div>

        <br>
        <br>

         <div class="pagingArea" align="center">
			
					<button id="startPage"><<</button>
						
					<c:if test="${ requestScope.depositPage.pageInfo.pageNo == 1 }">
						<button disabled><</button>
					</c:if>
					 <c:if test="${ requestScope.depositPage.pageInfo.pageNo > 1 }">
						<button id="prevPage"><</button>
					</c:if>
					
					<c:forEach var="p" begin="${ requestScope.depositPage.pageInfo.startPage }" end="${ requestScope.depositPage.pageInfo.endPage }" step="1">
					<c:if test="${ requestScope.depositPage.pageInfo.pageNo eq p }">
						<button disabled><c:out value="${ p }"/></button>
					</c:if>
					<c:if test="${ requestScope.depositPage.pageInfo.pageNo ne p }">
						<button onclick="pageButtonAction(this.innerText);"><c:out value="${ p }"/></button>
					</c:if>
					</c:forEach>
			
					<c:if test="${ requestScope.depositPage.pageInfo.pageNo == requestScope.depositPage.pageInfo.maxPage }">
						<button disabled>></button>	
					</c:if>
					<c:if test="${ requestScope.depositPage.pageInfo.pageNo < requestScope.depositPage.pageInfo.maxPage }">
						<button id="nextPage">></button>
					</c:if> 
			
					<button id="maxPage">>></button>
		</div><!-- pagingArea end -->

		
   
    </section>
    
    <script >
    
    
		 const link = "${ pageContext.servletContext.contextPath }/system/corpSalesInfo";
			
			
			/* 
			function pageButtonAction(text) {
				location.href = link + "?currentPage=" + text + "&startDate=${depositPage.startDate}&endDate=${depositPage.endDate }" */
			
			$(document).on('click',"#corpSellSearchBtn" ,function(){
				
				var startDate = $("#startDate").val();
				var endDate = $("#endDate").val();
				var condition = $("#condition").val(); 
				var corpSellText = $("#corpSellText").val(); 
				
		
			 location.href = link + "?currentPage=1&startDate=" + startDate +  "&endDate=" + endDate + "&condition=" + condition + "&corpSellText=" +corpSellText ;
			})
			
			
			/* $(document).on('click',"#startPage" , function(){
				location.href = link + "?currentPage=1&startDate=${requestScope.depositPage.startDate}&endDate=${requestScope.depositPage.endDate }&depositSort=${requestScope.depositPage.depositSort}&depositCondition=${requestScope.depositPage.depositCondition}&depositSearchText=${requestScope.depositPage.depositSearchText}";
			})
			
			$(document).on('click',"#maxPage" , function(){
				location.href = link + "?currentPage=${ requestScope.depositPage.pageInfo.maxPage }&startDate=${requestScope.depositPage.startDate}&endDate=${requestScope.depositPage.endDate }&depositSort=${requestScope.depositPage.depositSort}&depositCondition=${requestScope.depositPage.depositCondition}&depositSearchText=${requestScope.depositPage.depositSearchText}";
			})
			
			$(document).on('click',"#prevPage" , function(){
				location.href = link + "?currentPage=${ requestScope.depositPage.pageInfo.pageNo - 1 }&startDate=${requestScope.depositPage.startDate}&endDate=${requestScope.depositPage.endDate }&depositSort=${requestScope.depositPage.depositSort}&depositCondition=${requestScope.depositPage.depositCondition}&depositSearchText=${requestScope.depositPage.depositSearchText}";
			})
			
			$(document).on('click',"#nextPage" , function(){
				location.href = link + "?currentPage=${ requestScope.depositPage.pageInfo.pageNo + 1 }&startDate=${requestScope.depositPage.startDate}&endDate=${requestScope.depositPage.endDate }&depositSort=${requestScope.depositPage.depositSort}&depositCondition=${requestScope.depositPage.depositCondition}&depositSearchText=${requestScope.depositPage.depositSearchText}";
			}) */
			
			
			 $(function(){
		var date = new Date();
		
		var sysDate = dateformat(date);
		var agoDate = dateformat(new Date(date.setDate(date.getDate() - 7)));
		
		console.log($("#startDate").val() == "")
		
		if($("#startDate").val() == ""){
			$("#startDate").val(agoDate);
		}
		
		if($("#endDate").val() == ""){
			$("#endDate").val(sysDate);
		}
		
		
		
		})
		
		function dateformat(date){
			var year = date.getFullYear();
	
		    var month = date.getMonth() + 1;
	
		    if(month<10){
		    	month = '0' + month;
		    }
	
		    var day = date.getDate();
	
		    if(day<10){
		    	day = '0' + day;
		    }
	
			return sysDate = year + "-" + month + "-" + day;
		} 
		
		
		$("#agoweek").click(function(){
			
			
			var startDate = new Date( $(this).parent().find("#startDate").val());
			var endDate =  new Date( $(this).parent().find("#endDate").val());
			
			var startChangDate = dateformat(new Date(startDate.setDate(startDate.getDate() - 7)));
			var endChangDate = dateformat(new Date(endDate.setDate(endDate.getDate() - 7)));
			 
			 $(this).parent().find("#startDate").val(startChangDate);
			 $(this).parent().find("#endDate").val(endChangDate);

			
		})
		
		$("#nextweek").click(function(){
			
			var startDate = new Date( $(this).parent().find("#startDate").val());
			var endDate =  new Date( $(this).parent().find("#endDate").val());
			
			
			
			 var startChangDate = dateformat(new Date(startDate.setDate(startDate.getDate() + 7)));
			 var endChangDate = dateformat(new Date(endDate.setDate(endDate.getDate() + 7)));
			 
			
			 
			 $(this).parent().find("#startDate").val(startChangDate);
			 $(this).parent().find("#endDate").val(endChangDate);
			
			
			
		})
		
	  google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawDaySalseInfo);
      google.charts.setOnLoadCallback(drawDayProductTopInfo);
      google.charts.setOnLoadCallback(drawDayCategoryTopInfo);
      

      function drawDaySalseInfo() {
        
    	  
    	 var endDate =  new Date( $(this).parent().find("#endDate").val());
    	  
    	 var data1 = google.visualization.arrayToDataTable([
             ['일', '매출',  { role: 'style' }],
            <c:choose>
         	<c:when test="${empty daySalseInfo }">
         	 [dateformat(new Date(startDate.setDate(startDate.getDate() - 6))),  0 ,'color: #775eee'],
         	 [dateformat(new Date(startDate.setDate(startDate.getDate() - 5))),  0 ,'color: #775eee'],
         	 [dateformat(new Date(startDate.setDate(startDate.getDate() - 4))),  0 ,'color: #775eee'],
         	 [dateformat(new Date(startDate.setDate(startDate.getDate() - 3))),  0 ,'color: #775eee'],
         	 [dateformat(new Date(startDate.setDate(startDate.getDate() - 2))),  0 ,'color: #775eee'],
         	 [dateformat(new Date(startDate.setDate(startDate.getDate() - 1))),  0 ,'color: #775eee'],
         	 [dateformat(new Date(startDate.setDate(startDate.getDate() ))),  0 ,'color: #775eee'],
	         	
         	</c:when>
         	<c:otherwise>
         	 <c:forEach var="info" items="${daySalseInfo}">
            	 ["${info.sumDate}",  Number("${info.sumPrice}") ,'color: #775eee'],
			   	      
			  </c:forEach> 
         	</c:otherwise>
         </c:choose>
            
            
           ]);

           var options1 = {
             title : '매출 내역',
             vAxis: {title: '매출(원)'},
             hAxis: {title: '일'},
             seriesType: 'bars',
             
            
           };

        var chart = new google.visualization.ComboChart(document.getElementById('system-comSell-sellInfo3'));
        chart.draw(data1, options1);
      }
      
      function drawDayProductTopInfo() {
          
    	  
     	
     	  
     	 var data2 = google.visualization.arrayToDataTable([
              ['일', '상품명',  { role: 'style' }],
           <c:choose>
          	<c:when test="${empty productTopInfo }">
          	
          	[ 1+"번 상품" ,  0 ,'color: #775eee'],
          	[ 2+"번 상품" ,  0 ,'color: #775eee'],
          	[ 3+"번 상품" ,  0 ,'color: #775eee'],
          	[ 4+"번 상품" ,  0 ,'color: #775eee'],
          	[ 5+"번 상품" ,  0 ,'color: #775eee'],
          	
          	</c:when>
          	<c:otherwise>
          	
          	 <c:forEach var="info" items="${productTopInfo}">
             	 ["${info.productName}",  Number("${info.productCount}") ,'color: #775eee'],
 			   	      
 			  </c:forEach> 
             	 
          	</c:otherwise>
          </c:choose>

            ]);

            var options2 = {
              title : '상품 판매 순위',
              vAxis: {title: '판매수량'},
              hAxis: {title: '상품명'},
              seriesType: 'bars',
              
             
            };

         var chart = new google.visualization.ComboChart(document.getElementById('sellInfo4'));
         chart.draw(data2, options2);
       }
      
      
      function drawDayCategoryTopInfo() {
          
    	  
       	
     	  
      	 var data2 = google.visualization.arrayToDataTable([
               ['일', '상품명',  { role: 'style' }],
            <c:choose>
           	<c:when test="${empty categoryTopInfo }">
           	
           	[ 1+"번 상품" ,  0 ,'color: #775eee'],
           	[ 2+"번 상품" ,  0 ,'color: #775eee'],
           	[ 3+"번 상품" ,  0 ,'color: #775eee'],
           	[ 4+"번 상품" ,  0 ,'color: #775eee'],
           	[ 5+"번 상품" ,  0 ,'color: #775eee'],
           	
           	</c:when>
           	<c:otherwise>
           	
           	 <c:forEach var="info" items="${categoryTopInfo}">
              	 ["${info.categoryName}",  Number("${info.categoryCount}") ,'color: #775eee'],
  			   	      
  			  </c:forEach> 
              	 
           	</c:otherwise>
           </c:choose>

             ]);

             var options2 = {
               title : '카테고리별 판매 순위',
               vAxis: {title: '판매수량'},
               hAxis: {title: '카테고리명'},
               seriesType: 'bars',
               
              
             };

          var chart = new google.visualization.ComboChart(document.getElementById('sellInfo5'));
          chart.draw(data2, options2);
        }
		
		
       
    
    </script>
    
</body>
</html>