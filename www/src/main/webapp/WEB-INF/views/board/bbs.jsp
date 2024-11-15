<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page session="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
  integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
  integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>

<style>
  body {
    margin: 0px;
    width: 1920px;
    height: 1024px;
  }

  #userinfo {
    display: inline-block;
    width: 1000px;
    height: 50px;
    /*  background-color: aqua;*/
    top: 40px;
    left: 1700px;
    position: absolute;
  }

  #header {
    width: 1920px;
    height: 100px;
    /* background-color: rgb(98, 139, 253);*/
    padding-top: 20px;
    box-sizing: border-box;
    float: left;
    /* display: flex;*/

  }

  .header_20 input[type=text] {
    width: 500px;
    height: 32px;
    font-size: 15px;
    border: solid 1px gray;
    border-radius: 15px;
    outline: none;
    margin-bottom: 10px;
    background-color: rgb(233, 233, 233);
  }

  .header_10 {
    width: 400px;
    height: 40px;
    /* border: 1px solid;*/
    margin: 0px auto;
    text-align: center;
    float: left;
  }

  .header_20 {
    padding-top: 5px;
    width: 1500px;
    height: 40px;
    /* border: 1px solid;*/
    margin: 0px auto;
    text-align: center;
    float: left;
  }

  .header_10 h2 {
    display: inline;
    color: green;
    font-family: Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif;
  }

  #nav {
    width: 1920px;
    height: 60px;
    float: left;
    border-bottom: 1px solid;
    font-size: larger;
  }

  /*
    #nav ul li{
        color:black;
    }
     #nav ul li:hover{
        background-color: aqua;
    } */
  /*   ul {
*/
  /*   border: 1px solid;
        margin-top: 3px;
    }*/
  ul li {
    display: inline-block;
    width: 120px;
    /*   border: 1px solid;*/

  }

  #mainsection {
    width: 80%;
    height: 900px;
    /*  border: 1px dotted;*/
    float: left;
    box-sizing: border-box;
  }

  #mainsection_01 {
    width: 80%;
    height: 300px;
    /*   border: 1px solid;
    /*    background-color: red;*/
    margin: 0px auto;
    text-align: center;
    float: left;
  }

  #asidelogin {
    width: 20%;
    height: 500px;
    /* border: 1px solid;*/
    float: left;
  }

  .subject {
    display: inline-block;
    font-size: larger;
    margin-bottom: 5px;
  }

  #login {
    background-color: darkcyan;
    padding-top: 15px;
    border-radius: 5px;
    box-sizing: border-box;
    color: white;

  }

  #login,
  #loginup,
  #logindown {
    width: 250px;
    height: 50px;
    text-align: center;
    vertical-align: middle;
    margin: 0px auto;

  }

  #loginbox {
    margin-top: 30px;
    box-sizing: border-box;
  }

  #infosection {
    width: 1920px;
    height: 150px;
    /* border: 1px solid;*/
    float: left;
  }

  .infosetion_card {
    width: 360px;
    height: 150px;
    margin-left: 20px;
    /* background-color: yellow;*/
    float: left;
  }

  #footer {
    width: 1920px;
    text-align: center;
    font-size: larger;
    /* border: 1px solid;*/
    float: left;
  }
</style>
<style>
  .dropdown {
    display: inline-block;
    position: relative;
  }

  #btn01,
  #btn02,
  #btn03,
  #btn04,
  #btn05 {
    border: none;
    border-radius: 5px;
    padding: 3px 30px;
    font-size: 18px;
    cursor: pointer;
    display: inline-block;
    background-color: white;
  }

  button:hover {
    background-color: #ddd;
  }

  .dropdown-options {
    display: none;
    position: absolute;
    overflow: auto;
    background-color: #fff;
    border-radius: 5px;
    box-shadow: 0px 10px 10px 0px rgba(0, 0, 0, 0.4);
  }

  .dropdown:hover .dropdown-options {
    display: block;
  }

  .dropdown-options a {
    display: block;
    color: #000000;
    padding: 5px;
    text-decoration: none;
    padding: 20px 40px;
  }

  .dropdown-options a:hover {
    color: #0a0a23;
    background-color: #ddd;
    border-radius: 5px;
  }
</style>
<style>
  /*boot strap에서 마우스 올려 놓으면 메뉴 자동 펼치기 추가 코드 */
  nav li.dropdown:hover>ul.dropdown-menu {
    display: block;
    margin: 0;
  }
</style>

