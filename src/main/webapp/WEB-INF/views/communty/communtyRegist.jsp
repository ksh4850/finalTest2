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
            margin-top: 150px;
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
            height:600px;
            overflow-y: auto; 
            outline-style: none;
            float: left; 
            /* position: absolute;
            z-index:1; */
          
             
            
        }
        
        .communty-regist-datail *{
        	margin : 5px;
        	
        }


        textarea{
            display: none;
            overflow-y: auto;
            width: 800px;
            height: auto;
        }

        .communty-regist-btn{
            margin-top: 700px;
            margin-left: 630px;
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
            display: none;
            position: absolute;
            right: 25px;
            top: 10px;
        }
        
        #reName{
        	display: none;
        }
        
        #originName{
        	display: none;
        }
        
        #imgMenuBar{
        	border: 2px solid rgb(119, 94, 238);
        	background-color: rgb(119, 94, 238);
            display: none;
            top: 100px;
            left: 100px;
            z-index: 3;
            position: absolute;
            
        }
        
        .b1{
         	line-height: 2;
         	
         }

        
 

    </style>
</head>
<body>
    <header>
	<jsp:include page="../common/header.jsp"/>

    </header>

    <aside>

    </aside>
    <section>
   
        <div class="system-communtyRegist-head">???????????? ??????</div>

        <form action="${ pageContext.servletContext.contextPath }/communty/communtyRegist" method="post" id="communtyRegist">
            <div class="communty-regist-info">
                <table>
                    <tr>
                        <td>????????????</td>
                        <td>
                            <select name="housingType" id="housingType">
                                <option value="" selected>????????????</option>
                                <option value="?????????">?????????</option>
                                <option value="??????">??????</option>
                                <option value="??????">??????</option>
                                <option value="????????????">????????????</option>
                                <option value="??????">??????</option>
                                <option value="??????">??????</option>
                                <option value="?????????">?????????</option>
                                <option value="????????????">????????????</option>
                                <option value="????????????">????????????</option>
                                <option value="??????">??????</option>
                            </select>
                        
                            <select name="acreage" id="acreage">
                                <option value="" selected>??????</option>
                                <option value="10??????">10??????</option>
                                <option value="20??????">20??????</option>
                                <option value="30??????">30??????</option>
                                <option value="40??????">40??????</option>
                                <option value="50??????">50??? ??????</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>????????????</td>
                        <td>
                            <select name="residenceType" id="residenceType">
                                <option value=""> ????????????</option>
                                <option value="???????????????">???????????????</option>
                                <option value="?????????">?????????</option>
                                <option value="??????????????? ?????? ?????? ???">??????????????? ?????? ?????? ???</option>
                                <option value="??????????????? ?????? ?????? ???">??????????????? ?????? ?????? ???</option>
                                <option value="??????">??????</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>???????????? ??????</td>
                        <td>
                            <select name="cost" id="cost">
                                <option value="">??????/????????????</option>
                                <option value="50?????? ??????">50?????? ??????</option>
                                <option value="100?????? ??????">100?????? ??????</option>
                                <option value="150?????? ??????">150?????? ??????</option>
                                <option value="300?????? ??????">300?????? ??????</option>
                                <option value="500?????? ??????">500?????? ??????</option>
                               
                            </select>
                        </td>
                    </tr>
                </table>
            </div>
            
            <textarea name="postDetail" id="postDetail" cols="30" rows="10"></textarea>
            
			<div class="communty-regist-bar">
			<button type="button"  id="bold"><i class="xi-bold xi-2x" ></i></button>
			<button type="button"  id="italic"><i class="xi-italic xi-2x" ></i></button>
			<button type="button"  id="underline"><i class="xi-underline xi-2x" ></i></button>
			<button type="button"  id="justifyLeft"><i class="xi-align-left xi-2x" ></i></button>
			<button type="button"  id="justifyCenter"><i class="xi-align-center xi-2x" ></i></button>
			<button type="button"  id="justifyRight"><i class="xi-align-right xi-2x" ></i></button>
			
			<select id="fontSize">
				<option value="7">30px</option>		
				<option value="6">20px</option>		
				<option value="5">16px</option>		
				<option value="4">12px</option>		
				<option value="3">10px</option>		
				<option value="" selected> -- </option>		
			</select>
			
			 <i class="xi-image-o xi-2x" id="fileBtn"></i>
			
			<!-- <input type="button" id="Btn" value="??????????????????"> -->
			</div>
			 
			<div class="communty-regist">
			
	            <div class="communty-regist-datail" id="detail" contentEditable="true" >
	               
	            </div>
	            
	            <div class="communty-regist-thumb">
	              
	            </div>
		</div>
			  

            <div class="communty-regist-btn">
                <input type="button" name="" id="tt" value="????????????">
                <input type="button" name="" id="postSubmit" value="????????????">
            </div>

				<input type="text" name="reName" id="reName" >
				<input type="text" name="originName" id="originName" >
				<input type="file" name="imgfile" id="imgfile" multiple>
        </form>
        
        
		       <div id="imgMenuBar">
		        <button type="button" id="imgMenuLeft"><i class="xi-align-left xi-2x" ></i></button>
		        <button type="button" id="imgMenucenter"><i class="xi-align-center xi-2x" ></i></button>
		        <button type="button" id="imgMenuRight"><i class="xi-align-right xi-2x" ></i></button>
		        <button type="button" id="imgMenu50"><b class="b1">50%</b></button>
		        <button type="button" id="imgMenu100"><b class="b1">100%</b></button>
		        <button type="button" id="imgMenuFull"><b class="b1">full</b></button>
		        <button type="button" id="imgMenuDelete"><i class="xi-trash xi-2x"></i></button>
		        <button type="button" id="imgMenuClose"><i class="xi-close xi-2x"></i></button>
		      
		    </div>
     
    </section>
    
    
    <script >
    
    	
    document.execCommand('defaultParagraphSeparator', false, 'p');
    	
    	
    	$(function(){
    		$("#detail").append("<p>&nbsp;</p>");
    		
    		
			$("#bold").click(function(e){
        		
        		e.stopPropagation();
        		document.execCommand('bold', false, true);
        	})
        	
        	$("#italic").click(function(e){
        		
        		e.stopPropagation();
        		document.execCommand('italic', false, true);
        	})
        	
        	$("#underline").click(function(e){
        		
        		e.stopPropagation();
        		document.execCommand('underline', false, true);
        	})
        	
        	$("#fontSize").change(function(){
        		document.execCommand('fontSize', false, $(this).val());
        	})
        	
    		
    		$("#justifyLeft").click(function(){
        		
    			document.execCommand('justifyLeft');
        		
        	})
        	
        	$("#justifyCenter").click(function(e){
        		
        		e.stopPropagation();
        		document.execCommand('justifyCenter');
        	})
        	
        	$("#justifyRight").click(function(){
        		
        		document.execCommand('justifyRight');
        	})
    		
    	})
    	

    	$("#fileBtn").click(function(){
    		
    		$("#imgfile").click();
    	})
    	
    	
    	
    	
    	
    	$(function(){
    		
    		
    		
		  $("#imgfile").change(function(){
			  
			var imgLangth =  $(".detailImg").length;
			
				
			var formData = new FormData();
			var inputFile = $('#imgfile');
			var files=inputFile[0].files;
			
			
			
			for(var i = 0 ; i < files.length ; i++){
				formData.append('uploadFiles', files[i]);
			}
			
			var reURL = '${ pageContext.servletContext.contextPath }/communty/imgUpload';
			
			
			$.ajax({
				contentType : false,				// ??????, application/x-www-form-urlencoded : true, multipart/form-data : false
				processData : false,				// ??????, get ?????? : true, post ?????? : false
				enctype : 'multipart/form-data',	// ??????
				data : formData,					// ??????
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
							var $itag1 = $('<i class="xi-close xi-2x">').css('display',"none");
							var $itag2 = $('<i class="xi-close xi-2x">');
							var $detailImg = $('<img class="detailImg" >').attr('src','${ pageContext.servletContext.contextPath }/resources/uploadFiles/'+data[i].reName).css("width","500px").css("height","500px").attr('data-filename',data[i].originFileName);
							var $thumbImg = $('<img class="thumbImg">').attr('src','${ pageContext.servletContext.contextPath }/resources/uploadFiles/'+data[i].reName).css("width","120px").css("height","120px");
							
							/* $detailImgDiv.append($detailImg).append($itag1).append("<p>&nbsp;</p>"); */
							$detail.append($detailImg);
							
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
       	 
       	var reNameArr = new Array() ;
       	var originNameArr = new Array() ;
      	 $(".detailImg").filter(function(){
      		var reName = $(this).attr("src");
      		 var originName = $(this).attr("data-filename"); 
      		var re = reName.substring(reName.lastIndexOf("/"));
      		
      		
      		reNameArr.push(re.substring(1));         
      		 originNameArr.push(originName);    
        }) 
        
	     	console.log(reNameArr);
	     	 console.log(originNameArr); 
       	 
       	  $("#reName").val(reNameArr);
       	  $("#originName").val(originNameArr); 
       	 
       	  if(reNameArr.length > 0){
       		$("#communtyRegist").submit();
       	  }else{
       		  alert("????????? ??????????????????");
       	  }
       	  
       	 
       	 

        })
        
        $("#tt").click(function(){
        	
			
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
        
        
        
        //????????? ????????? ??????
        $(document).on('click',".thum-div i" , function(){

                var reName =  $(this).parent().find("img").attr("src");
                $(this).parent().remove();
                $(".detailImg").filter(function(){
                    return $(this).attr("src") == reName;          
                 }).remove();

                 
                 
                  $.ajax({
                	 type:"GET",
              	   	  url: "${ pageContext.servletContext.contextPath}/communty/ajaxDelete",
              	      data: {reName:reName},
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
			
		  
		
			var arrImg1 = new Array();
    		
    		$(document).on("click", ".detailImg", function (e) {
    			
    		
				    	
				    	const $img = $(this); 
				    	const imgsrc =  $img.attr('src');
				    	
				    	arrImg1.unshift(imgsrc);
				    	/* console.log(imgsrc);
				    	console.log(arrImg1);  */
				    	
		            	 var isTrue = false;
		            	 
		            	 x = e.pageX;
		                 y = e.pageY; 
		                 
		                 $("#imgMenuBar").css('top',y).css('left',x).css('display','inline-block'); 
		                 
				    });
    		
    		
    		
    		//???????????? ????????? ????????? ?????? ??????
    		$('.communty-regist-datail').click(function(){
    			$("#imgMenuBar").css('top','0').css('left','0').css('display','none');
    		})
    		
    		//????????? ????????????
    		$("#imgMenuLeft").click(function(e){
       		 
				
    		 
    			  $(".detailImg").filter(function(){
                      return $(this).attr("src") == arrImg1[0];          
                   }).css('float','left');
     		
    			  arrImg1=[];
     		
     	 	}) 
     	 
     	 	//????????? ??????
     	 	$("#imgMenucenter").click(function(e){
        		 
					

  			  $(".detailImg").filter(function(){
                    return $(this).attr("src") == arrImg1[0];          
                 }).css('margin-left','auto').css('margin-right','auto').css('margin-left','auto');
         		
  			 	arrImg1=[];
         		
         	 }) 
         	 
         	 //????????? ????????? ??????
         	 $("#imgMenuRight").click(function(e){
        		 

   			  $(".detailImg").filter(function(){
                     return $(this).attr("src") == arrImg1[0];          
                  }).css('float','right');
         		
   			 arrImg1=[];
         		
         	 }) 
    		
    		//????????? ?????? 50?????????
    		$("#imgMenu50").click(function(e){
        		 
    			$(".detailImg").filter(function(){
                    return $(this).attr("src") == arrImg1[0];          
                 }).css('width','250px').css("height","250px");
         		
    			 arrImg1=[];
         		
         	 }) 
             
             //????????? ????????????
				$("#imgMenu100").click(function(e){
         		 
         		
         		 
					$(".detailImg").filter(function(){
	                    return $(this).attr("src") == arrImg1[0];          
	                 }).css('width','500px').css("height","500px");
					 arrImg1=[];
         		
         	 }) 
             
             //????????? ?????? ????????????
        	 $("#imgMenuFull").click(function(e){
         		 

   			  $(".detailImg").filter(function(){
                     return $(this).attr("src") == arrImg1[0];          
                  }).css('width','800px').css("height","500px");
   			 	arrImg1=[];
         		
         	 }) 

             //????????? ????????? ??????
         	 $("#imgMenuClose").click(function(e){
         		 
         		 
         		 $("#imgMenuBar").css('top','0').css('left','0').css('display','none');
         		 arrImg1=[];
         		
         	 })
			
             
             //????????? ????????? ????????? ??????
         	 $("#imgMenuDelete").click(function(e){  
         		 
         		 var reName =  
    			  $(".detailImg").filter(function(){
                      return $(this).attr("src") == arrImg1[0];          
                   }).attr('src');
         		 
         		 console.log(reName);
         		 
         		  $(".detailImg").filter(function(){
                       return $(this).attr("src") == reName;          
                   }).remove();
    	             
    		       $(".thumbImg").filter(function(){
    		                return $(this).attr("src") == reName;          
    		       }).parent().remove(); 
    		        
    	    		 
    	            $.ajax({
    	           	 type:"GET",
    	         	   	  url: "${ pageContext.servletContext.contextPath}/communty/ajaxDelete",
    	         	      data: {reName:reName},
    	         	   success:function(data){
    	         		   
    	         		   console.log(data);
    	         		   
    	         		  var length =  $(".thumbImg").length;
    	         		  
    	        		  if(length == 0 ){
    	        		    	$(".communty-regist-thumb").css("display","none");
    	        		    }
    	         		  
    	         		   
    	         		   $("#imgMenuBar").css('top','0').css('left','0').css('display','none');
    	         		  	arrImg1=[];
    	         	   },
    	         	   error:function(error){
    	         		   
    	         	   }
    	            }) 
    	            
         	 }) 

         	 //?????? ????????? ??????
         	 $(".communty-regist-datail").keyup(function(e){
         		 
         		 
	             var detailImgLength = $('.detailImg').length;
	 			 /* var detailImgArr = new Array();    */      			
	 			 var thumbImgArr = new Array();         			
	 			 var thumbImgLength =  $(".thumbImg").length;
	         		 
	 			 	//????????? ?????? ????????? ?????????
	         		 if(e.keyCode == 46){
	         	
	         			 if(detailImgLength != thumbImgLength && thumbImgLength > 0){
	         				 
	         				for(var i = 0 ; i < thumbImgLength ; i++){
	         					thumbImgArr.push( $('.thumbImg').eq(i).attr('src') );
		         				 
		         			}
	         				
	         				for(var i = 0; i < detailImgLength ; i++ ){
	         					var img = thumbImgArr.indexOf($('.detailImg').eq(i).attr('src'));
	         					thumbImgArr.splice(img,1);
	         				}
	         				
	         				keyImgDelete(thumbImgArr[0]);
	         				 
	         			 }
		         			
	         			 
	         			
	         			 
	         			
	         		 }
	         		 //?????????????????? ????????? ?????????
	         		 if(e.keyCode == 8){
	         			 
	         			 if(detailImgLength != thumbImgLength && thumbImgLength > 0){
	         				 
		         				for(var i = 0 ; i < thumbImgLength ; i++){
		         					thumbImgArr.push( $('.thumbImg').eq(i).attr('src') );
			         				 
			         			}
		         				
		         				for(var i = 0; i < detailImgLength ; i++ ){
		         					var img = thumbImgArr.indexOf($('.detailImg').eq(i).attr('src'));
		         					thumbImgArr.splice(img,1);
		         				}
		         				
		         				keyImgDelete(thumbImgArr[0]);
		         				 
		         			 }
	         			 
	         		 }
         	 })
         	 
         	 
         	 
         	 function keyImgDelete(re){
    			
    			
    			   var reName =  re;
    			
		    	   $(".thumbImg").filter(function(){
			                return $(this).attr("src") == reName;          
			       }).parent().remove(); 
			        
		    		 
		            $.ajax({
		           	 type:"GET",
		         	   	  url: "${ pageContext.servletContext.contextPath}/communty/ajaxDelete",
		         	      data: {reName:reName},
		         	   success:function(data){
		         		   
		         		   console.log(data);
		         		   
		         		  var length =  $(".thumbImg").length;
		         		  
		        		  if(length == 0 ){
		        		    	$(".communty-regist-thumb").css("display","none");
		        		    }
		         		  
		         		   
		         		   $("#imgMenuBar").css('top','0').css('left','0').css('display','none');
		         		  	arrImg1=[];
		         	   },
		         	   error:function(error){
		         		   
		         	   }
		            }) 
    		}
       
			
    	
    	
    	
    	
       
       

            	
 
            
            
            

            
            
            
        
        
        
        
        
    </script>
</body>
</html>