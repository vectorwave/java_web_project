<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:include page="layout/header.jsp" />

        <!--NavBar Section-->
        <style type="text/css">
        /* ########################################### */
/*                 Global                      */
/* ########################################### */
*{
    box-sizing: border-box;
}

html{
    font-size: 14px;
/*     font-family: 'Titillium Web', sans-serif; */
    background-color:rgb(0,0,0);
    color:#FEFEFE;
}

a{
    color:#FF0042;
    font-weight: bolder;
    text-decoration: none;
}

h1{
    font-size:16px;
    font-weight: bolder;
}


/* ########################################### */
/*           Forums.html                       */
/* ########################################### */
.container{
    margin: 20px;
    padding: 20px;
}

.subforum{
    margin-top:20px;
}

.subforum-title{
    background-color:#292B2E;
    padding: 5px;
    border-radius: 5px;
    margin:4px;
}

.subforum-row{
    display: grid;
    grid-template-columns: 7% 60% 13% 20%;
}

.subforum-column{
    padding: 10px;
    margin:4px;
    border-radius: 5px;
    background-color:#111314;
}

.subforum-description *{
    margin-block: 0;
}

.center{
    display: flex;
    justify-content: center;
    align-items: center;
}

.subforum-icon i{
    font-size: 45px;
}

.subforum-devider{
    display: none;   
}


/* For the smartphones */
@media screen and (max-width: 460px) {
    .container{
        margin: 10px;
        padding: 10px;
    }

    .subforum-row{
        display: grid;
        grid-template-columns: 25% 75%;
        grid-template-rows: 65% 35%;
    }

    .subforum-devider{
        display: block;
        border: 0;
        height: 1px;
        background-image: linear-gradient(to right, rgba(190, 190, 190, 0), rgba(255, 255, 255, 0.75), rgba(190, 190, 190, 0));
    }

    

  }

/* For the tablets */
@media screen and (min-width: 460px) and (max-width: 1024px) {
    .container{
        margin: 15px;
        padding: 15px;
    }

    .subforum-row{
        display: grid;
        grid-template-columns: 10% 60% 10% 20%;
    }

    .subforum-icon i{
        font-size: 35px;
    }

    html{
        font-size: 14px;
    }

    h1{
        font-size: 16px;
    }

  }
/*   Header Section    */

header{
    margin-inline: 10px;
}
  /* Nav Bar styles */
.navbar{
    display:flex;
    align-items: center;
}
.navigation{
    background-color:#52057b;
    padding: 10px;
    width: 65%;
    display: inline-block;
    border-radius: 5px;
    max-height: 80px;
    margin-right:10px;
}

.close-icon i{
    font-size:60px;
    float: left;
    cursor: pointer;
}

.nav-list{
    list-style-type:none;
    overflow: hidden;
}

.nav-item a{
    float: right;
    display:block;
    text-align: center;
    margin-inline: 20px;
    font-size: 20px;
    padding: 10px;
    color:#fff;
}

.nav-item a:hover{
    background-color: rgb(0,0,0,0.1);
}

.hide{
    display: none;
}

.bar-icon{
    font-size: 60px;
    display: inline-block;
    margin-right:10px;
    color: #fff;
    cursor: pointer;
}

@font-face {
/*     font-family:aquire; */
    src:url(aquire.otf);
}

.brand{
    font-size:60px;
    display: inline-block;
/*     font-family:aquire; */
}

/*Navbar for the smartphones*/
@media screen and (max-width: 460px){
    .navigation{
        max-height: auto;
    }
    
    .close-icon i{
        font-size:30px;
    }
    
    .nav-item a{
        float:left;
        display:inline;
        margin-inline: 3px;
        font-size: 10px;
        padding: 5px;
    }
    
    
    .bar-icon{
        font-size: 30px;
    }
 
    .brand{
        font-size:20px;
    }
}

  /* Search Box styles */
.search-box{
    border: solid 1px #52057b;
    margin-top: 20px;
    padding: 40px;
    display:flex;
    justify-content: center;
    box-shadow:1px 2px 3px #52057b;
}

.search-box select{
    padding: 10px;
}

.search-box input{
    padding: 10px;
}

.search-box button{
    padding: 10px;
    background-color:#fff;
    color:#000000;
}

.search-box button:hover{
    background-color: #000000;
    color: #fff;
    box-shadow: 1px 2px 3px #fff;
}

/* search box for smrtphones */
@media screen and (max-width: 460px){
    .search-box input, .search-box button, .search-box select{
        min-width: 300px;
        margin-top: 5px;
    }    

}

/* forum info Styling */
.forum-info{
    padding: 20px;
    background-color: #111314;
}

