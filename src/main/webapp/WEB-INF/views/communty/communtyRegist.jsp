<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/reset.css">
    <link rel="stylesheet" href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
   
    <title>Document</title>

    <style>
        .system-communtyRegist-head{
            font-size: 35px;
            margin-left: 300px;
            width: 800px;
            margin-top: 20px;
            border-bottom: 1px solid rgb(119, 94, 238);
            color: rgb(119, 94, 238);
        }


        .communty-regist-info{
            margin-top: 30px;
            font-size: 25px;
            margin-left: 300px;
            color: rgb(119, 94, 238);
        }

        .communty-regist-info select{
            border: 1px solid rgb(119, 94, 238);
            font-size: 20px;
        }

        .communty-regist-info td{
            padding: 10px;
            
        }
        
        .communty-regist-bar{
        margin-top: 30px;
        margin-left: 300px;
        }
        
         .communty-regist-bar input[type="button"]{
         	background-color: rgb(119, 94, 238);
            color: white;
            border-radius: 10px;
            padding: 8px;
         }


        .communty-regist-datail{
            margin-top: 20px;
            margin-left: 300px;
            border: 2px solid rgb(119, 94, 238);
            width:800px;
            height:700px;
            overflow-y: auto; 
            outline-style: none;
             float: left;
            
        }


        textarea{
            display: none;
            overflow-y: auto;
            width: 800px;
            height: auto;
        }

        .communty-regist-btn{
            margin-top: 50px;
            margin-left: 650px;
            clear: both;
        }

        .communty-regist-btn input{
            background-color: rgb(119, 94, 238);
            color: white;
            border-radius: 10px;
            padding: 8px;
        }
        
        
        #imgfile{
        	display: none;
        }
        
        .communty-regist{
            float: left;
        }
        
        .communty-regist-thumb{
            margin-top: 20px;
            margin-left: 30px;
            border: 2px solid rgb(119, 94, 238);
            width: 135px;
            height: auto;
            float: left;
            display: none;
            
        }
        .communty-regist-thumb img{
            margin: 5px;
            width: 120px;
            height: 120px;
            border: 1px solid black;
        }
        
         .communty-regist-thumb img:hover{
            opacity:0.6; 
            color:#ffffff;
            
        }
        
         .thum-div{
            position: relative;
            display: inline-block;
        }

        .thum-div i{
            
            position: absolute;
            right: 15px;
            top: 10px;
        }
         
        
        .detailImg-div{
            position: relative;
           display: inline-block;
        }
        
        .detailImg-div img:hover{
        	 opacity:0.6; 
            color:#ffffff;
        }

        .detailImg-div i{
            
            position: absolute;
            right: 25px;
            top: 10px;
        }
        
        #imgName{
        	display: none;
        }
        
 

    </style>
