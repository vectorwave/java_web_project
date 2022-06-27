<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    


    <title>Document</title>
</head>
<body>
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
                </div>
                </div>
                </div>
</body>
</html>