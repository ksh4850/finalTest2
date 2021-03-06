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
    <style>
        .system-sell-head{
            margin-left: 20px;
            font-size: 30px;
            padding: 15px;
            border-bottom: 2px solid rgb(119, 94, 238) ;
            color: rgb(119, 94, 238);

        }

        .system-sell-searchBar{
            margin-top: 20px;
            margin-bottom: 20px;
            margin-left: 25px;
            font-size: 20px;
           
        }

        .system-sell-searchBar>select{
            border: 2px solid rgb(119, 94, 238);
            font-size: 18px;
        }


        .system-sell-searchBar > input[type="search"] {
            border: 2px solid rgb(119, 94, 238);
            width: 400px;
        }

        .system-sell-searchBar > input[type="button"] {
            font-size: 18px;
            padding: 3px;
            background-color: rgb(119, 94, 238);
        }
       
        

        .system-sell-info{
             margin-left: 15px;
             text-align: center; 
             line-height: 2;
             font-size: 13px;
             
        }

        

        .system-sell-info tr{
            border-bottom: 1px solid  rgb(119, 94, 238) ;
            
            
       }

       .system-sell-info td{
            padding-top: 10px;
            
            
       }

        .first-tr  {
            background: rgb(119, 94, 238);
            padding: 5px;
            color: white;
            
        }
        .first-tr > th:nth-child(1) {border-radius:15px 0 0 15px;}
        .first-tr > th:nth-child(11) {border-radius:0 15px 15px 0;}

        input[type ="search"]{
            width: 300px;
            line-height: 2;
        }

        .system-sell-info input[type="button"]{
           
            border: 1px solid rgb(119, 94, 238);
            border-radius: 5px ;
            color: rgb(47, 16, 201);
            padding: 3px;
        }

        
        .system-sell-page>td{
            border: 1px solid  rgb(119, 94, 238); 
            color: rgb(47, 16, 201);
            padding: 5px;
            
        }

        .system-sell-searchBar > input[type="date"]{
            border: 2px solid  rgb(119, 94, 238); 
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
    <section>
        <div class="system-sell-head">????????????</div>
        <br>
        <div class="system-sell-searchBar" >
            <input type="date" name="startDate" id="startDate" <c:if test="${!empty orderPage.startDate}">value="${orderPage.startDate}"</c:if> > > ~
            <input type="date" name="endDate" id="endDate" <c:if test="${!empty orderPage.endDate}">value="${orderPage.endDate}"</c:if> >
            <select name="dealingStatus" id="dealingStatus" style="margin-left: 300px;">
                <option value="" <c:if test="${empty orderPage.dealingStatus}">selected</c:if> >????????????</option>
                <option value="????????????" <c:if test="${ orderPage.dealingStatus eq '????????????'}">selected</c:if> >????????????</option>
                <option value="????????????" <c:if test="${ orderPage.dealingStatus eq '????????????'}">selected</c:if> >????????????</option>
                <option value="???????????????" <c:if test="${ orderPage.dealingStatus eq '???????????????'}">selected</c:if> >???????????????</option>
                <option value="?????????" <c:if test="${ orderPage.dealingStatus eq '?????????'}">selected</c:if> >?????????</option>
                <option value="??????" <c:if test="${ orderPage.dealingStatus eq '??????'}">selected</c:if> >??????</option>
                <option value="??????/??????" <c:if test="${ orderPage.dealingStatus eq '??????/??????'}">selected</c:if> >??????/??????</option>
            </select>
            <select name="category" id="category" >
                <option value="" <c:if test="${empty orderPage.category}">selected</c:if> >????????????</option>
                <option value="PRCT0001" <c:if test="${orderPage.category eq 'PRCT0001'}">selected</c:if>  >??????/????????????</option>
                <option value="PRCT0002" <c:if test="${orderPage.category eq 'PRCT0002'}">selected</c:if>  >??????/????????????</option>
                <option value="PRCT0003" <c:if test="${orderPage.category eq 'PRCT0003'}">selected</c:if>  >?????????/??????</option>
                <option value="PRCT0004" <c:if test="${orderPage.category eq 'PRCT0004'}">selected</c:if>  >??????/??????</option>
                <option value="PRCT0005" <c:if test="${orderPage.category eq 'PRCT0005'}">selected</c:if>  >??????/??????</option>
                <option value="PRCT0006" <c:if test="${orderPage.category eq 'PRCT0006'}">selected</c:if>  >??????</option>
                <option value="PRCT0007" <c:if test="${orderPage.category eq 'PRCT0007'}">selected</c:if>  >??????/??????</option>
                <option value="PRCT0008" <c:if test="${orderPage.category eq 'PRCT0008'}">selected</c:if>  >??????</option>
                <option value="PRCT0009" <c:if test="${orderPage.category eq 'PRCT0009'}">selected</c:if>  >?????????</option>
                <option value="PRCT0010" <c:if test="${orderPage.category eq 'PRCT0010'}">selected</c:if>  >????????????</option>
            </select>
  
            <select name="condition" id="condition" >
                <option value="" <c:if test="${empty orderPage.condition}">selected</c:if> >??????</option>
                <option value="orderNo" <c:if test="${orderPage.condition eq 'orderNo'}">selected</c:if> >????????????</option>
                <option value="productNo" <c:if test="${orderPage.condition eq 'productNo'}">selected</c:if> >????????????</option>
                <option value="productName" <c:if test="${orderPage.condition eq 'productName'}">selected</c:if> >????????????</option>
                <option value="corpId" <c:if test="${orderPage.condition eq 'corpId'}">selected</c:if> >????????? ID</option>
                <option value="corpName" <c:if test="${orderPage.condition eq 'corpName'}">selected</c:if> >????????? ??????</option>
                <option value="userId" <c:if test="${orderPage.condition eq 'userId'}">selected</c:if> >????????? ID</option>
                <option value="userName" <c:if test="${orderPage.condition eq 'userName'}">selected</c:if> >????????? ??????</option>
            </select>
            <input type="search" name="orderInfoText" id="orderInfoText"  <c:if test="${!empty orderPage.orderInfoText }">value="${orderPage.orderInfoText}"</c:if>  />
            <input type="button" value="??????" id="orderInfoSearchBtn"/>
  
            
        </div>
    
        <br>
    
        <div class="system-sell-info" >
            <table>
                <tr class="first-tr">
                    <th width=100px;>????????????</th>
                    <th width=100px;>?????? ID</th>
                    <th width=160px;>?????????</th>
                    <th width=160px;>????????????</th>
                    <th width=350px;>????????????</th>
                    <th width=100px;>?????????ID</th>
                    <th width=100px;>?????????</th>
                    <th width=100px;>????????????</th>
                    <th width=160px;>????????????</th>
                    <th width=160px;>????????????</th>
                    <th width=100px;>????????????</th>
                 </tr>
                 
                 
                 <c:forEach var="order" items="${requestScope.orderList}">
                 <tr>
                     <td ><c:out value="${order.orderNo }" /></td>
                     <td ><c:out value="${order.corp.corpId }" /></td>
                     <td ><c:out value="${order.corp.corpName }" /></td>
                     <td ><c:out value="${order.product.prodNo }" /></td>
                     <td ><c:out value="${order.product.prodName }" /></td>
                     <td ><c:out value="${order.user.userId }" /></td>
                     <td ><c:out value="${order.user.userName }" /></td>
                     <td ><c:out value="${order.quantity }" /></td>
                     <td ><fmt:formatNumber value="${order.orderPrice }" pattern="\#,###"/></td>
                     <td ><fmt:formatDate value="${order.orderDate }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                     <td ><c:out value="${order.dealingStatus }" /></td>
                 </tr>
                </c:forEach>
                 
            </table>
        </div>

        <br>
        
        
        <div class="pagingArea" align="center">
					<c:if test="${empty orderList }">
          				<h3 >????????? ????????? ????????????.</h3>
          			</c:if>
					<c:if test="${!empty orderList }">
					<button id="startPage"><<</button>
						
					<c:if test="${orderPage.pageInfo.pageNo == 1 }">
						<button disabled><</button>
					</c:if>
					 <c:if test="${orderPage.pageInfo.pageNo > 1 }">
						<button id="prevPage"><</button>
					</c:if>
					
					<c:forEach var="p" begin="${ orderPage.pageInfo.startPage }" end="${ orderPage.pageInfo.endPage }" step="1">
					<c:if test="${ orderPage.pageInfo.pageNo eq p }">
						<button disabled><c:out value="${ p }"/></button>
					</c:if>
					<c:if test="${orderPage.pageInfo.pageNo ne p }">
						<button onclick="pageButtonAction(this.innerText);"><c:out value="${ p }"/></button>
					</c:if>
					</c:forEach>
			
					<c:if test="${ orderPage.pageInfo.pageNo == orderPage.pageInfo.maxPage }">
						<button disabled>></button>	
					</c:if>
					<c:if test="${ orderPage.pageInfo.pageNo < orderPage.pageInfo.maxPage }">
						<button id="nextPage">></button>
					</c:if> 
			
					<button id="maxPage">>></button>
					</c:if>
		</div><!-- pagingArea end -->

       
    </section>
    
    <script >
    
    const link = "${ pageContext.servletContext.contextPath }/system/orderInfo";
    
    
    function pageButtonAction(text) {
		location.href = link + "?currentPage=" + text + "&startDate=${orderPage.startDate}&endDate=${orderPage.endDate }&dealingStatus=${orderPage.dealingStatus}&category=${orderPage.category}&condition=${orderPage.condition}&orderInfoText=${orderPage.orderInfoText}";
	}
    
		$(document).on('click',"#orderInfoSearchBtn" ,function(){
				
				var startDate = $("#startDate").val();
				var endDate = $("#endDate").val();
				var dealingStatus = $("#dealingStatus").val(); 
				var category = $("#category").val(); 
				var condition = $("#condition").val(); 
				var orderInfoText = $("#orderInfoText").val(); 
		
			 location.href = link + "?currentPage=1&startDate=" + startDate +  "&endDate=" + endDate + "&dealingStatus=" + dealingStatus + "&category=" +category + "&condition=" + condition + "&orderInfoText=" + orderInfoText ;    
		})
		
		
	
	$(document).on('click',"#startPage" , function(){
		location.href = link + "?currentPage=1&startDate=${orderPage.startDate}&endDate=${orderPage.endDate }&dealingStatus=${orderPage.dealingStatus}&category=${orderPage.category}&condition=${orderPage.condition}&orderInfoText=${orderPage.orderInfoText}";
	})
	
	$(document).on('click',"#maxPage" , function(){
		location.href = link + "?currentPage=${ orderPage.pageInfo.maxPage }&startDate=${orderPage.startDate}&endDate=${orderPage.endDate }&dealingStatus=${orderPage.dealingStatus}&category=${orderPage.category}&condition=${orderPage.condition}&orderInfoText=${orderPage.orderInfoText}";
	})
	
	$(document).on('click',"#prevPage" , function(){
		location.href = link + "?currentPage=${ orderPage.pageInfo.pageNo - 1 }&startDate=${orderPage.startDate}&endDate=${orderPage.endDate }&dealingStatus=${orderPage.dealingStatus}&category=${orderPage.category}&condition=${orderPage.condition}&orderInfoText=${orderPage.orderInfoText}";
	})
	
	$(document).on('click',"#nextPage" , function(){
		location.href = link + "?currentPage=${ orderPage.pageInfo.pageNo + 1 }&startDate=${orderPage.startDate}&endDate=${orderPage.endDate }&dealingStatus=${orderPage.dealingStatus}&category=${orderPage.category}&condition=${orderPage.condition}&orderInfoText=${orderPage.orderInfoText}";
	})
	    $(function(){
			var date = new Date();
			
			var sysDate = dateformat(date);
			var agoDate = dateformat(new Date(date.setDate(date.getDate() - 14)));
			
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
		
		
		$("#startDate").change(function(){
			
			
			
			var startDate = new Date($(this).val());
			var sysdate = new Date();
			
			if(startDate > sysdate){
				alert("?????? ???????????? ??????  ????????? ??? ????????????.");
				var changdate =  dateformat(sysdate);
				$("#startDate").val(changdate);
			}
	
			
		})
		
		$("#endDate").change(function(){
			
			var startdate = new Date($(this).parent().find("#startDate").val());
			var endDate = new Date($(this).val());
			
			if(startdate > endDate){
				alert("?????? ???????????? ?????? ????????? ??? ????????????.");
				var changdate =  dateformat(new Date());
				$("#endDate").val(changdate);
			}
			
			
			
		})
    
    </script>
</body>
</html>