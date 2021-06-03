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
        .communty-detail-div{
           
            width: 700px;
            /* border: 2px solid rgb(119, 94, 238); */
            margin-left: 600px;
        }

        .communty-detail-header{
            margin-top: 10px;
            margin-left: 20px;
            height: 60px;
           

        }

        .communty-detail-header > img{
            width: 60px;
            height: 60px;
            border-radius: 20px;
            overflow: hidden;
        }
        
        .communty-info{
            width: 300px;
            display: inline-block;
           
        }

        .communty-info p{
            margin: 10px;
        }

        .communty-info2{
            border: 2px solid rgb(119, 94, 238);
            margin: 20px;
            margin-left: 20px;
            padding: 7px;
            border-radius: 10px;
        }

        .communty-info2 td{
            padding: 5px;
        }
        

        .communty-detail-detail > img{

            width: 680px;
            margin-top: 10px;
            margin-left: 10px;
        }

        .communty-detail-contents{
            margin-top: 10px;
            width: 650px;
            margin-left: 25px;
        }

        .communty-comment-count{
            margin: 20px;
        }

        .communty-comment-count div{
            width: 80px;
            display: inline-block;
            text-align: center;
            
            
        }

        .communty-comment-count p {
            display: inline-block;
            font-size: 20px;
            margin-top: 5px;
            margin-left: 10px;
        }

        .xi-heart-o{
            color: rgb(236, 81, 81);
            
        }

        .xi-heart{
            color: rgb(236, 81, 81);
            
        }

        .communty-comment-regist input[type="text"]{
            border: 1px solid rgb(119, 94, 238);
            line-height: 2;
            margin-left: 80px;
            width: 400px;
        }


        .communty-comment-regist input[type="button"]{
            background-color:  rgb(119, 94, 238);
            line-height: 2;
            border-radius: 5px;
            color: white;
            margin-left: 10px;
            width: 80px;
        }

        .communty-comment-div{
            margin-top: 20px;
            margin-left: 20px;
        }

        .communty-comment{
            border-bottom: 2px solid rgb(119, 94, 238);
            width: 650px;

        }


        .communty-comment img{
            width: 40px;
            height: 40px;
            border-radius: 10px;
            margin: 10px;
        }

        .communty-comment p{
            display: inline-block;
            margin-top: 20px;
        }

        .comment-detail{
            margin-left: 20px;
        }

        .communty-comment input[type="button"]{
            background-color:  rgb(119, 94, 238);
            line-height: 2;
            border-radius: 5px;
            color: white;
            margin-left: 530px;
            margin-top: 10px;
            margin-bottom: 10px;
            width: 80px;

        }


        .response-regist{
            
            width: 630px;
            background-color: rgb(223, 218, 245);
             display: none; 
             padding: 10px;
        }


        .response-regist input[type="text"]{
            border: 1px solid rgb(119, 94, 238);
            line-height: 2;
            margin-top: 10px;
            width: 400px;
        }


        .response-regist input[type="button"]{
            background-color:  rgb(119, 94, 238);
            line-height: 2;
            border-radius: 5px;
            color: white;
            margin-left: 10px;
            width: 80px;
            
        }

        .response-regist i{
            margin-top: 20px;
        }


        .communty-response{
            background-color: rgb(223, 218, 245);
            padding-top: 10px;
            padding-bottom:10px ;
            width: 650px;
            

        }
        .communty-response i{
           margin-top: 20px;
        }


        .communty-response img{
            width: 40px;
            height: 40px;
            border-radius: 10px;
            margin-top: 10px;
            margin-right: 10px;
            margin-bottom: 10px;
        }

        .communty-response p{
            display: inline-block;
            margin-top: 20px;
        }

        .comment-response{
            margin-left: 20px;
        }

        .communty-response-div{
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
        <div class="communty-detail-div">
            <div class="communty-detail-header">
                <img src="빈회원.jpg" alt="">
                <div class="communty-info">
                    <p>이름</p>
                    <p>시간</p>
                </div>
            </div>

            <div class="communty-info2">
                <table>
                    <tr>
                        <td width="100px";>기본정보</td>
                        <td>10평미만 / 원룸</td>
                    </tr>
                    <tr>
                        <td width="100px">주거형태</td>
                        <td>혼자사는집</td>
                    </tr>
                    <tr>
                        <td width="100px">가구/소품비</td>
                        <td>50만원</td>
                    </tr>
                </table>
            </div>

            <div class="communty-detail-detail">
                

        		
            </div>


            <div class="communty-comment-count" > 
                <div><i class="xi-heart-o xi-2x"></i><p>0</p></div>
                <div><i class="xi-comment-o xi-2x"></i><p>0</p></div>
            </div>

             <div class="communty-comment-regist">
                <input type="text"><input type="button" value="등록하기">
             </div>

             <div class="communty-comment-div">

                <div class="communty-comment">
                    <img src="빈회원.jpg" alt="" class="">
                    <p>아이디</p>
                    <p>작성시간</p>
                    <div class="comment-detail">
                        저도 집꾸미는데에 초보지만.. '기타' 사진을 보니.. 옷들이 많아보이는데 행거로 사용하기보다는 비싸지만. 
                        큰 옷장을 사서 거기에 정리해보는것도 괜찮을거같아요..ㅠ 제가 행거 쓰다가 옷장을 샀는데 진짜 방이 엄청 깔끔해졌거든요... 
                        또 고양이를 키우시니 계단형 수납이라고 1단, 2단, 3단 수납함을 구매하셔서 수납 윗칸은 아무것도 올리지 마시고 애들올라가게끔 
                        캣타워용도로 쓰는것도 좋을거같습니다. 만약 캣타워를 사야겠다고 하시면 캣타워보다는 자리를 덜 차지하는 캣폴이 어떠세요..?ㅠㅠ 
                        비싸지만 캣타워에서 캣폴로 변경하니깐 훨씬 공간이 넓어져서 추천해드리고싶어요ㅠㅠ
                    </div>

                     <input type="button" value="답글달기" class="responseBtn">
                     

                    
                        <div class="communty-response-div">
                            <div class="communty-response">
                                <i class="xi-subdirectory"></i><img src="빈회원.jpg" alt="" class="">
                                <p>아이디</p>
                                <p>작성시간</p>
                                <div class="comment-detail">
                                    저도 집꾸미는데에 초보지만.. '기타' 사진을 보니.. 옷들이 많아보이는데 행거로 사용하기보다는 비싸지만. 
                                    큰 옷장을 사서 거기에 정리해보는것도 괜찮을거같아요..ㅠ 제가 행거 쓰다가 옷장을 샀는데 진짜 방이 엄청 깔끔해졌거든요... 
                                    또 고양이를 키우시니 계단형 수납이라고 1단, 2단, 3단 수납함을 구매하셔서 수납 윗칸은 아무것도 올리지 마시고 애들올라가게끔 
                                    캣타워용도로 쓰는것도 좋을거같습니다. 만약 캣타워를 사야겠다고 하시면 캣타워보다는 자리를 덜 차지하는 캣폴이 어떠세요..?ㅠㅠ 
                                    비싸지만 캣타워에서 캣폴로 변경하니깐 훨씬 공간이 넓어져서 추천해드리고싶어요ㅠㅠ
                                </div>
                            </div>
                            <div class="communty-response">
                                <i class="xi-subdirectory"></i><img src="빈회원.jpg" alt="" class="">
                                <p>아이디</p>
                                <p>작성시간</p>
                                <div class="comment-detail">
                                    기본적으로 장판 벽지 문 틀 부터 바꿔야 할것 같습니다...
                                </div>
                            </div>
                            <div class="communty-response">
                                <i class="xi-subdirectory"></i><img src="빈회원.jpg" alt="" class="">
                                <p>아이디</p>
                                <p>작성시간</p>
                                <div class="comment-detail">
                                    가구배치나 인테리어 원하시면 문의 주세요. 제가 도와드릴께요^^ kkkang282@naver.com이예요~
                                </div>
                            </div>
                        </div>

                        <div class="response-regist">
                                <i class="xi-subdirectory"></i><input type="text"><input type="button" value="등록하기">
                        </div>
                </div>

                <div class="communty-comment">
                        <img src="빈회원.jpg" alt="" class="">
                        <p>아이디</p>
                        <p>작성시간</p>
                        <div class="comment-detail">
                            저도 집꾸미는데에 초보지만.. '기타' 사진을 보니.. 옷들이 많아보이는데 행거로 사용하기보다는 비싸지만. 
                            큰 옷장을 사서 거기에 정리해보는것도 괜찮을거같아요..ㅠ 제가 행거 쓰다가 옷장을 샀는데 진짜 방이 엄청 깔끔해졌거든요... 
                            또 고양이를 키우시니 계단형 수납이라고 1단, 2단, 3단 수납함을 구매하셔서 수납 윗칸은 아무것도 올리지 마시고 애들올라가게끔 
                            캣타워용도로 쓰는것도 좋을거같습니다. 만약 캣타워를 사야겠다고 하시면 캣타워보다는 자리를 덜 차지하는 캣폴이 어떠세요..?ㅠㅠ 
                            비싸지만 캣타워에서 캣폴로 변경하니깐 훨씬 공간이 넓어져서 추천해드리고싶어요ㅠㅠ
                        </div>
    
                         <input type="button" value="답글달기" class="responseBtn">
                         
    
                        
                            <div class="communty-response-div">
                                <div class="communty-response">
                                    <i class="xi-subdirectory"></i><img src="빈회원.jpg" alt="" class="">
                                    <p>아이디</p>
                                    <p>작성시간</p>
                                    <div class="comment-detail">
                                        저도 집꾸미는데에 초보지만.. '기타' 사진을 보니.. 옷들이 많아보이는데 행거로 사용하기보다는 비싸지만. 
                                        큰 옷장을 사서 거기에 정리해보는것도 괜찮을거같아요..ㅠ 제가 행거 쓰다가 옷장을 샀는데 진짜 방이 엄청 깔끔해졌거든요... 
                                        또 고양이를 키우시니 계단형 수납이라고 1단, 2단, 3단 수납함을 구매하셔서 수납 윗칸은 아무것도 올리지 마시고 애들올라가게끔 
                                        캣타워용도로 쓰는것도 좋을거같습니다. 만약 캣타워를 사야겠다고 하시면 캣타워보다는 자리를 덜 차지하는 캣폴이 어떠세요..?ㅠㅠ 
                                        비싸지만 캣타워에서 캣폴로 변경하니깐 훨씬 공간이 넓어져서 추천해드리고싶어요ㅠㅠ
                                    </div>
                                </div>
                                <div class="communty-response">
                                    <i class="xi-subdirectory"></i><img src="빈회원.jpg" alt="" class="">
                                    <p>아이디</p>
                                    <p>작성시간</p>
                                    <div class="comment-detail">
                                        기본적으로 장판 벽지 문 틀 부터 바꿔야 할것 같습니다...
                                    </div>
                                </div>
                                <div class="communty-response">
                                    <i class="xi-subdirectory"></i><img src="빈회원.jpg" alt="" class="">
                                    <p>아이디</p>
                                    <p>작성시간</p>
                                    <div class="comment-detail">
                                        가구배치나 인테리어 원하시면 문의 주세요. 제가 도와드릴께요^^ kkkang282@naver.com이예요~
                                    </div>
                                </div>
                            </div>
    
                            <div class="response-regist">
                                    <i class="xi-subdirectory"></i><input type="text"><input type="button" value="등록하기">
                            </div>
                </div>

             </div>





        </div>

          


       
    </section>


    <script>
        $(".responseBtn").click(function(){

            if( $(this).parent().children(".response-regist").css("display") == "none"){
                
                $(this).parent().children(".response-regist").css("display","inline-block");
                $(this).parent().children(".communty-response-div").css("display","inline-block");
            }else{
                $(this).parent().children(".response-regist").css("display","none");
                $(this).parent().children(".communty-response-div").css("display","none");
            }
            
        })

    </script>
</body>
</html>