.chart{
    font-size:20px;
    font-weight:bold;
}
/* Footer Styling */

footer{
    margin-top: 20px;
    padding: 20px;
    background-color:  #52057b;
    display: block;
    text-align: center;
}

/* ########################################### */
/*            posts.html                       */
/* ########################################### */

/* posts table's head  */
.table-head{
    display: flex;
}

.table-head div{
    padding: 5px;
    margin: 2px;
    background-color: #2C2C2C;
    font-weight: bold;
}

.table-head .status{
    flex: 5%;
}

.table-head .subjects{
    flex: 70%;
}

.table-head .replies{
    flex: 10%;
}

.table-head .last-reply{
    flex: 15%;
}

/* posts table's body  */

.table-row{
    display: flex;
}

.table-row .status, .table-row .subjects, .table-row .replies, .table-row .last-reply{
    padding: 5px;
    margin: 2px;
    background-color: #131415;
}

.table-row .status{
    flex: 5%;
    font-size: 30px;
    text-align: center;
}

.table-row .subjects{
    flex: 70%;
}

.table-row .replies{
    flex: 10%;
}

.table-row .last-reply{
    flex: 15%;
}

/* navigation path*/
.navigate{
    margin-block: 20px;
    font-weight: lighter;
    font-size: 24px;
}

.navigate a{
    color: #fff;
}

.navigate a:hover{
    color:#FF0042;
    font-weight: bolder;
}

/* Pagination*/

.pagination{
    padding: 20px;
    font-size: 15px;
}

.pagination a{
    color: #fff;
    margin-inline: 5px;
    padding: 5px 10px;
    border: solid 0.5px #fff;
}

.pagination a:hover{
    opacity: 0.5;
}

.note{
    background-color:#111314;
    padding: 20px;
    display: block;
}

.note span{
    font-size: 20px;
    margin-block: 5px;
}


/* ########################################### */
/*            detail.html                      */
/* ########################################### */

.head{
    display: flex;
    background-color: #2C2C2C;
    padding: 5px;
    font-weight: bold;
    font-size: 15px;
}

.authors{
    flex: 20%;
}

.content{
    flex: 80%;
}

.body{
    display: flex;
    background-color: #131415;
    padding: 10px;
    margin-top: 5px;
}

.body .authors .username{
    font-size: 20px;
}

.body .authors img{
    max-width: 50px;
    max-height: 80px;
}

.body .content .comment button{
    border:none;
    padding:10px;
    font-weight: bolder;
    box-shadow: 4px 6px #fff;
    cursor: pointer;
    float: right;
}

/* comment section */
.comment-area{
    margin-bottom:50px;
}

.comment-area textarea{
    width: 100%;
    min-height: 100px;
    padding: 10px;
    margin-block: 10px;
}

.comment-area input{
    float: right;
    padding: 10px;
    border-radius: 10px;
    cursor: pointer;
}

.comment-area input:hover{
    border: solid 1px #000000;
}

  </style>

  <div id="rrr">台北一日遊</div>

  <p id="krisrock"></p>

  <p id="krisrock1"></p>

