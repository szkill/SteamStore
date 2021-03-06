<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: sevak
  Date: 31.05.2019
  Time: 6:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  Boolean isLog = (Boolean) session.getAttribute("isLog");
  if (isLog == null) {
    isLog = false;
    session.setAttribute("isLog", isLog);
  }

  Boolean isAdmin = (Boolean) session.getAttribute("isAdmin");
  if (isAdmin == null) {
    isAdmin = false;
    session.setAttribute("isAdmin", isAdmin);
  }


  String[] people = new String[]{"Tom", "Bob", "Sam"};
  String header = "Users list";
%>


<!DOCTYPE html>
<html lang="en">

<head>
  <title>SteamStore</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css"
    integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">





  <link rel='stylesheet' href="css/style.css" type='text/css' />




  <style>
    /* Remove the navbar's default rounded borders and increase the bottom margin */
    .navbar {
      margin-bottom: 50px;
      border-radius: 0;
    }

    /* Remove the jumbotron's default bottom margin */
    .jumbotron {
      background: url(https://i.giphy.com/media/xUOwG4onOFOY5ACDks/giphy.webp);
      margin-bottom: 0;
    }


    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #f2f2f2;
      padding: 25px;
    }
  </style>
</head>

<body>

  <div class="jumbotron">
    <div class="container text-center">
      <h1>Steam Online Store</h1>
      <p>Mission, Vission & Values</p>
    </div>
  </div>




  <!--bg-dark navbar-dark-->
  <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
    <!-- Brand/logo -->
    <a class="navbar-brand" href="#">
      <img src="https://apollo-frankfurt.akamaized.net/v1/files/ds9qr67iexep-KZ/image;s=261x203" alt="logo"
        style="width:40px;">
    </a>

    <!-- Left -->
		<ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link" href="index.html">Главная</a>
        </li>
        <li class="nav-item active">
          <a class="nav-link" href="#">Предметы</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">О нас</a>
        </li>
      </ul>

    <!-- Right -->
    <ul class="navbar-nav ml-auto">
      <li class="nav-item">
        <a class="nav-link" href="register.html"><span class="fa fa-address-card fa-lg"></span> Your
          Account</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#"><span class="fa fa-shopping-cart fa-lg"></span> Cart</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="adminpanel.html"><span class="fa fa-wrench  fa-lg"></span> Admin</a>
      </li>
    </ul>
  </nav>






  <div class="row">




    <div class="col-sm-2" id="leftfilter">

      <nav class="navbar navbar-expand-sm navbar-light" id="leftfilterpadding">
        <p class="selectiontitle">
          Игра 
        </p>
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link" href="productsDota.jsp"><img class="img-fluid rounded"
                                                             src="https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/570/0bbb630d63262dd66d2fdd0f7d37e8661a410075.jpg"></a>
          </li>
          <li class="nav-item active">
            <a class="nav-link" href="#"><img class="img-fluid rounded" id = "imgactive"
                src="https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/730/69f7ebe2735c366c65c0b33dae00e12dc40edbe4.jpg"></a>
          </li>
        </ul>
      </nav>


      <div class="selectionblock" id="leftfilterpadding">
        <form class="form-inline">
          <input class="form-control mr-sm-2" type="search" placeholder="Поиск по названию" aria-label="Search">
          <button class="btn btn-outline-dark my-2 my-sm-0" type="submit">Поиск</button>
        </form>
      </div>


      <div class="selectiontitle" id="leftfilterpadding">
        Цена
      </div>
      <div class="selectionblock" id="leftfilterpadding">
        <form class="form-inline">
          От
          <input class="form-control mr-sm-2 " type="search" placeholder="0" aria-label="Search" id="priceformcontrol">
          До
          <input class="form-control mr-sm-2 " type="search" placeholder="5000" aria-label="Search"
            id="priceformcontrol">
        </form>
      </div>


      <div class="selectiontitle" id="leftfilterpadding">
        Раритетность
      </div>
      <div class="selectionblock" id="leftfilterpadding">
        <select class="custom-select">
          <option selected>Все</option>
          <option value="1">ЗАпрещенное</option>
          <option value="2">Засекреченное</option>
          <option value="3">Тайное</option>
          
        </select>
      </div>

      <div class="selectiontitle" id="leftfilterpadding">
        Качество
      </div>
      <div class="selectionblock" id="leftfilterpadding">
        <select class="custom-select">
          <option selected>Все</option>
          <option value="1">Battle-Scarred</option>
          <option value="2">Well-Worn</option>
          <option value="3">Field-Tested</option>
          <option value="4">Minimal Wear</option>
          <option value="5">Factory New</option>
        </select>
      </div>


      <div class="selectiontitle" id="leftfilterpadding">
        Категории
      </div>
      <div class="selectionblock" id="leftfilterpadding">
        <select class="custom-select">
          <option selected>Все</option>
          <option value="1">Обыч.</option>
          <option value="2">StatTrak™</option>
          <option value="3">★</option>
          <option value="4">★ StatTrak™</option>
          <option value="5">Сувенир</option>
        </select>
      </div>
      

      <div class="selectiontitle" id="leftfilterpadding">
        Стикеры
      </div>
      <div class="selectionblock" id="leftfilterpadding">
        <select class="custom-select">
          <option selected>Все</option>
          <option value="1">Без стикеров</option>
          <option value="2">Со стикерами</option>          
        </select>
      </div>

      <!-- <div class="selectiontitle" id="leftfilterpadding">
        Тип
      </div>
      <div class="selectionblock" id="leftfilterpadding">
        <select class="custom-select">
          <option selected>Все</option>
          <option value="1">One</option>
          <option value="2">Two</option>
          <option value="3">Three</option>
        </select>
      </div> -->





    </div>




    <div class="col-sm-10">
      <div class="container">
        <div class="row">
          <div class="col-sm-4 d-flex">
            <div class="card bg-dark text-white">
              <img class="card-img-top"
                src="https://steamcommunity-a.akamaihd.net/economy/image/-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgpovbSsLQJf2PLacDBA5ciJlY20mvbmMbfUqW1Q7MBOhuDG_ZjKhFWmrBZyNmynJNCRdQdtMlyBqwW2lbq7g8Po6ZnLwCM17yhxsX2JlxXkgEsabPsv26LDJQinCA/360fx360f"
                alt="Card image" style="width:100%">
              <div class="card-body">
                <h4 class="card-title">★ Керамбит | Мраморный градиент</h4>
                <p class="card-text">Качество: Factory New<br>Раритетность: Тайное</p>
                <a href="https://steamcommunity.com/market/listings/730/%E2%98%85%20Karambit%20%7C%20Marble%20Fade%20(Factory%20New)" class="btn btn-primary stretched-link">Подробнее</a>
              </div>
            </div>
          </div>
          <div class="col-sm-4 d-flex">
            <div class="card bg-dark text-white">
              <img class="card-img-top"
                src="https://steamcommunity-a.akamaihd.net/economy/image/-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgpot621FAR17PLfYQJD_9W7m5a0mvLwOq7cqWdQ-sJ0xOzAot-jiQa3-hBqYzvzLdSVJlQ3NQvR-FfsxL3qh5e7vM6bzSA26Sg8pSGKJUPeNtY/360fx360f"
                alt="Card image" style="width:100%">
              <div class="card-body">
                <h4 class="card-title">AWP | Азимов</h4>
                <p class="card-text">Качество: Field-Tested<br>Раритетность: Тайное</p>
                <a href="https://steamcommunity.com/market/listings/730/AWP%20%7C%20Asiimov%20%28Field-Tested%29" class="btn btn-primary stretched-link">Подробнее</a>
              </div>
            </div>
          </div>
          <div class="col-sm-4 d-flex">
            <div class="card bg-dark text-white">
              <img class="card-img-top"
                src="https://steamcommunity-a.akamaihd.net/economy/image/-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgpotLu8JAllx8zJfwJW5duzhr-Ehfb6NL7ummJW4NFOhujT8om73wzkrRVvMmz7cIaUIwE9NVyE_QW5xOu-0cTo78zNz3ZruXQj5imMyQv330-wFnub9Q/360fx360f"
                alt="Card image" style="width:100%">
              <div class="card-body">
                <h4 class="card-title">★ Штык-нож | Зуб тигра</h4>
                <p class="card-text">Качество: Factory New<br>Раритетность: Тайное</p>
                <a href="https://steamcommunity.com/market/listings/730/%E2%98%85%20Bayonet%20%7C%20Tiger%20Tooth%20(Factory%20New)" class="btn btn-primary stretched-link">Подробнее</a>
              </div>
            </div>
          </div>
        </div>
        <br>
      </div>
      <br>
    </div>

  </div>





  <footer class="container-fluid text-center">
    <div class="container">

      <div class="col-md-14 our-st text-center ">
        <div class="clearfix "> </div>
        <li><i class="add"> </i>Санкт-Петербург, ЛЭТИ</li>
        <li><i class="phone"> </i>+7 (904) 555-18-96</li>
        <li><a href="mailto:info@example.com"><i class="mail"> </i>steam-shop@mail.ru</a></li>

      </div>

    </div>
  </footer>

  <!--  
  <footer class="container-fluid text-center">
    <div class="container">
      <div class="col-md-14 our-st text-center ">
        <p>Steam Online Store Copyright</p>
      </div>
    </div>
  </footer>
  -->

  <!--  
    <footer class="container-fluid text-center">
    <p>Online Store Copyright</p>
  </footer>
  -->

</body>

</html>