<body>
  <%@ include file="../include/top.jsp" %>
  <div id="mainsection">
    <style>
      #mainsection_left {
        /*  display: inline-block;*/
        float: left;
        width: 300px;
        height: 500px;
        /*    border: 1px solid;*/
        padding: 20px 20px 20px 30px;
        box-sizing: border-box;
      }
    </style>
    <div id="mainsection_left">

      <div class="btn-group-vertical" role="group" aria-label="Vertical button group">
        <button type="button" class="btn btn-primary">Button</button>
        <button type="button" class="btn btn-primary">Button</button>
        <div class="btn-group" role="group">
          <button type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
            Dropdown
          </button>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="#">Dropdown link</a></li>
            <li><a class="dropdown-item" href="#">Dropdown link</a></li>
          </ul>
        </div>
        <div class="btn-group dropstart" role="group">
          <button type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
            Dropdown
          </button>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="#">Dropdown link</a></li>
            <li><a class="dropdown-item" href="#">Dropdown link</a></li>
          </ul>
        </div>
        <div class="btn-group dropend" role="group">
          <button type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
            Dropdown
          </button>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="#">Dropdown link</a></li>
            <li><a class="dropdown-item" href="#">Dropdown link</a></li>
          </ul>
        </div>
        <div class="btn-group dropup" role="group">
          <button type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
            Dropdown
          </button>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="#">Dropdown link</a></li>
            <li><a class="dropdown-item" href="#">Dropdown link</a></li>
          </ul>
        </div>
      </div>
    </div>
    <div id="mainsection_01">

      <div>
        <div>
          <div class="card text-center">
            <div class="card-body">

              <h5 class="card-title">게시판</h5>
            </div>
          </div>
        </div>
      </div>
      <div id="article_table">
        <table class="table">
          <thead class="table-dark">
            <tr>
              <th scope="col" width="5%">#</th>
              <th scope="col" width="10%">Type</th>
              <th scope="col" width="20%">Title</th>
              <th scope="col" width="15%">사용자</th>
              <th scope="col" width="20%">비밀글 여부</th>
              <th scope="col" width="20%">날짜</th>
              <th scope="col" width="10%">수정  /  삭제</th>
            </tr>
          </thead>
          <tbody>
          
<!--             <tr> -->
<!--               <th scope="row">1</th> -->
<!--               <td>Mark</td> -->
<!--               <td>Otto</td> -->
<!--               <td>@mdo</td> -->
<!--               <td>@mdo</td> -->
<!--               <td>@mdo</td> -->
<!--               <td>수정/삭제</td> -->
<!--             </tr> -->
          
          	<c:forEach items="${list}" var="list" varStatus="status">
          		<c:set var="date" value="${list.indate}"/>
          		<tr>
          			<th scope="row">${status.count}</th>
          			<td>${list.type}</td>
          			<td><a href="view?num=${list.num}">${list.title}</a></td>
          			<td>${list.username}</td>
          			<td>${list.viewmember}</td>
          			<td>${fn:substring(date,0,10)}
          			<td><a href="mod?modtitle=${list.num}">수정</a>  /  <a href="del?deltitle=${list.num}">삭제</a></td>
          		</tr>
          	</c:forEach>
          	<tr>
          		<td colspan=6>
          		<c:if test="${pageVO.prev }">
						<a href="board?page=${pageVO.startPage -1}">[이전페이지그룹] </a>
					</c:if>
				<!--  forEach   리스틀 순회,  아래처럼 시작과 끝을 지정하여 반복하는 사용것. -->			
					<c:forEach begin="${pageVO.startPage}" end="${pageVO.endPage }" var="idx">
						<c:if test="${pageVO.page == idx}">*</c:if>
						<a href="board?page=${idx}">${idx}</a>					
					</c:forEach>	
					<c:if test="${pageVO.next }">
						<a href="board?page=${pageVO.endPage + 1 }"> [다음페이지그룹]</a>
					</c:if>	
          		</td>
          	</tr>

