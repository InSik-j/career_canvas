<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <style>
        /* All */

        * {
            padding: 0;
            margin: 0;
            box-sizing: border-box;
            list-style: none;
            text-decoration: none;
        }

        ul, li {
            padding: 0;
            margin: 0;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
        }

        .space {
            height: 200px;
            background: white;
        }

        a:link, a:visited {
            color: black;
            text-decoration: none;
        }

        .buttonGroup {
            text-align: center;
        }


        /* Header*/

        /* Title & Logo */

        .title {
            display: flex;
            align-items: center;
        }

        .hamberger {
            display: none;
            font-size: 1.7rem;
        }

        .logo {
            height: 60px;
            line-height: 60px;
            font-size: 1.7rem;
            margin: 0;
        }

        .login {
            position: absolute;
        }


        /* NavBar */

        .nav_wrapper {
            display: flex;
            justify-content: space-between;
        }

        .navBar, .infoGroup {
            display: flex;
            justify-content: center;
            padding: 0;
            margin: 0;
        }

        .nav_wrapper li {
            padding-right: 20px;


        }

        .userInfo {
            display: none;
            position: absolute;
            background: rgba(255, 255, 255, 0.849);
            z-index: 1;
        }

        .userInfo li {
            height: 30px;
            line-height: 30px;
        }

        .userInfo.active {
            display: block;
            margin: 0;
            padding: 0;
        }

        .carousel {
            z-index: 0;
        }


        /* Main */


        .second_hr {
            width: 1000px;
        }

        /* Banner */

        .carousel {
            width: 100%;
            margin: 0 auto;
        }

        .carousel-inner img {
            width: 60%;
            height: 300px;
            background: rgb(128, 128, 128);
            margin: 0 auto;
        }

        /* BestPopol */

        .bestPopol_wrapper {
            width: 1000px;
        }

        .bestPopol_wrapper > p {
            text-align: center;
            margin-top: 50px;
            padding-top: 50px;
        }

        .bestPopolList {
            margin-top: 50px;
            display: flex;
            justify-content: space-between;
        }

        .bestPopol {
            width: 200px;
            display: flex;
            flex-direction: column;
            text-align: center;
        }

        .bestPopol img {
            width: 180px;
            height: 180px;
            margin-bottom: 10px;
        }

        /* Homework */
        .homework_wrapper {
            width: 1000px;
        }

        .homeworkList {
            margin-top: 50px;
            display: flex;
            justify-content: space-between;
        }

        .homework {
            width: 200px;
            display: flex;
            flex-direction: column;
            text-align: center;
        }

        .homework img {
            width: 180px;
            height: 180px;
        }

        .homework_wrapper > p {
            text-align: center;
            margin-top: 50px;
            padding-top: 50px;
        }


        /* Footer */
        footer {
            height: 100px;
            background: rgb(184, 178, 178);
        }


        /* Media Query */
        @media screen and (max-width: 800px) {

            .nav_wrapper {
                display: none;
                flex-direction: column;
            }

            .nav_wrapper.active {
                display: flex;
            }

            .navBar, .infoGroup {
                display: block;
                padding: 0;
                text-align: center;
            }

            .hamberger {
                display: inline;
            }

            .title {
                justify-content: space-between;
            }

            .infoGroup > li:nth-child(2) {
                display: none;
            }
        }
    </style>
    <script>
        $(function(){
            $('input[type="radio"]').change(function(){
                if($(this).val() == '1') {
                    if(!$('.for-company').length) {
                        $('<div class="for-company mt-3"><label for="companyno" class="form-label">사업자등록번호:</label>'+
                            '<input type="text" class="form-control" id="companyno" placeholder="가입 당시 사업자등록번호" name="companyno"></div>').insertAfter('#email');
                    }
                } else {
                    $('.for-company').remove();
                }
            });
        });
    </script>
</head>
<body>
<!-- Header -->
<header class="container">
    <!-- Title -->
    <div class="title">
        <a class="logo" href="main.html">CAREER CANVAS</a>
        <i class="fa-solid fa-bars hamberger"></i>
    </div>
    <!-- Nav -->
    <nav class="nav_wrapper">
        <ul class="navBar">
            <li><a href="#">파티</a></li>
            <li><a href="popol.html">포트폴리오</a></li>
            <li><a href="#">기업과제</a></li>
            <li><a href="#">커뮤니티</a></li>
        </ul>
        <ul class="infoGroup">
            <!-- 로그인세션 확인 후 로그인 숨기고 닉네임,사용자아이콘 표시 -->
            <!-- 아이콘 클릭 시 드롭다운 메뉴로 프로필,마이페이지,로그아웃 나오게 -->
            <li><a href="#">로그인</a></li>
            <li><a href="#">아이콘자리</a></li>
            <li class="userNickname">
                닉네임자리 ▼
                <div style="background-color: white">
                    <ul class="userInfo">
                        <li>프로필</li>
                        <li>마이페이지</li>
                        <li>로그아웃</li>
                    </ul>
                </div>
            </li>
        </ul>
    </nav>
    <hr/>
</header>
<div class="container">
    <h3 style="text-align: center; margin-top: 150px">비밀번호를 잊으셨나요?</h3>
    <form method="post" id="findpwForm" name="findpwForm">
        <%--가입 유형 선택--%>
        <div style="display: flex; height: 40px; font-weight: bold; margin: 50px auto 0;width: 40%">
            <input type="radio" name="iscompany" value="0" checked/>
            <p style="margin-left: 10px; line-height: 40px">개인회원</p>
            <input type="radio" name="iscompany" value="1" style="margin-left: 20px"/>
            <p style="margin-left: 10px; line-height: 40px">기업회원</p>
        </div>
        <div style="width: 40%; margin: 10px auto 0;">
            <label for="id" class="form-label">아이디:</label>
            <input type="email" class="form-control" id="id" placeholder="아이디" name="id">
            <label for="email" class="form-label mt-3">Email:</label>
            <input type="email" class="form-control" id="email" placeholder="이메일" name="email">
            <div class="mt-3" style="display: flex; justify-content: space-between">
                <button type="submit" class="btn btn-primary">비밀번호 찾기</button>
                <input type="button" class="btn btn-secondary" value="돌아가기" onclick="history.back()"/>
            </div>

        </div>

    </form>
</div>

</body>
</html>
