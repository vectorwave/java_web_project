package com.group1project.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.http.HttpResponse;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.group1project.model.bean.Order;

import ecpay.payment.integration.AllInOne;
import ecpay.payment.integration.domain.AioCheckOutDevide;

@Controller
public class ECPayController {
	@GetMapping("/goECPay")
	public void goECPay(HttpServletResponse response) {
		Order order  =new Order();
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
		aioCheck.setMerchantTradeNo("jotravel");
		//交易金額
		aioCheck.setTotalAmount("123");
		//交易描述
		aioCheck.setTradeDesc("ddd");
		//商品名稱
		aioCheck.setItemName("cool");
		
		//付款完成通知回傳網址
		aioCheck.setReturnURL("url");
		//Clinet端回傳付款結果網址
		aioCheck.setOrderResultURL("url");
		try {
			PrintWriter out =response.getWriter();
			response.setContentType("text/html");
			out.print(aio.aioCheckOut(aioCheck, null));
		
		} catch (IOException e) {
			
			e.printStackTrace();
		}
		
	}
}
