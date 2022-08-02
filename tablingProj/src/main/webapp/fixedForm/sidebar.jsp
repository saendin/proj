<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Curve Outside in Active Tab</title>
    <link
      rel="stylesheet"
      href="${pageContext.request.contextPath }/css/sidebar.css"
    />
    <link
      rel="stylesheet"
      href="https://unicons.iconscout.com/release/v2.1.9/css/unicons.css"
    />
  </head>

  <body>
    <div class="navigation">
      <ul>
        <li class="list active">
          <a href="#">
            <span class="icon">
              <i class="input-icon uil uil-user-exclamation"></i>
            </span>
            <span class="title">공지사항</span>
          </a>
        </li>
        <li class="list">
          <a href="/boardListPaging.do?pageNum=1&postNum=10">
            <span class="icon">
              <i class="input-icon uil uil-store"></i>
            </span>
            <span class="title">커뮤니티</span>
          </a>
        </li>
      </ul>
    </div>
    <script src="${pageContext.request.contextPath }/js/sidebar.js"></script>
  </body>
</html>
