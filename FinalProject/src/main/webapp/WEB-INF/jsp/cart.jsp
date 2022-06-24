<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!doctype html>
<html lang="en">

<head>
 
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


    <link rel="stylesheet" href="${contextRoot}/css/bootstrap.min.css" />
  <link rel="stylesheet" href="${contextRoot}/css/all.min.css"/>
    <link rel="stylesheet" href="${contextRoot}/css/cart.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="${contextRoot}/js/jquery-3.6.0.min.js"></script>
    <script src="${contextRoot}/js/bootstrap.bundle.min.js"></script>

    <title>CH11.Cart-Page</title>
</head>

<body>
    <nav class="navbar navbar-light bg-light ">
        <a href="#" class="navbar-brand mb-0 h1" style="font-weight: bold;"><i class="fas fa-heart text-info mr-1"></i>六角血拚賣賣</a>
        <div class="dropdown ml-auto">
            <button class="btn btn-cart btn-sm" type="button" id="dropdownMenuButton" data-toggle="dropdown"
                aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-shopping-cart text-dark fa-2x"></i>
                <span class="badge badge-pill badge-danger">9</span>
            </button>
            <div class="dropdown-menu dropdown-menu-right" style="min-width: 300px" aria-labelledby="dropdownMenuButton">
                <div class="p-3">
                    <table class="table table-sm ">
                        <h6>已選擇商品</h6>
                        <tbody>
                            <tr>
                                <td class="align-middle text-center">
                                    <a href="#removeModal" data-price="1999" data-title="不求人" data-toggle="modal"
                                        data-target="#removeModal"><i class="far fa-trash-alt "></i></a>
                                </td>
                                <td class="align-middle">不求人</td>
                                <td class="align-middle">1件</td>
                                <td class="align-middle text-right">$1999</td>
                            </tr>
                            <tr>
                                <td class="align-middle text-center">
                                    <a href="#removeModal" data-price="999" data-title="一級偽裝帽" data-toggle="modal"
                                        data-target="#removeModal"><i class="far fa-trash-alt "></i></a>
                                </td>
                                <td class="align-middle">一級偽裝帽</td>
                                <td class="align-middle">1件</td>
                                <td class="align-middle text-right">$999</td>
                            </tr>
                        </tbody>
                    </table>
                    <a href="#" class="btn btn-block btn-primary btn-sm text-white">確認結帳</a>
                </div>
            </div>
        </div>
    </nav>

    <section>
        <div class="jumbotron jumbotron-fluid jumbotron-bg d-flex align-items-end">
            <div class="container jumbotron-text  text-white p-4">
                <h1 class="display-4 " style="font-weight: bold;">買到剁手手！年終出清！</h1>
                <p class="lead">This is a modified jumbotron that occupies the entire horizontal space of its parent.</p>
            </div>
        </div>
    </section>

    <section class="container">
        <div class="row">
            <div class="col-md-3">
                <div class="list-group sticky-top mt-3">
                    <a href="#pane-1" class="list-group-item list-group-item-action active " data-toggle="list">全部商品</a>
                    <a href="#pane-2" class="list-group-item list-group-item-action" data-toggle="list">精品特區</a>
                    <a href="#pane-3" class="list-group-item list-group-item-action" data-toggle="list">配件優惠</a>
                    <a href="#" class="list-group-item list-group-item-action">送禮組合</a>
                    <a href="#" class="list-group-item list-group-item-action disabled" tabindex="-1" aria-disabled="true">限時下殺</a>
                </div>
            </div>

            <div class="col-md-9">
                <div class="tab-content">
                    <div class="tab-pane active" id="pane-1" role="tabpanel">
                        <div class="row">
                            <div class="col-md-4 my-3">
                                <div class="card text-center h-100 border-0 box-shadow">
                                    <img src="http://img10.360buyimg.com/n1/jfs/t13501/112/227513326/105686/aead8ab2/5a0687e5Neda8e7e8.jpg"
                                        class="card-img-top" alt="...">
                                    <div class="card-body">
                                        <h5 class="card-title " style="font-weight: bold;">不求人</h5>
                                        <p class="card-text ">抓背、抓癢、可伸縮：另有隱藏版功能，加購即可升級。</p>
                                    </div>
                                    <div class="card-footer border-top-0 bg-white">
                                        <button type="button" class="btn btn-outline-secondary btn-sm">普通版</button>
                                        <button type="button" class="btn btn-outline-secondary btn-sm">加購升級</button>
                                        <a href="#" class="btn btn-outline-secondary btn-sm mt-2 d-block"><i class="fas fa-shopping-cart mr-1"></i>加入購物車</a>
                                    </div>

                                </div>

                            </div>
                            <div class="col-md-4 my-3">
                                <div class="card text-center h-100 border-0 box-shadow">
                                    <img src="https://images.unsplash.com/photo-1491336477066-31156b5e4f35?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80"
                                        class="card-img-top" alt="...">
                                    <div class="card-body">
                                        <h5 class="card-title " style="font-weight: bold;">蚵男的手錶</h5>
                                        <p class="card-text ">特色：手錶是防水的，還可以照明。主要是射出麻醉針，當然還有時間提示功能。</p>
                                    </div>
                                    <div class="card-footer border-top-0 bg-white">
                                        <div class="btn-group " role="group" aria-label="First group">
                                            <button type="button" class="btn btn-outline-secondary btn-sm">紅</button>
                                            <button type="button" class="btn btn-outline-secondary btn-sm">黑</button>
                                            <button type="button" class="btn btn-outline-secondary btn-sm">褐</button>

                                        </div>
                                        <a href="#" class="btn btn-outline-secondary btn-sm mt-2 d-block"><i class="fas fa-shopping-cart mr-1"></i>加入購物車</a>
                                    </div>

                                </div>
                            </div>
                            <div class="col-md-4 my-3">
                                <div class="card text-center h-100 border-0 box-shadow">
                                    <img src="https://images.unsplash.com/photo-1447005497901-b3e9ee359928?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=967&q=80"
                                        class="card-img-top" alt="...">
                                    <div class="card-body">
                                        <h5 class="card-title " style="font-weight: bold;">一級偽裝帽</h5>
                                        <p class="card-text ">戴上後連老媽都認不出來。時常做錯事的人建議買一頂備著以防不時之需。</p>
                                    </div>
                                    <div class="card-footer border-top-0 bg-white">

                                        <a href="#" class="btn btn-outline-secondary btn-sm mt-2 d-block"><i class="fas fa-shopping-cart mr-1"></i>加入購物車</a>
                                    </div>

                                </div>
                            </div>
                            <div class="col-md-4 mt-4">
                                <div class="card text-center h-100 border-0 box-shadow">
                                    <img src="https://i0.wp.com/flog.cc/mag/wp-content/uploads/2013/12/Taiwan-bluw-and-white-Slipper-1.jpg?resize=660%2C450"
                                        class="card-img-top" alt="...">
                                    <div class="card-body">
                                        <h5 class="card-title " style="font-weight: bold;">+9 戰鬥靴</h5>
                                        <p class="card-text ">精品界大師-卡爾拉格斐(Karl Lagerfeld)，最新力作。+9只是最低預估值，數量有限，欲者請速速下單！</p>
                                    </div>
                                    <div class="card-footer border-top-0 bg-white">
                                        <div class="btn-group " role="group" aria-label="First group">
                                            <button type="button" class="btn btn-outline-secondary btn-sm">S</button>
                                            <button type="button" class="btn btn-outline-secondary btn-sm">M</button>
                                            <button type="button" class="btn btn-outline-secondary btn-sm" disabled>L</button>
                                            <button type="button" class="btn btn-outline-secondary btn-sm" disabled>XL</button>
                                            <button type="button" class="btn btn-outline-secondary btn-sm">XXL</button>
                                        </div>
                                        <a href="#" class="btn btn-outline-secondary btn-sm mt-2 d-block"><i class="fas fa-shopping-cart mr-1"></i>加入購物車</a>
                                    </div>

                                </div>
                            </div>
                            <div class="col-md-4 mt-4">
                                <div class="card text-center h-100 border-0 box-shadow">
                                    <img src="https://images.unsplash.com/photo-1544756944-5c447b0e9410?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"
                                        class="card-img-top" alt="...">
                                    <div class="card-body">
                                        <h5 class="card-title " style="font-weight: bold;">草莓安安</h5>
                                        <p class="card-text ">This is a wider card with supporting text below as a
                                            natural
                                            lead-in to additional content. This content is a little bit longer.</p>
                                    </div>
                                    <div class="card-footer border-top-0 bg-white">
                                        <div class="btn-group " role="group" aria-label="First group">
                                            <button type="button" class="btn btn-outline-danger btn-sm" disabled>小顆</button>

                                            <button type="button" class="btn btn-outline-danger btn-sm" disabled>中顆</button>
                                            <button type="button" class="btn btn-outline-danger btn-sm" disabled>超大顆</button>
                                        </div>
                                        <a href="#" class="btn btn-outline-danger btn-sm mt-2 d-block disabled">缺貨中</a>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane " id="pane-2" role="tabpanel">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="card text-center h-100 border-0 box-shadow">
                                    <img src="http://img10.360buyimg.com/n1/jfs/t13501/112/227513326/105686/aead8ab2/5a0687e5Neda8e7e8.jpg"
                                        class="card-img-top" alt="...">
                                    <div class="card-body">
                                        <h5 class="card-title " style="font-weight: bold;">不求人</h5>
                                        <p class="card-text ">抓背、抓癢、可伸縮：另有隱藏版功能，加購即可升級。</p>
                                    </div>
                                    <div class="card-footer border-top-0 bg-white">
                                        <button type="button" class="btn btn-outline-secondary btn-sm">普通版</button>
                                        <button type="button" class="btn btn-outline-secondary btn-sm">加購升級</button>
                                        <a href="#" class="btn btn-outline-secondary btn-sm mt-2 d-block"><i class="fas fa-shopping-cart mr-1"></i>加入購物車</a>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane " id="pane-3" role="tabpanel">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="card text-center h-100 border-0 box-shadow">
                                    <img src="https://images.unsplash.com/photo-1491336477066-31156b5e4f35?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80"
                                        class="card-img-top" alt="...">
                                    <div class="card-body">
                                        <h5 class="card-title " style="font-weight: bold;">蚵男的手錶</h5>
                                        <p class="card-text ">特色：手錶是防水的，還可以照明。主要是射出麻醉針，當然還有時間提示功能。</p>
                                    </div>
                                    <div class="card-footer border-top-0 bg-white">
                                        <div class="btn-group " role="group" aria-label="First group">
                                            <button type="button" class="btn btn-outline-secondary btn-sm">紅</button>
                                            <button type="button" class="btn btn-outline-secondary btn-sm">黑</button>
                                            <button type="button" class="btn btn-outline-secondary btn-sm">褐</button>

                                        </div>
                                        <a href="#" class="btn btn-outline-secondary btn-sm mt-2 d-block"><i class="fas fa-shopping-cart mr-1"></i>加入購物車</a>
                                    </div>

                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="card text-center h-100 border-0 box-shadow">
                                    <img src="https://i0.wp.com/flog.cc/mag/wp-content/uploads/2013/12/Taiwan-bluw-and-white-Slipper-1.jpg?resize=660%2C450"
                                        class="card-img-top" alt="...">
                                    <div class="card-body">
                                        <h5 class="card-title " style="font-weight: bold;">+9 戰鬥靴</h5>
                                        <p class="card-text ">精品界大師-卡爾拉格斐(Karl Lagerfeld)，最新力作。+9只是最低預估值，數量有限，欲者請速速下單！</p>
                                    </div>
                                    <div class="card-footer border-top-0 bg-white">
                                        <div class="btn-group " role="group" aria-label="First group">
                                            <button type="button" class="btn btn-outline-secondary btn-sm">S</button>
                                            <button type="button" class="btn btn-outline-secondary btn-sm">M</button>
                                            <button type="button" class="btn btn-outline-secondary btn-sm" disabled>L</button>
                                            <button type="button" class="btn btn-outline-secondary btn-sm" disabled>XL</button>
                                            <button type="button" class="btn btn-outline-secondary btn-sm">XXL</button>
                                        </div>
                                        <a href="#" class="btn btn-outline-secondary btn-sm mt-2 d-block"><i class="fas fa-shopping-cart mr-1"></i>加入購物車</a>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </section>

    <!---Product-Page-->
    <hr>
    <div class="container">
        <nav aria-label="breadcrumb ">
            <ol class="breadcrumb bg-transparent pl-0">
                <li class="breadcrumb-item"><a href="#">首頁</a></li>
                <li class="breadcrumb-item"><a href="#">精品專賣店</a></li>
                <li class="breadcrumb-item active" aria-current="page">不求人</li>
            </ol>
        </nav>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <div class="sticky-top" style="top: 10px;">
                    <h1>不求人<small class="text-secondary ml-1">(豪華版)</small></h1>
                    <div class="d-flex justify-content-end align-items-end">
                        <del class="text-muted">售價 $2999</del>
                        <div class="h3 ml-auto mb-0 text-danger">
                            <small>特價 $NT</small>
                            <strong> 1999</strong>
                        </div>
                    </div>
                    <hr>
                    <span>尺寸：</span>
                    <div class="btn-group btn-group-toggle btn-group-sm ml-1" data-toggle="buttons">
                        <label class="btn btn-outline-secondary  active">
                            <input type="radio" name="options" id="option1" autocomplete="off">M
                        </label>
                        <label class="btn btn-outline-secondary disabled">
                            <input type="radio" name="options" id="option2" autocomplete="off disabled">L
                        </label>
                        <label class="btn btn-outline-secondary">
                            <input type="radio" name="options" id="option3" autocomplete="off">XL
                        </label>
                    </div>
                    <div class="input-group mt-3">
                        <select name="" id="" class="form-control">
                            <option value="1">1 件</option>
                            <option value="2">2 件</option>
                            <option value="3">3 件</option>
                        </select>
                        <a href="#" class="btn btn-primary ml-1">加入購物車</a>
                    </div>
                </div>

            </div>
            <div class="col-md-8">
                <h2>天上天下不求人</h2>
                <p>This is a longer card with supporting text below as a natural lead-in to additional content. This
                    content is a little bit longer.</p>

                <div class="card border-0" style="width: 100%;">
                    <div class="card-body">
                        <h2 class="card-text text-center">長短可調</h2>
                    </div>
                    <img src="https://c.ecimg.tw/items/DEAC5QA9005XXWG/i010003_1462949607.jpg" class="card-img-top" alt="...">
                </div>
                <div class="card border-0 mt-4" style="width: 100%;">
                    <div class="card-body">
                        <h2 class="card-text text-center">德國原創設計</h2>
                    </div>
                    <img src="https://e.ecimg.tw/items/DEAC5QA9005XXWG/i010007_1462949607.jpg" class="card-img-top" alt="...">
                </div>
                <div class="card border-0 mt-4" style="width: 100%;">
                    <div class="card-body">
                        <h2 class="card-text text-center">長度17~55公分 超好用</h2>
                    </div>
                    <img src="https://f.ecimg.tw/items/DEAC5QA9005XXWG/i010004_1462949607.jpg" class="card-img-top" alt="...">
                </div>
                <div class="card mt-5">
                    <div class="card-body bg-light">
                        <h2 class="text-center">購物說明</h2>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Veniam, at! Totam, exercitationem
                            repellat. Saepe facere amet expedita perferendis voluptatem dicta dignissimos tempora ut
                            atque, rerum doloribus? Magni, blanditiis. Assumenda, distinctio!</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!---Pay-Page-->
    <hr>
    <div class="container mt-5" >
        <div class="h1 text-center"><strong>六角血拚 訂單確認</strong></div>
        <div class="row mt-3">
            <div class="col-12 col-md">
                <div class="alert alert-success alert-rounded text-center" role="alert">1.輸入訂單資料</div>
            </div>
            <div class="col-12 col-md">
                <div class="alert alert-light alert-rounded text-center" role="alert">2.金流付款</div>
            </div>
            <div class="col-12 col-md">
                <div class="alert alert-light alert-rounded text-center" role="alert">3.訂單完成</div>
            </div>
        </div>

        <div class="row justify-content-center mt-4">
            <div class="col-md-8">
                <div class="accordion" id="accordionExample">
                    <div class="card card-bottom">
                        <div class="card-header  d-flex justify-content-between" id="headingOne">
                            <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne"
                                aria-expanded="true" aria-controls="collapseOne">
                                顯示購物車細節
                            </button>
                            <div class="h3 d-inline-block mt-2">
                                <strong>$ 1059</strong>
                            </div>
                        </div>

                    </div>
                    <div id="collapseOne" class="collapse show " aria-labelledby="headingOne" data-parent="#accordionExample">
                        <table class="table table-sm">
                            <thead>
                                <tr>
                                    <th width="20"></th>
                                    <th width="100"></th>
                                    <th> 商品名稱</th>
                                    <th>數量</th>
                                    <th class="text-center" width="120">小計</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="align-middle"><a href="#removeModal" class="text-dark" data-price="999"
                                            data-title="一級偽裝帽" data-toggle="modal" data-target="#removeModal"><i class="far fa-trash-alt mr-3"></i></a></td>
                                    <td class="align-middle">
                                        <div class="card p-1 card-bottom">
                                            <img src="https://images.unsplash.com/photo-1447005497901-b3e9ee359928?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=967&q=80"
                                                alt="..." width="80px;">
                                        </div>
                                    </td>
                                    <td class="align-middle "> 一級偽裝帽</td>
                                    <td class="align-middle">1件</td>
                                    <td class="align-middle text-right">$999</td>
                                </tr>
                                <tr class="text-right">
                                    <td colspan="4"><strong>運費</strong></td>
                                    <td><strong>$ 60</strong></td>
                                </tr>
                                <tr class="text-right">
                                    <td colspan="4"><strong>合計</strong></td>
                                    <td><strong>$ 1059</strong></td>
                                </tr>
                            </tbody>

                        </table>


                    </div>
                </div>

                <div class="card text-center my-5 border-0">
                    <div class="card-header border-0">
                        <div class="h3 mt-1"> 訂購人資訊 </div>
                    </div>
                    <form class="needs-validation" novalidate>
                        <div class="form-row text-left mt-3">
                            <div class="form-group col-md-6">
                                <label for="name">姓名</label>
                                <input type="text" class="form-control " id="name" placeholder="姓名" required>
                                <div class="invalid-feedback">請填寫姓名</div>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="mail">Email</label>
                                <input type="email" class="form-control" id="mail" placeholder="Email" required>
                                <div class="invalid-feedback">請填寫Email</div>
                            </div>
                        </div>
                        <div class="form-row text-left">
                            <div class="form-group col-md-4">
                                <label for="section">國家</label>
                                <select name="" id="section" class="form-control">
                                    <option value="">台灣</option>
                                    <option value="">...</option>
                                </select>
                            </div>
                            <div class="form-group col-md-4">
                                <label for="zone">城市</label>
                                <select name="" id="zone" class="form-control">
                                    <option value="">台北市</option>
                                    <option value="">台中市</option>
                                    <option value="">高雄市</option>
                                </select>
                            </div>
                            <div class="form-group col-md-4">
                                <label for="postal-code">郵遞區號</label>
                                <input type="text" class="form-control" id="postal-code" placeholder="" required>
                            </div>
                        </div>
                        <div class="form-row">
                            <label for="address">地址</label>
                            <input type="text" class="form-control" id="mail" placeholder="永遠開心一路123號" required>
                        </div>
                        <div class="mt-3 d-flex justify-content-end">
                            <button class="btn btn-secondary mr-2">繼續選購</button>
                            <button type="submit" class="btn btn-primary">確認付款</button>
                        </div>
                    </form>

                    <script>
                        // Example starter JavaScript for disabling form submissions if there are invalid fields
                        (function () {
                            'use strict';
                            window.addEventListener('load', function () {
                                // Fetch all the forms we want to apply custom Bootstrap validation styles to
                                var forms = document.getElementsByClassName('needs-validation');
                                // Loop over them and prevent submission
                                var validation = Array.prototype.filter.call(forms, function (form) {
                                    form.addEventListener('submit', function (event) {
                                        if (form.checkValidity() === false) {
                                            event.preventDefault();
                                            event.stopPropagation();
                                        }
                                        form.classList.add('was-validated');
                                    }, false);
                                });
                            }, false);
                        })();
                    </script>

                </div>
            </div>
        </div>

    </div>

    <!---Finish-Page-->
    <hr>
    <div class="container mt-5">
        <div class="h1 text-center"><strong>六角血拚 訂單完成</strong></div>
        <div class="row justify-content-center mt-3">
            <div class="col-md-8 text-center">
                <div class="alert alert-success alert-rounded " role="alert">3.訂單完成</div>
                <div class="h4">購買資訊</div>
                <table class="table table-sm my-4">
                    <thead>
                        <tr>
                            <th width="100"></th>
                            <th> 商品名稱</th>
                            <th>數量</th>
                            <th class="text-center" width="120">小計</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="align-middle">
                                <div class="card p-1 card-bottom">
                                    <img src="https://images.unsplash.com/photo-1447005497901-b3e9ee359928?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=967&q=80"
                                        alt="..." width="80px;">
                                </div>
                            </td>
                            <td class="align-middle "> 一級偽裝帽</td>
                            <td class="align-middle">1件</td>
                            <td class="align-middle text-right">$999</td>
                        </tr>
                        <tr class="text-right">
                            <td colspan="3"><strong>運費</strong></td>
                            <td><strong>$ 60</strong></td>
                        </tr>
                        <tr class="text-right">
                            <td colspan="3"><strong>合計</strong></td>
                            <td><strong>$ 1059</strong></td>
                        </tr>
                    </tbody>
                </table>

                <div class="h4 mt-5">個人資料</div>
                <table class="table  mt-3 text-left">
                    <tbody>
                        <tr>
                            <th width="200">Email</th>
                            <td>ccc9***@happymail.com</td>
                        </tr>
                        <tr>
                            <th>姓名</th>
                            <td>王*明</td>
                        </tr>
                        <tr>
                            <th>電話</th>
                            <td>0912-345***</td>
                        </tr>
                        <tr>
                            <th>地址</th>
                            <td>台北市晴天路二段321號5樓</td>
                        </tr>
                    </tbody>

                </table>
            </div>
        </div>
        <div class="text-center mt-4">
            <a href="#" class="btn btn-primary px-5">回首頁</a>
        </div>

    </div>

    <footer class="bg-light mt-5">
        <div class="container py-5 text-center">
            <span>© Copright 2017 六角血拼賣賣</span>
            <div class="d-md-inline pt-2">
                <a href="#" class="ml-2">Instagrame</a>
                <a href="#" class="ml-2">Facebook</a>
                <a href="#" class="ml-2">About</a>
            </div>
            <div class="mt-2">
                <span>Made with Bootstrap4</span>
            </div>
        </div>
    </footer>

    <!-- Modal -->
    <div class="modal fade" id="removeModal" tabindex="-1" role="dialog" aria-labelledby="removeModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header bg-danger">
                    <h5 class="modal-title text-white" id="exampleModalLabel">Modal title</h5>
                    <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    ...
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">取消</button>
                    <button type="button" class="btn btn-outline-danger">確定</button>
                </div>
            </div>
        </div>
    </div>
    
    <script>
        Cookies.get()
        Cookies.set()
        $(document).ready(function () {
            $('#removeModal').on('show.bs.modal', function (event) {
                var btn = $(event.relatedTarget);
                var title = btn.data('title');
                var price = btn.data('price');
                var modal = $(this);
                modal.find('.modal-title').text('確認刪除 ' + title);
                modal.find('.modal-body').text('您要刪除 ' + title + ' $ ' + price + '元 嗎?');
            });

        });

    </script>


</body>

</html>