<!--             <tr> -->
<!--               <th scope="row">1</th> -->
<!--               <td>Mark</td> -->
<!--               <td>Otto</td> -->
<!--               <td>@mdo</td> -->
<!--             </tr> -->
<!--             <tr> -->
<!--               <th scope="row">2</th> -->
<!--               <td>Jacob</td> -->
<!--               <td>Thornton</td> -->
<!--               <td>@fat</td> -->
<!--             </tr> -->
<!--             <tr> -->
<!--               <th scope="row">3</th> -->
<!--               <td colspan="2">Larry the Bird</td> -->
<!--               <td>@twitter</td> -->
<!--             </tr> -->
<!--             <tr> -->
<!--               <th scope="row">3</th> -->
<!--               <td colspan="2">Larry the Bird</td> -->
<!--               <td>@twitter</td> -->
<!--             </tr> -->
<!--             <tr> -->
<!--               <th scope="row">3</th> -->
<!--               <td colspan="2">Larry the Bird</td> -->
<!--               <td>@twitter</td> -->
<!--             </tr> -->
<!--             <tr> -->
<!--               <th scope="row">3</th> -->
<!--               <td colspan="2">Larry the Bird</td> -->
<!--               <td>@twitter</td> -->
<!--             </tr> -->
<!--             <tr> -->
<!--               <th scope="row">3</th> -->
<!--               <td colspan="2">Larry the Bird</td> -->
<!--               <td>@twitter</td> -->
<!--             </tr> -->
<!--             <tr> -->
<!--               <th scope="row">3</th> -->
<!--               <td colspan="2">Larry the Bird</td> -->
<!--               <td>@twitter</td> -->
<!--             </tr> -->
<!--             <tr> -->
<!--               <th scope="row">3</th> -->
<!--               <td colspan="2">Larry the Bird</td> -->
<!--               <td>@twitter</td> -->
<!--             </tr> -->
<!--             <tr> -->
<!--               <th scope="row">3</th> -->
<!--               <td colspan="2">Larry the Bird</td> -->
<!--               <td>@twitter</td> -->
<!--             </tr> -->

          </tbody>
        </table>
        <div id="table_menu">
          <a href="bwr">
          <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-file-plus"
            viewBox="0 0 16 16">
            <path d="M8.5 6a.5.5 0 0 0-1 0v1.5H6a.5.5 0 0 0 0 1h1.5V10a.5.5 0 0 0 1 0V8.5H10a.5.5 0 0 0 0-1H8.5V6z" />
            <path
              d="M2 2a2 2 0 0 1 2-2h8a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2V2zm10-1H4a1 1 0 0 0-1 1v12a1 1 0 0 0 1 1h8a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1z" />
          </svg>
        </a>
        </div>

      </div>
    </div>
  </div>



  <div id="asidelogin">
    <div id="loginbox">
      <div id="loginup">
        KimTeacher Lap에 참여하세요
      </div>
      <div id="login" data-bs-toggle="modal" data-bs-target="#loginModal">
        KimTeacher 로그인
      </div>
      <div id="logindown">
        <br>
        <button type="button" data-bs-toggle="modal" data-bs-target="#exampleModal">
          회원가입
        </button>
        <button type="button">아이디/비빌번호찾기</button>

      </div>
      <style>
        #news {
          border: 1px solid;
          display: inline-block;
          width: 100%;
          height: 300px;
          margin: 0px auto;
          border-radius: 5%;
          border-color: rgb(196, 193, 193);
          background-color: white;
        }

        #talks {
          border: 1px solid;
          display: inline-block;
          width: 100%;
          height: 150px;
          margin: 0px auto;
          border-radius: 5%;
          border-color: rgb(196, 193, 193);
          background-color: white;
        }
      </style>
      <br>
      <div id="news">
        <img src="<%=request.getContextPath() %>/resources/img/we.PNG">
      </div>
      <div id="talks">
      </div>
    </div>
    <div>


    </div>
  </div>


  <div id="footer">
    <hr>
    김티처 tel. 010-9407-8767
  </div>
  <!-- Modal -->
  <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h1 class="modal-title fs-5" id="exampleModalLabel">회원가입</h1>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          <div class="input-group mb-3">
            <span class="input-group-text" id="basic-addon1">ID</span>
            <input type="text" class="form-control" placeholder="Username" aria-label="Username"
              aria-describedby="basic-addon1">
          </div>
          <div class="input-group mb-3">
            <span class="input-group-text" id="basic-addon1">PASS</span>
            <input type="text" class="form-control" placeholder="Pass" aria-label="Username"
              aria-describedby="basic-addon1">
          </div>
          <div class="input-group mb-3">
            <span class="input-group-text" id="basic-addon1">TEL</span>
            <input type="text" class="form-control" placeholder="tel" aria-label="Username"
              aria-describedby="basic-addon1">
          </div>
          <div class="input-group mb-3">
            <span class="input-group-text" id="basic-addon1">EMAIL</span>
            <input type="text" class="form-control" placeholder="E-mail" aria-label="Username"
              aria-describedby="basic-addon1">
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Save</button>
          <button type="button" class="btn btn-primary" data-bs-dismiss="modal">Cancel</button>
        </div>
      </div>
    </div>
  </div>
  <div>
    <!-- Modal -->
    <!-- Modal -->
    <div class="modal fade" id="loginModal" tabindex="-1" aria-labelledby="exampleModalLabel1" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <h1 class="modal-title fs-5" id="exampleModalLabel1">로그인</h1>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body">
            <div class="input-group mb-3">
              <span class="input-group-text" id="basic-addon1">ID</span>
              <input type="text" class="form-control" placeholder="Username" aria-label="Username"
                aria-describedby="basic-addon1">
            </div>
            <div class="input-group mb-3">
              <span class="input-group-text" id="basic-addon1">PASS</span>
              <input type="text" class="form-control" placeholder="Pass" aria-label="Username"
                aria-describedby="basic-addon1">
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">login</button>
              <button type="button" class="btn btn-primary " data-bs-dismiss="modal">Cancel</button>
            </div>
          </div>
        </div>
      </div>
      <div>
        <!-- Modal -->
</body>

</html>