<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/reset.css">
    <link rel="stylesheet" href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
   
    <style>

        .communty-list-div{
            border: 2px solid rgb(119, 94, 238);
            width: 700px;
            margin-left: 450px;
            margin-top: 20px;
            border-radius: 10px;
        }

        .communty-list-info{
            margin-top: 10px;
            margin-left: 20px;
            height: 60px;
           

        }
        
        .communty-info{
            width: 300px;
            display: inline-block;
           
        }

        .communty-info p{
            margin: 10px;
        }


        .communty-list-info > img{
            width: 60px;
            height: 60px;
            border-radius: 20px;
            overflow: hidden;
        }

        .communty-list-imgOne img {
            margin-top: 10px;
             width: 690;
             height: 500px;
             overflow: hidden;
             
        }

        .communty-list-detail{
            margin-top: 10px;
            margin-left: 20px;
            margin-bottom: 10px;
            width: 650px;
        }

        .communty-list-imgTwo{
            display: inline-block;
        }

        .communty-list-imgTwo img{
            margin-left: 10px;
            margin-top: 10px;
            width: 330px;
            height: 400px;
        }
        .communty-list-imgThree{
            margin-top: 10px;
            display: inline-block;
        }

        .communty-list-imgThree img:nth-child(1){
            margin-left: 10px;
            width: 680px;
            height: 300px;

        }

        .communty-list-imgThree img:nth-child(2){
            width: 330px;
            height: 300px;
            margin-top: 10px;
            margin-left: 10px;
        }

        .communty-list-imgThree img:nth-child(3){
            width: 330px;
            height: 300px;
            margin-top: 10px;
            margin-left: 10px;
        }

        .communty-list-count{
            margin-top: 20px;
            margin-bottom: 20px;
        }

        .communty-list-count div{
            width: 150px;
            display: inline-block;
            text-align: center;
            
            
        }

        .communty-list-count p {
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
        
    </style>
</head>

 
<body>
    <header>

    </header>

    <aside>

    </aside>
    <section>
        <div class="communty-list-div">
            <div class="communty-list-info">
                <img src="빈회원.jpg" alt="">
                <div class="communty-info">
                    <p>이름</p>
                    <p>시간</p>
                </div>
            </div>
            <div class="communty-list-imgOne">
                <img src="flower1.PNG" alt="">
            </div>
            <div class="communty-list-detail">
                시험 공부를 준비중인데
                심플하면서도 살짝 파스텔톤의 핑크빛 느낌의 가구 배치를 하고 싶어요 ㅠㅠ
                그런데 원룸 구조가 앞뒤로 다 주방이나 화장실, 현관 문이 있어서 가구 배치를 도저히 어떻게 하면 좋을지 모르겠어요..
                정말 예쁘게 오래 거주할 곳이라 이번에 예쁘게 인테리어 해보고 싶은데 도와주세요ㅠ
            </div>
            <div class="communty-list-count" align="center"> 
                <div><i class="xi-heart xi-2x"></i><p>0</p></div>
                <div><i class="xi-comment-o xi-2x"></i><p>0</p></div>
            </div>
           
        </div>

        <div class="communty-list-div">
            <div class="communty-list-info">
                <img src="빈회원.jpg" alt="">
                <div class="communty-info">
                    <p>이름</p>
                    <p>시간</p>
                </div>
            </div>
            <div class="communty-list-imgTwo">
                <img src="flower1.PNG" alt="" class="">
                <img src="flower1.PNG" alt="" class="">
            </div>
            <div class="communty-list-detail">
                시험 공부를 준비중인데
                심플하면서도 살짝 파스텔톤의 핑크빛 느낌의 가구 배치를 하고 싶어요 ㅠㅠ
                그런데 원룸 구조가 앞뒤로 다 주방이나 화장실, 현관 문이 있어서 가구 배치를 도저히 어떻게 하면 좋을지 모르겠어요..
                정말 예쁘게 오래 거주할 곳이라 이번에 예쁘게 인테리어 해보고 싶은데 도와주세요ㅠ
            </div>

            <div class="communty-list-count" align="center"> 
                <div><i class="xi-heart-o xi-2x"></i><p>0</p></div>
                <div><i class="xi-comment-o xi-2x"></i><p>0</p></div>
            </div>
          
        </div>
        <div class="communty-list-div">
            <div class="communty-list-info">
                <img src="빈회원.jpg" alt="">
                <div class="communty-info">
                    <p>이름</p>
                    <p>시간</p>
                </div>
            </div>
            <div class="communty-list-imgThree">
                <img src="flower1.PNG" alt="" class="">
                <img src="flower1.PNG" alt="" class="">
                <img src="flower1.PNG" alt="" class="">
            </div>
            <div class="communty-list-detail">
                시험 공부를 준비중인데
                심플하면서도 살짝 파스텔톤의 핑크빛 느낌의 가구 배치를 하고 싶어요 ㅠㅠ
                그런데 원룸 구조가 앞뒤로 다 주방이나 화장실, 현관 문이 있어서 가구 배치를 도저히 어떻게 하면 좋을지 모르겠어요..
                정말 예쁘게 오래 거주할 곳이라 이번에 예쁘게 인테리어 해보고 싶은데 도와주세요ㅠ
            </div>

            <div class="communty-list-count" align="center"> 
                <div><i class="xi-heart-o xi-2x"></i><p>0</p></div>
                <div><i class="xi-comment-o xi-2x"></i><p>0</p></div>
            </div>
            
        </div>
    </section>
</body>
</html>