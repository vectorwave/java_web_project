<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JoTravel 揪遊四國</title>
 <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="${contextRoot}/css/bootstrap.min.css" />
    <link rel="stylesheet" href="${contextRoot}/css/all.css"/>
    <link rel="stylesheet" href="${contextRoot}/css/cart.css">
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
<!-- ---------------左側欄位--------------------- -->
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
<!-- ---------------商品欄位--------------------- -->
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
     <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k"
        crossorigin="anonymous"></script>
    
</body>
</html>