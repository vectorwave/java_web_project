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
                  
					<c:if test="${sessionScope.loginuser.accountId != null}">
					<h3>&nbsp;&nbsp;&nbsp;Hello!${loginuser.accountName}</h3>
					</c:if>
			
                    
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse offset" id="navbarSupportedContent">
                        <ul class="nav navbar-nav menu_nav ml-auto">
                            <li class="nav-item active"><a class="nav-link" href="${contextRoot}/">首頁</a></li> 
                            <li class="nav-item"><a class="nav-link" href="#about_tag">關於我們</a></li>
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
                                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">導遊資訊</a>
                                <ul class="dropdown-menu">
                                    <li class="nav-item"><a class="nav-link" href="http://localhost:8081/jotravel/guides">導遊總覽</a></li>
                                    <li class="nav-item"><a class="nav-link" href="blog-single.html">旅遊排行</a></li>
                                </ul>
                            </li> 
                            <li class="nav-item submenu dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">遊記論壇</a>
                                <ul class="dropdown-menu">
                                    <li class="nav-item"><a class="nav-link" href="http://localhost:8081/jotravel/front/blogIndex">遊記分享</a></li>
                                    <li class="nav-item"><a class="nav-link" href="http://localhost:8081/jotravel/front/addBlogPage">新增遊記</a></li>
                                </ul>
                            </li> 
                            <li class="nav-item"><a class="nav-link" href="elements.html">揪團</a></li>
                           <li class="nav-item submenu dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">客服中心</a>
                                <ul class="dropdown-menu">
                                    <li class="nav-item"><a class="nav-link" href="${contextRoot}/message/form">客服表單</a></li>
                                    <li class="nav-item"><a class="nav-link" href="blog-single.html">智能客服</a></li>
                                    <li class="nav-item"><a class="nav-link" href="blog-single.html">線上客服中心</a></li>
                                </ul>
                            </li> 
                            
                            <li class="nav-item submenu dropdown">
                            	<a href=""class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">會員</a>

							
								<ul class="dropdown-menu">
									
									<c:if test="${sessionScope.loginuser.accountId == null}">
									<li class="nav-item"><a class="nav-link" href="http://localhost:8081/jotravel/page/login">登入</a></li>
									</c:if>
									
									<c:if test="${sessionScope.loginuser.accountId != null}">
									<li class="nav-item"><a class="nav-link"href="http://localhost:8081/jotravel/page/loginout">登出</a></li>
									
								<li class="nav-item"><a class="nav-link" href="http://localhost:8081/jotravel/page/member/add">新增個人資料</a></li>
									<li class="nav-item"><a class="nav-link" href="http://localhost:8081/jotravel/page/member/edit?id=${loginuser.accountId}">會員資料</a></li>
<!-- 									<li class="nav-item"><a class="nav-link" href="blog-single.html">修改密碼</a></li> -->
									<li class="nav-item"><a class="nav-link" href="http://localhost:8081/jotravel/front/allOrder">查看訂單</a></li>
												</c:if>
									<li class="nav-item"><a class="nav-link" href="http://localhost:8081/jotravel/login">管理員</a></li>
							</ul></li>
									

							<li class="nav-item submenu dropdown">
                                <a href="http://localhost:8081/jotravel/checkout" class="nav-link"  aria-haspopup="true" aria-expanded="false">🛒</a>
                            </li> 
                        </ul>
                    </div> 
                </nav>
            </div>
        </header>