<!-- <button  style="width:80px" id="tp">台北</button> -->
 <br>
  

  
        <div class="navbar">
            <nav class="navigation hide" id="navigation">
                <span class="close-icon" id="close-icon" onclick="showIconBar()"><i class="fa fa-close"></i></span>
                <ul class="nav-list">
                    <li class="nav-item"><a href="forums.html">Forums</a></li>
                    <li class="nav-item"><a href="posts.html">Posts</a></li>
                    <li class="nav-item"><a href="detail.html">Detail</a></li>
                </ul>
            </nav>
            <a class="bar-icon" id="iconBar" onclick="hideIconBar()"><i class="fa fa-bars"></i></a>
            <div class="brand">My Forum</div>
        </div>
        <!--SearchBox Section-->
        <div class="search-box">
            <div>
                <select name="" id="">
                    <option value="Everything">Everything</option>
                    <option value="Titles">Titles</option>
                    <option value="Descriptions">Descriptions</option>
                </select>
                <input type="text" name="q" placeholder="search ...">
                <button><i class="fa fa-search"></i></button>
            </div>
        </div>
    </header>
    <div class="container">
        <div class="subforum">
            <div class="subforum-title">
                <h1>General Information</h1>
            </div>
            <div class="subforum-row">
                <div class="subforum-icon subforum-column center">
                    <i class="fa fa-car center">7</i>
                </div>
                <div class="subforum-description subforum-column" >
                    <h4><a href="#">Description Title</a></h4>
                    <p>Description Content: let's try to be cool, otherwise,w at 'sthe point in libing together with people youdont' live.</p>
                </div>
                <div class="subforum-stats subforum-column center">
                    <span>24 Posts | 12 Topics</span>
                </div>
                <div class="subforum-info subforum-column">
                    <b><a href="">Last post</a></b> by <a href="">JustAUser</a> 
                    <br>on <small>12 Dec 2020</small>
                </div>
            </div>
        </div>
        <!--More-->
        
        <div class="subforum">
            <div class="subforum-title">
                <h1>General Information</h1>
            </div>
            <div class="subforum-row">
                <div class="subforum-icon subforum-column center">
                    <i class="fa fa-car center"></i>
                </div>
                <div class="subforum-description subforum-column">
                    <h4><a href="#">Description Title</a></h4>
                    <p>Description Content: let's try to be cool, otherwise,w at 'sthe point in libing together with people youdont' live.</p>
                </div>
                <div class="subforum-stats subforum-column center">
                    <span>24 Posts | 12 Topics</span>
                </div>
                <div class="subforum-info subforum-column">
                    <b><a href="">Last post</a></b> by <a href="">JustAUser</a> 
                    <br>on <small>12 Dec 2020</small>
                </div>
            </div>
            <hr class="subforum-devider">
            <div class="subforum-row">
                <div class="subforum-icon subforum-column center">
                    <i class="fa fa-car center"></i>
                </div>
                <div class="subforum-description subforum-column">
                    <h4><a href="#">Description Title</a></h4>
                    <p>Description Content: let's try to be cool, otherwise,w at 'sthe point in libing together with people youdont' live.</p>
                </div>
                <div class="subforum-stats subforum-column center">
                    <span>24 Posts | 12 Topics</span>
                </div>
                <div class="subforum-info subforum-column">
                    <b><a href="">Last post</a></b> by <a href="">JustAUser</a> 
                    <br>on <small>12 Dec 2020</small>
                </div>
            </div>
            <hr class="subforum-devider">
            <div class="subforum-row">
                <div class="subforum-icon subforum-column center">
                    <i class="fa fa-car center"></i>
                </div>
                <div class="subforum-description subforum-column">
                    <h4><a href="#">Description Title</a></h4>
                    <p>Description Content: let's try to be cool, otherwise,w at 'sthe point in libing together with people youdont' live.</p>
                </div>
                <div class="subforum-stats subforum-column center">
                    <span>24 Posts | 12 Topics</span>
                </div>
                <div class="subforum-info subforum-column">
                    <b><a href="">Last post</a></b> by <a href="">JustAUser</a> 
                    <br>on <small>12 Dec 2020</small>
                </div>
            </div>
            <hr class="subforum-devider">
            <div class="subforum-row">
                <div class="subforum-icon subforum-column center">
                    <i class="fa fa-car center"></i>
                </div>
                <div class="subforum-description subforum-column">
                    <h4><a href="#">Description Title</a></h4>
                    <p>Description Content: let's try to be cool, otherwise,w at 'sthe point in libing together with people youdont' live.</p>
                </div>
                <div class="subforum-stats subforum-column center">
                    <span>24 Posts | 12 Topics</span>
                </div>
                <div class="subforum-info subforum-column">
                    <b><a href="">Last post</a></b> by <a href="">JustAUser</a> 
                    <br>on <small>12 Dec 2020</small>
                </div>
            </div>
            <hr class="subforum-devider">
            <div class="subforum-row">
                <div class="subforum-icon subforum-column center">
                    <i class="fa fa-car center"></i>
                </div>
                <div class="subforum-description subforum-column">
                    <h4><a href="#">Description Title</a></h4>
                    <p>Description Content: let's try to be cool, otherwise,w at 'sthe point in libing together with people youdont' live.</p>
                </div>
                <div class="subforum-stats subforum-column center">
                    <span>24 Posts | 12 Topics</span>
                </div>
                <div class="subforum-info subforum-column">
                    <b><a href="">Last post</a></b> by <a href="">JustAUser</a> 
                    <br>on <small>12 Dec 2020</small>
                </div>
            </div>
        </div>
        
        <div class="subforum">
            <div class="subforum-title">
                <h1>General Information</h1>
            </div>
            <div class="subforum-row">
                <div class="subforum-icon subforum-column center">
                    <i class="fa fa-car center"></i>
                </div>
                <div class="subforum-description subforum-column">
                    <h4><a href="#">Description Title</a></h4>
                    <p>Description Content: let's try to be cool, otherwise,w at 'sthe point in libing together with people youdont' live.</p>
                </div>
                <div class="subforum-stats subforum-column center">
                    <span>24 Posts | 12 Topics</span>
                </div>
                <div class="subforum-info subforum-column">
                    <b><a href="">Last post</a></b> by <a href="">JustAUser</a> 
                    <br>on <small>12 Dec 2020</small>
                </div>
            </div>
            <hr class="subforum-devider">
            <div class="subforum-row">
                <div class="subforum-icon subforum-column center">
                    <i class="fa fa-car center"></i>
                </div>
                <div class="subforum-description subforum-column">
                    <h4><a href="#">Description Title</a></h4>
                    <p>Description Content: let's try to be cool, otherwise,w at 'sthe point in libing together with people youdont' live.</p>
                </div>
                <div class="subforum-stats subforum-column center">
                    <span>24 Posts | 12 Topics</span>
                </div>
                <div class="subforum-info subforum-column">
                    <b><a href="">Last post</a></b> by <a href="">JustAUser</a> 
                    <br>on <small>12 Dec 2020</small>
                </div>
            </div>
            <hr class="subforum-devider">
            <div class="subforum-row">
                <div class="subforum-icon subforum-column center">
                    <i class="fa fa-car center"></i>
                </div>
                <div class="subforum-description subforum-column">
                    <h4><a href="#">Description Title</a></h4>
                    <p>Description Content: let's try to be cool, otherwise,w at 'sthe point in libing together with people youdont' live.</p>
                </div>
                <div class="subforum-stats subforum-column center">
                    <span>24 Posts | 12 Topics</span>
                </div>
                <div class="subforum-info subforum-column">
                    <b><a href="">Last post</a></b> by <a href="">JustAUser</a> 
                    <br>on <small>12 Dec 2020</small>
                </div>
            </div>
            <hr class="subforum-devider">
            <div class="subforum-row">
                <div class="subforum-icon subforum-column center">
                    <i class="fa fa-car center"></i>
                </div>
                <div class="subforum-description subforum-column">
                    <h4><a href="#">Description Title</a></h4>
                    <p>Description Content: let's try to be cool, otherwise,w at 'sthe point in libing together with people youdont' live.</p>
                </div>
                <div class="subforum-stats subforum-column center">
                    <span>24 Posts | 12 Topics</span>
                </div>
                <div class="subforum-info subforum-column">
                    <b><a href="">Last post</a></b> by <a href="">JustAUser</a> 
                    <br>on <small>12 Dec 2020</small>
                </div>
            </div>

           
        </div>
        <!---->
    </div>

    <!-- Forum Info -->
    <div class="forum-info">
        <div class="chart">
            MyForum - Stats &nbsp;<i class="fa fa-bar-chart"></i>
        </div>
        <span><u>5,369</u> Posts in <u>48</u> Topics by <u>8,124</u> Members.</span><br>
        <span>Latest post: <b><a href="">Random post</a></b> on Dec 15 2021 By <a href="">RandomUser</a></span>.<br>
        <span>Check <a href="">the latest posts</a> .</span><br>
    </div>

    <footer>
        <span>&copy;  Selmi Abderrahim | All Rights Reserved</span>
    </footer>
    <script type="text/javascript">
  //NavBar
    function hideIconBar(){
        var iconBar = document.getElementById("iconBar");
        var navigation = document.getElementById("navigation");
        iconBar.setAttribute("style", "display:none;");
        navigation.classList.remove("hide");
    }

    function showIconBar(){
        var iconBar = document.getElementById("iconBar");
        var navigation = document.getElementById("navigation");
        iconBar.setAttribute("style", "display:block;");
        navigation.classList.add("hide");
    }

    //Comment
    function showComment(){
        var commentArea = document.getElementById("comment-area");
        commentArea.classList.remove("hide");
    }

    //Reply
    function showReply(){
        var replyArea = document.getElementById("reply-area");
        replyArea.classList.remove("hide");
    }

var rrrr=document.getElementById("rrr").innerText;

var jkf=rrrr.indexOf("一日遊");
if(jkf!=-1){
	var el = document.getElementById("krisrock");
	el.innerHTML = "<a href='https://www.youtube.com/?gl=TW&hl=zh-tw'/><button type='button' class='btn btn-info'>一日遊</button>";


}
var jkf1=rrrr.indexOf("台北");

if(jkf1!=-1){
	var el1 = document.getElementById("krisrock1");
	el1.innerHTML = "<a href='http://localhost:8081/jotravel/article/all?key=66'/><button type='button' class='btn btn-info'>台北</button>";


}
  
console.log(rrrr);
console.log(jkf);
console.log(jkf1);
   
   

</script>
    
    
<jsp:include page="layout/footer.jsp" />