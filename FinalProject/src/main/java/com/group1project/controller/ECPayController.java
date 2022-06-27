package com.group1project.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.http.HttpResponse;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.group1project.model.bean.Account;
import com.group1project.model.bean.Order;
import com.group1project.model.service.OrderService;

import ecpay.payment.integration.AllInOne;
import ecpay.payment.integration.domain.AioCheckOutDevide;

@Controller
@RequestMapping("ECPay")
public class ECPayController {
	
	@Autowired OrderService orderService;
	
	@GetMapping("go")
	public void goECPay(HttpServletResponse response) {
		
		//設定金流
		AllInOne aio = new AllInOne("");
		AioCheckOutDevide aioCheck = new AioCheckOutDevide();
		//特店編號
		aioCheck.setMerchantID("200214");
		//特店交易時間
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		sdf.setLenient(false);
		aioCheck.setMerchantTradeDate(sdf.format(new Date()));
		//特店交易編號
		
		aioCheck.setMerchantTradeNo("jotravel"+3344454);
		//交易金額
		aioCheck.setTotalAmount("123");
		//交易描述
		aioCheck.setTradeDesc("ddd");
		//商品名稱
		aioCheck.setItemName("cool*2#supercool*3");
	
		//付款完成通知回傳網址
		aioCheck.setReturnURL("localhost:8081/jotravel/ECPay/returnURL");
		//Clinet端回傳付款結果網址
		aioCheck.setClientBackURL("http://localhost:8081/jotravel/ECPay/show");
		try {
			PrintWriter out =response.getWriter();
			response.setContentType("text/html");
			out.print(aio.aioCheckOut(aioCheck, null));
		
		} catch (IOException e) {
			
			e.printStackTrace();
		}
		
	}
	@PostMapping("returnURL")
	public void returnURL(@RequestParam("MerchantTradeNo")String MerchantTradeNo,@RequestParam("RtnCode")int RtnCode,@RequestParam("TradeAmt")int TradeAmt,HttpServletRequest request) {
		if((request.getRemoteAddr().equalsIgnoreCase("175.99.72.1")||
				request.getRemoteAddr().equalsIgnoreCase("175.99.72.11")||
				request.getRemoteAddr().equalsIgnoreCase("175.99.72.24")||
				request.getRemoteAddr().equalsIgnoreCase("175.99.72.28")||
				request.getRemoteAddr().equalsIgnoreCase("175.99.72.32"))&&RtnCode == 1) {
			String orderIdStr = MerchantTradeNo.substring(8);
			int orderId = Integer.parseInt(orderIdStr);
		}
	}
	@GetMapping("show")
	public String showECPayOrder() {
		return "order/historyOrder";
	}
}
