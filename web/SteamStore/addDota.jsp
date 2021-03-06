<%@ page import="java.sql.SQLOutput" %><%--
  Created by IntelliJ IDEA.
  User: sevak
  Date: 04.06.2019
  Time: 9:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Добавление товара</title>

    <link href="css/style.css" rel='stylesheet' type='text/css'/>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css"
          integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/evil-icons@1.9.0/assets/evil-icons.min.css">
    <script src="https://cdn.jsdelivr.net/npm/evil-icons@1.9.0/assets/evil-icons.min.js"></script>

    <style>
        .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-tester-select: none;
            -moz-tester-select: none;
            -ms-tester-select: none;
            tester-select: none;
        }

        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }

        /* Show it is fixed to the top */
        body {
            min-height: 75rem;
            padding-top: 4.5rem;
        }
        body {
            background: url(http://cristinarosu.com/wp-content/uploads/2018/04/kraski-tekstura-fon-cveta.jpg);
        }
    </style>
</head>
<body>

<%
    if (request.getAttribute("addDotaError") != null) {
        out.println("<script>" +
                "$(document).ready(function () {" +
                "alert('"+request.getAttribute("addDotaError")+"');" +
                "});" +
                "</script>");
    }

%>
<main role="main" class="container">
    <form name="dota" id="dota" class="form form-inline" method="post">
        <input type="hidden" name="htmlFormName"
               value="dota"/> <%--Для определения из какой формы был клик, req.getParameterValues("htmlFormName")--%>
        <label>
            <input name="name" type="text" class="form-control" placeholder="DotaName" required>
        </label>
        <label>
            <input name="quality" type="text" class="form-control" placeholder="DotaQuality" required>
        </label>
        <label>
            <input name="cost" type="text" class="form-control" placeholder="DotaCost" required>
        </label>
        <label>
            <input name="rarity" type="text" class="form-control" placeholder="DotaRarity" required>
        </label>
        <label>
            <input name="hero" type="text" class="form-control" placeholder="DotaHero" required>
        </label>
        <label>
            <input name="itemType" type="text" class="form-control" placeholder="DotaItemType" required>
        </label>
        <button name="dotasubmit" type="submit" value="active" class="btn btn-primary">Add DotaItem</button>
    </form>
    <br>


</main>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>


</body>
</html>
