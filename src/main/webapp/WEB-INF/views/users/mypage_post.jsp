<%@ page contentType="text/html;charset=UTF-8" language="java"
pageEncoding="UTF-8" %> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %> <%@include
file="../header_footer/header.jspf"%>

<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Career Canvas</title>
    <script
      src="https://kit.fontawesome.com/2026ef433b.js"
      crossorigin="anonymous"
    ></script>
    <link
      href="	https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
    />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <script
      src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"
      integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    ></script>

    <style>
      /* All */

      * {
        padding: 0;
        margin: 0;
        box-sizing: border-box;
        list-style: none;
        text-decoration: none;
      }

      ul,
      li {
        padding: 0;
        margin: 0;
      }
      .container {
        width: 1200px;
        margin: 0 auto;
      }

      a:link,
      a:visited {
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
      .navBar,
      .infoGroup {
        display: flex;
        justify-content: center;
        padding: 0;
        margin: 0;
        line-height: 50px;
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
      .infoGroup img {
        width: 35px;
        height: 35px;
      }
      .carousel {
        z-index: 0;
      }

      .firstHr {
        left: 0;
        width: 100%;
      }

      /* Main */

      /* Mypage User Info */
      .userInfo_wrapper {
        width: 100%;
        margin: 0 auto;
        margin-top: 25px;
        display: flex;
        flex-direction: row;
        justify-content: space-between;
      }
      .userIntro {
        display: flex;
        align-items: center;
        padding-bottom: 50px;
      }
      .userId {
        display: flex;
        justify-content: space-between;
        align-items: center;
        border-bottom: 1px solid #ddd;
        padding-bottom: 5px;
        margin-bottom: 20px;
      }
      .userIntro img {
        width: 100px;
        height: 100px;
      }
      .btn-outline-primary {
        font-size: 14px;
        padding: 2px 4px;
      }
      .userIntro p {
        margin: 0px;
      }
      .dropdown {
        display: block;
        margin: 0;
        padding: 0;
      }
      .web {
        background: rgb(250, 110, 133);
        border-radius: 10px;
        padding: 5px;
        color: white;
        font-size: 14px;
      }
      .picture {
        background: rgb(86, 70, 235);
        border-radius: 10px;
        padding: 5px;
        color: rgb(255, 255, 255);
        font-size: 14px;
      }
      .etc {
        background: rgb(0, 183, 255);
        border-radius: 10px;
        padding: 5px;
        color: white;
        font-size: 14px;
      }

      /* Center ajax */
      .homeworkImg {
        width: 220px;
        height: 170px;
        padding-right: 50px;
      }
      .ajaxMenu {
        display: flex;
        margin: 0 auto;
        width: 100%;
        justify-content: space-around;
        background-color: white;
        height: 50px;
        line-height: 50px;
        border-radius: 10px;
        text-align: center;
      }
      .ajaxMenu a {
        width: 20%;
        color: black;
      }

      .ajaxMenu_wrapper {
        margin-top: 50px;
      }
      .ajaxView {
        float: left;
      }
      .ajaxContent {
        width: 50%;
        justify-content: center;
        margin-top: 80px;
        display: flex;
      }
      .ajaxView_wrapper {
        margin: 0 auto;
        width: 64%;
        display: flex;
        flex-wrap: wrap;
        text-align: center;
      }
      .userInterest span {
        margin-right: 5px;
      }
      .table th,
      .table tr {
        width: 15%;
        text-align: center;
      }
      .table th:nth-child(5n + 3),
      .table tr:nth-child(5n + 3) {
        width: 40%;
      }
      .paging {
        display: flex;
        justify-content: center;
      }
      .paging li {
        margin: 0 20px;
      }
    </style>
  </head>
  <body>
    <!-- Main -->

    <!-- Mypage User Info -->
    <main class="container">
      <!-- Top  -->
      <div class="userInfo_wrapper">
        <!-- UserInfo Area -->
        <div class="userIntro">
          <img src="${pageContext.servletContext.contextPath}/upload${uVO.profileimg}" alt="" />
          <div style="padding-left: 20px;">
            <div class="userId">
              <a href="${pageContext.servletContext.contextPath}/mypage">
                <span style="font-size: 1.5rem">${uVO.username }</span>
              </a>
              <a href="${pageContext.servletContext.contextPath}/mypage_edit">
                <input
                  type="button"
                  class="btn btn-outline-primary"
                  value="수정"
                />
              </a>
            </div>
            <p>${uVO.comment }</p>
          </div>
        </div>
        <!-- Interest -->

        <div>
          <p>관심분야</p>
          <div class="userInterest" style="display: flex; flex-wrap: wrap">
            <span class="web">웹/개발</span>
            <span class="picture">사진/음향</span>
            <span class="etc">기타등등</span>
          </div>
        </div>
      </div>

      <!-- Center -->
      <!-- ajax -->
      <div class="ajaxMenu_wrapper">
        <ul class="ajaxMenu">
          <li class="myPofol menu" id="myPofol menu">
            <a href="${pageContext.servletContext.contextPath}/mypage/myPofol"
              >나의 포트폴리오</a
            >
          </li>
          <li class="submitTask menu" id="submitTask">
            <a
              href="${pageContext.servletContext.contextPath}/mypage/submitSubjectSolo"
              >제출한 과제</a
            >
          </li>
          <li class="myPost menu" id="myPost menu">
            <a href="${pageContext.servletContext.contextPath}/mypage/myPost"
              >나의 게시글</a
            >
          </li>
          <li class="myComment menu" id="myComment menu">
            <a href="${pageContext.servletContext.contextPath}/mypage/myComment"
              >나의 댓글</a
            >
          </li>
          <li class="myNote menu" id="myNote menu">
            <a href="${pageContext.servletContext.contextPath}/mypage/mySendMsg"
              >쪽지함</a
            >
          </li>
        </ul>
      </div>
      <form
        class="input-group mb-3"
        style="width: 60%; margin: 20px auto"
        action="${pageContext.servletContext.contextPath}/mypage/myPost"
        method="GET"
      >
        <input
          type="text"
          class="form-control"
          name="searchWord"
          placeholder="Search"
        />
        <button class="btn btn-success" type="submit">Go</button>
      </form>
      <!-- ajax View -->
      <div class="ajaxView_wrapper">
        <div class="container mt-3">
          <table class="table">
            <thead class="table-dark">
              <tr>
                <th>번호</th>
                <th>카테고리</th>
                <th>제목</th>
                <th>작성일시</th>
                <th>조회수</th>
              </tr>
            </thead>
            <tbody>
              <div class="ajaxContent">
                <c:forEach var="bVO" items="${bVO}">
                  <tr>
                    <td>${bVO.postid}</td>
                    <c:if test="${bVO.boardcategory eq 0}">
                      <td>자유게시판</td>
                    </c:if>
                    <c:if test="${bVO.boardcategory eq 1}">
                      <td>질문게시판</td>
                    </c:if>
                    <c:if test="${bVO.boardcategory eq 2}">
                      <td>노하우게시판</td>
                    </c:if>
                    <td><a href="${pageContext.servletContext.contextPath}/board/view?no=${bVO.postid}">${bVO.posttitle}</a></td>
                    <td>${bVO.date}</td>
                    <td>${bVO.views}</td>
                  </tr>
                </c:forEach>
              </div>
            </tbody>
          </table>
          <!-- 페이징 -->
          <div class="paging_wrapper">
            <ul class="paging">
              <!-- 이전 -->
              <c:if test="${pVO.page == 1}">
                <li><input type="button" value="<" class="btn btn-outline-primary" disabled></li>
              </c:if>
              <c:if test="${pVO.page > 1}">
                <li>
                  <a
                    href="${pageContext.servletContext.contextPath}/mypage/myPost?page=${pVO.page - 1}
                     <c:if test='${pVO.searchWord != "" }'>&searchWord=${pVO.searchWord}</c:if>"
                  >
                  <input type="button" value="<" class="btn btn-outline-primary">
                  </a>
                </li>
              </c:if>
              <!-- 1,2,3,4,5 -->
              <c:forEach
                var="p"
                begin="${pVO.startPage}"
                end="${pVO.startPage + pVO.onePageCount - 1}"
              >
              <c:if test="${p <= pVO.totalPage}">
                <li>
                <a
                href="${pageContext.servletContext.contextPath}/mypage/myPost?page=${p}&searchWord=${pVO.searchWord}">
                <input type="button" value="${p}" class="btn btn-outline-primary">
              </a>
            </li>
            </c:if>
              </c:forEach>

              <!-- 다음 -->

              <c:if test="${pVO.page == pVO.totalPage}">
                <li><input type="button" value=">" class="btn btn-outline-primary" disabled></li>
              </c:if>
              <c:if test="${pVO.page < pVO.totalPage}">
                <li>
                  <a
                    href="${pageContext.servletContext.contextPath}/mypage/myPost?page=${pVO.page + 1}"
                  >
                  <input type="button" value=">" class="btn btn-outline-primary">
                  </a>
                </li>
              </c:if>
            </ul>
          </div>
        </div>
      </div>
    </main>
  </body>
</html>
<%@include file="../header_footer/footer.jspf" %>
