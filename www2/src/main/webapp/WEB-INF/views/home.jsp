<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
  <script src="https://kit.fontawesome.com/9b855eea51.js" crossorigin="anonymous"></script>
</head>
<style>
  body {
    width: 1280px; height: 1024px;
    margin: 0px;
    background-color: burlywood;
  }
  .jumbotron {
		background: no-repeat center/100% url('https://picsum.photos/seed/479/1200/600');
	}
  header {
    float: left;
    width: 100%; height: 15%;
  }
  nav {
    float: left;
    width: 100%; height: 5%;
    margin-top: 10px;
  }
  nav ul {
    text-align: center;
    margin-top: 10px;
  }
  nav ul li {
    display: inline-block;
    text-align: center;
    margin-left: 20px;
    margin-right: 20px;
  }
  section {
    float: left;
    width: 60%; height: 40%;
  }
  section div img {
    display: block;
    margin: 0px auto;
    margin-top: 50px;
    border-radius: 20px;
  }
  aside {
    width: 40%; height: 40%;
    float: left;
  }
  #display {
    display: flex;
    width: 100%; height: 35%;
    justify-content: center;
    text-align: center;
  }
  div ul li{
    display: block;
    float: left;
    margin-left: 50px;
    margin-right: 50px;
  }
  footer {
    float: left;
    width: 100%; height: 5%;
    text-align: center;
    font-size: 20px;
    margin-top: 50px;
  }
</style>
<body>
  <header class="jumbotron jumbotron-fluid text-left text-white">
		<div>
			<div class="container">
				<div><span style="font-size: 60px;">Welcome</span></div>
				<div class="mx-5"><span style="font-size: 40px;">to my website</span></div>
			</div>
		</div>
  </header> <!-- 시멘틱 태그 -->
  <nav>
    <ul>
      <li>
        <i class="btn fas fa-smile fa-3x fa-spin" style="color:rgb(238, 94, 42)"></i>
      </li>
      <li>
        <i class="btn fas fa-smile fa-3x fa-spin" style="color: yellow;"></i>
      </li>
      <li>
        <i class="btn fas fa-smile fa-3x fa-spin" style="color: rgb(152, 207, 40);"></i>
      </li>
      <li>
        <i class="btn fas fa-smile fa-3x fa-spin" style="color:lightskyblue"></i>
      </li>
    </ul>
  </nav>
  <section>
    <div>
      <img src="https://picsum.photos/800/400" alt="picsum photos" width="600" height="300" >
    </div>
  </section>
  <aside>
    <form action="sign" method="post" class="mt-5 me-5">
      <div class="my-3">
        <label for="uid" class="form-label">아이디:</label>
        <input type="text" class="form-control" name="id" id="uid" placeholder="Input id">
      </div>
      <div class="my-3">
        <label for="pwd" class="form-label">비밀번호:</label>
        <input type="password" class="form-control" name="pw" id="pwd" placeholder="Input password">
      </div>
      <div class="form-check my-3">
        <label class="form-check-label">
          <input type="checkbox" class="form-check-input" name="remember">자동로그인
        </label>
      </div>
      <div class="d-flex justify-content-end pt-3 my-5">
        <button type="reset" class="btn btn-secondary me-2">Reset</button>
        <button type="Submit" class="btn btn-primary">Submit</button>
      </div>
    </form>
  </aside>
  <div id="display">
    <div>
      <ul>
        <li>
          <div class="card" style="width:300px">
            <img class="card-img-top" src="https://picsum.photos/300/200?q=1" alt="Card image">
            <div class="card-body">
              <h4 class="card-title">첫번째 사진</h4>
              <p class="card-text">사진은 Lorem Picsum에서<br>더미 이미지를 사용했습니다.</p>
              <a href="#" class="btn btn-primary">이 사진 좋아요</a>
            </div>
          </div>
        </li>
        <li>
          <div class="card" style="width:300px">
            <img class="card-img-top" src="https://picsum.photos/300/200?q=2" alt="Card image">
            <div class="card-body">
              <h4 class="card-title">두번째 사진</h4>
              <p class="card-text">사진은 Lorem Picsum에서<br>더미 이미지를 사용했습니다.</p>
              <a href="#" class="btn btn-primary">이 사진 좋아요</a>
            </div>
        </li>
        <li>  
          <div class="card" style="width:300px">
            <img class="card-img-top" src="https://picsum.photos/300/200?q=3" alt="Card image">
            <div class="card-body">
              <h4 class="card-title">세번째 사진</h4>
              <p class="card-text">사진은 Lorem Picsum에서<br>더미 이미지를 사용했습니다.</p>
              <a href="#" class="btn btn-primary">이 사진 좋아요</a>
            </div>
        </li>
      </ul>
    </div>
  </div>
  <footer>Copyright 2024. Jiyong all rights reserved.</footer>
</body>
</html>