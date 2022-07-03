<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<header class="header_area">
            <div class="container">
                <nav class="navbar navbar-expand-lg navbar-light">
                    <!-- Brand and toggle get grouped for better mobile display -->
              <img src="<c:url value="/images/blog/Logo.png"/>" alt=""></a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse offset" id="navbarSupportedContent">
                        <ul class="nav navbar-nav menu_nav ml-auto">
                            <li class="nav-item active"><a class="nav-link" href="${contextRoot}/">首頁</a></li> 
                            <li class="nav-item"><a class="nav-link" href="about.html">關於我們</a></li>
                            <li class="nav-item"><a class="nav-link" href="gallery.html">藝廊</a></li>
                            <li class="nav-item submenu dropdown">
                                <a href="" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">想趣旅遊</a>
                                <ul class="dropdown-menu">
                                    <li class="nav-item"><a class="nav-link" href="http://localhost:8081/jotravel/front/productPage/">所有旅遊</a></li>
                                    <li class="nav-item"><a class="nav-link" href="southTravel.html">南部出團</a></li>
                                    <li class="nav-item"><a class="nav-link" href="eastTravel.html">東部出團</a></li>
                                    <li class="nav-item"><a class="nav-link" href="islandTravel.html">外島出團</a></li>
                                </ul>
                            </li> 
                            <li class="nav-item submenu dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">主打活動</a>
                                <ul class="dropdown-menu">
                                    <li class="nav-item"><a class="nav-link" href="blog.html">導遊開團趣</a></li>
                                    <li class="nav-item"><a class="nav-link" href="blog-single.html">旅遊排行</a></li>
                                </ul>
                            </li> 
                            <li class="nav-item submenu dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">商家資訊</a>
                                <ul class="dropdown-menu">
                                    <li class="nav-item"><a class="nav-link" href="blog.html">導遊總覽</a></li>
                                    <li class="nav-item"><a class="nav-link" href="blog-single.html">旅遊排行</a></li>
                                </ul>
                            </li> 
                            <li class="nav-item submenu dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">遊記論壇</a>
                                <ul class="dropdown-menu">
                                    <li class="nav-item"><a class="nav-link" href="blog.html">Blog</a></li>
                                    <li class="nav-item"><a class="nav-link" href="blog-single.html">Blog Details</a></li>
                                </ul>
                            </li> 
                            <li class="nav-item"><a class="nav-link" href="elements.html">揪團</a></li>
                            <li class="nav-item"><a class="nav-link" href="contact.html">聯絡我們</a></li>
                        </ul>
                    </div> 
                </nav>
            </div>
        </header>