</head>
<body>
    <header>

    </header>

    <aside>

    </aside>
    <section>
        <div class="system-communtyRegist-head">커뮤니티 등록</div>

        <form action="${ pageContext.servletContext.contextPath }/communty/communtyRegist" method="post" id="communtyRegist">
            <div class="communty-regist-info">
                <table>
                    <tr>
                        <td>주거형태</td>
                        <td>
                            <select name="housingType" id="housingType">
                                <option value="" selected>주거형태</option>
                                <option value="아파트">아파트</option>
                                <option value="주택">주택</option>
                                <option value="빌라">빌라</option>
                                <option value="오피스텔">오피스텔</option>
                                <option value="원룸">원룸</option>
                                <option value="투룸">투룸</option>
                                <option value="옥탑방">옥탑방</option>
                                <option value="이색공간">이색공간</option>
                                <option value="상업공간">상업공간</option>
                                <option value="기타">기타</option>
                            </select>
                        
                            <select name="acreage" id="acreage">
                                <option value="" selected>평수</option>
                                <option value="10평대">10평대</option>
                                <option value="20평태">20평대</option>
                                <option value="30평대">30평대</option>
                                <option value="40평대">40평대</option>
                                <option value="50평대">50평 이상</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>거주형태</td>
                        <td>
                            <select name="residenceType" id="residenceType">
                                <option value=""> 거주형태</option>
                                <option value="혼자사는집">혼자사는집</option>
                                <option value="신혼집">신혼집</option>
                                <option value="반려동물과 함께 사는 집">반려동물과 함께 사는 집</option>
                                <option value="룸메이트와 함꼐 사는 집">룸메이트와 함꼐 사는 집</option>
                                <option value="기타">기타</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>인테리어 비용</td>
                        <td>
                            <select name="cost" id="cost">
                                <option value="">가구/소품비용</option>
                                <option value="50만원 미만">50만원 미만</option>
                                <option value="100만원 미만">100만원 미만</option>
                                <option value="150만원 미만">150만원 미만</option>
                                <option value="300만원 미만">300만원 미만</option>
                                <option value="500만원 미만">500만원 이상</option>
                               
                            </select>
                        </td>
                    </tr>
                </table>
            </div>
            
            <textarea name="postDetail" id="postDetail" cols="30" rows="10"></textarea>
            
			<div class="communty-regist-bar">
			<input type="button" id="fileBtn" value="이미지업로드">
			</div>
			 
			<div class="communty-regist">
			
	            <div class="communty-regist-datail" id="detail" contentEditable="true" >
	               
	            </div>
	            
	            <div class="communty-regist-thumb">
	              
	            </div>
            </div> 


            <div class="communty-regist-btn">
                <input type="button" name="" id="tt" value="등록취소">
                <input type="button" name="" id="postSubmit" value="등록하기">
            </div>

				<input type="text" name="imgName" id="imgName" >
				<input type="file" name="imgfile" id="imgfile" multiple>
        </form>
        
        
    </section>
    
    
    <script type="text/javascript">
    	document.execCommand('defaultParagraphSeparator', false, 'p');
    	
    	$(function(){
    		$("#detail").append("<p>&nbsp;</p>");
    	})
    	
    	$("#fileBtn").click(function(){
    		
    		$("#imgfile").click();
    	})
    	
    	$(function(){
    		
    		
    		
		  $("#imgfile").change(function(){
			
			var formData = new FormData();
			var inputFile = $('#imgfile');
			var files=inputFile[0].files;
			
			
			
			for(var i = 0 ; i < files.length ; i++){
				formData.append('uploadFiles', files[i]);
			}
			
			var reURL = '${ pageContext.servletContext.contextPath }/communty/imgUpload';
			
			
			$.ajax({
				contentType : false,				// 필수, application/x-www-form-urlencoded : true, multipart/form-data : false
				processData : false,				// 필수, get 방식 : true, post 방식 : false
				enctype : 'multipart/form-data',	// 필수
				data : formData,					// 필수
				url : reURL,
				type : 'POST',
				success : function(data){
					
						
						if($(".communty-regist-thumb").css("display")  == "none"){
							$(".communty-regist-thumb").css("display","inline");
						}
						
						
						var $detail = $("#detail");
						var $thumb = $(".communty-regist-thumb");
						
						
						
						
						for(var i in data){
							
							var $thumDiv  =$("<div class='thum-div'>");
							var $detailImgDiv  =$("<div class='detailImg-div'>");
							var $itag1 = $('<i class="xi-close xi-2x">');
							var $itag2 = $('<i class="xi-close xi-2x">');
							var $detailImg = $('<img class="detailImg">').attr('src','${ pageContext.servletContext.contextPath }/resources/uploadFiles/'+data[i].saveName).css("width","500px").css("height","500px");
							var $thumbImg = $('<img class="thumbImg">').attr('src','${ pageContext.servletContext.contextPath }/resources/uploadFiles/'+data[i].saveName).css("width","120px").css("height","120px");
							
							$detailImgDiv.append($detailImg).append($itag1);
							$detail.append($detailImgDiv);
							
							$thumDiv.append($thumbImg).append($itag2);
							$thumb.append($thumDiv);
							
						} 
						
						
					}
				});
			});  
		});
    	
    	
    	
    	$("#postSubmit").click(function(){
       	 
       	 var $re =  $("#detail").html();
       	 $("#postDetail").val($re); 
       	 var txt = $("#postDetail").val();
       	 
       	var arr = new Array() ;
      	 $(".detailImg").filter(function(){
      		var i = $(this).attr("src");
      		var re = i.substring(i.lastIndexOf("/"));
      		
      		arr.push(re.substring(1));         
        }) 
        
     console.log(arr);
       	 
       	 $("#imgName").val(arr);
       	 console.log($("#imgName").val());
       	 
       	 $("#communtyRegist").submit();

        })
        
        $("#tt").click(function(){
        	 console.log("하이!!!"); 
			
        	 /* originFileName.substring(originFileName.lastIndexOf(".")) */
        	 
        	 var arr = new Array() ;
           	 $(".detailImg").filter(function(){
           		var i = $(this).attr("src");
           		var re = i.substring(i.lastIndexOf("/"));
           		
           		arr.push(re.substring(1));         
             }) 
             
          console.log(arr);
           	 
           	 $("#imgName").val(arr);
           	 console.log($("#imgName").val());
        })
        
        $(document).on('click',".thum-div i" , function(){

                var saveName =  $(this).parent().find("img").attr("src");
                $(this).parent().remove();
                $(".detailImg").filter(function(){
                    return $(this).attr("src") == saveName;          
                 }).parent().remove();

                 
                 
                 $.ajax({
                	 type:"GET",
              	   	  url: "${ pageContext.servletContext.contextPath}/communty/ajaxDelete",
              	      data: {saveName:saveName},
              	   success:function(data){
              		   var length =  $(".thumbImg").length;
              		    if(length == 0 ){
              		    	$(".communty-regist-thumb").css("display","none");
              		    }
              		   
              		   alert(data);
              		   
              	   },
              	   error:function(error){
              		   
              	   }
                 })
                 
                 

            })
		  
          $(document).on('click',".detailImg-div i" , function(){

            var saveName =  $(this).parent().find("img").attr("src");
            var reSaveName = saveName;
            $(this).parent().remove();
            $(".thumbImg").filter(function(){
                return $(this).attr("src") == saveName;          
            }).parent().remove();

           
            
            
            $.ajax({
           	 type:"GET",
         	   	  url: "${ pageContext.servletContext.contextPath}/communty/ajaxDelete",
         	      data: {saveName:saveName},
         	   success:function(data){
         		  var length =  $(".thumbImg").length;
        		  if(length == 0 ){
        		    	$(".communty-regist-thumb").css("display","none");
        		    }
         		   alert(data);
         		   
         	   },
         	   error:function(error){
         		   
         	   }
            })

            })
            
            
            
            
            
        
        
        
        
        
    </script>
</body>
</html>