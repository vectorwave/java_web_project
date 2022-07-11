package com.group1project.controller;

import java.io.Console;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.group1project.model.bean.CustomerBean;
import com.group1project.model.service.CustomerService;

@Controller
public class CustomerSupportController {

	@Autowired
	private CustomerService csService;

	@Autowired
	private JavaMailSender mailSender;

	@RequestMapping("/back/customerSupport")
	@ResponseBody
	public Map<String, Integer> pie() {

		List<CustomerBean> csbList = csService.findAllCustomer();// 先找出所有資料
		Map<String, Integer> map = new HashMap<String, Integer>();// 將所有serviceInfos裝在HashMap的string型別的key裡
		for (CustomerBean csb : csbList) {
			String thisServiceInfo = csb.getServiceInfo();// 因為是一筆一筆拿出來，每次拿到一筆後去比對是否在csbList的list裡已經有相同的問題
			if (!map.containsKey(thisServiceInfo)) {// 拿到後比對，如果map裡沒有這個ServiceInfo就變成數量1
				map.put(thisServiceInfo, 1);// 拿到後比對，如果map裡沒有這個ServiceInfo就變成數量1
			} else {// 如果對比完成後已經有相同的
				map.put(// 在map物件裡放
						thisServiceInfo, // 這個已經有的key值的
						map.get(thisServiceInfo) + 1// 的值加一
				);
			}
		}

		return map;
	}

	// 導去智慧客服畫面
	@GetMapping("/ai")
	public String ai() {

		return "Customer/ai";

	}

	// 送出表單後查詢單筆資料
	@GetMapping("/message/selectOne")
	public ModelAndView selectOnePage(ModelAndView mav) {

		CustomerBean lastMag = csService.findById(null);
		mav.getModel().put("lastMag", lastMag);
		mav.setViewName("Customer/selectOne");
		return mav;
	}

	@GetMapping("/staff/message/selectAll")
	public ModelAndView selectAllPage(ModelAndView mav,
			@RequestParam(name = "p", defaultValue = "1") Integer pageNumber) {

		Page<CustomerBean> page = csService.findByPage(pageNumber);

		// List<CustomerBean> allCus = csService.findAllCustomer();
		mav.getModel().put("page", page);
		// mav.getModel().put("allCus", allCus);
		mav.setViewName("Customer/selectAll");
		return mav;

	}

	@GetMapping("/staff/message/selectAllByProcessStatus")
	public ModelAndView findAllByprocessStatus(ModelAndView mav,
			@RequestParam(name = "p", defaultValue = "1") Integer pageNumber) {

		Page<CustomerBean> page = csService.findByPage(pageNumber);

		List<CustomerBean> allCus = csService.findAllByprocessStatus();

		mav.getModel().put("allCus", allCus);
		mav.setViewName("Customer/selectAllByps");
		return mav;

	}

	// 模糊搜尋
	@GetMapping("/message/findByServiceInfoLike")
	public ModelAndView findByServiceInfoLike(ModelAndView mav, @RequestParam String findByServiceInfoLike) {
		List<CustomerBean> allCus = csService.findByServiceInfoLike(findByServiceInfoLike);

		mav.getModel().put("allCus", allCus);

		mav.setViewName("Customer/serviceInfo");

		return mav;

	}

	// 導去輸入表單
	@RequestMapping("/message/form")
	public ModelAndView formPage() {

		// Model and View, view 規定去哪個 jsp, model 裡放去那個 jsp 帶的資料
		ModelAndView mav = new ModelAndView();

		// 空的 java bean, 要塞進 model, 讓 ModelAndView 帶去 jsp
		CustomerBean cs = new CustomerBean();

		mav.getModel().put("CustomerBean", cs); // java bean 塞進 model
		mav.setViewName("Customer/form1"); // ModelAndView 裡規定去哪個 jsp
		return mav;
	}

	// 寫入資料庫
	// @RequestMapping(value="/message/insert", method=RequestMethod.GET)
	// @GetMapping("/message/insert")
	// @RequestMapping(value="/message/insert", method=RequestMethod.POST)
	// @PostMapping("/message/insert")
	@RequestMapping("/message/insert")
	public ModelAndView insertPage(@ModelAttribute(name = "CustomerBean") CustomerBean cs) throws MessagingException {

		cs.setProcessStatus("處理中");

		CustomerBean csb = csService.insert(cs); // insert不需有回傳值

		String from = "客服通知信<roger9527vivi@gmail.com>";
		String to = cs.getEmail();
		MimeMessage message = mailSender.createMimeMessage();
		MimeMessageHelper helper = new MimeMessageHelper(message);

		helper.setFrom(from);
		helper.setTo(to);
		helper.setSubject("感謝您留言");
		// message.setText("將在48小時內回覆您");
		boolean html = true;
		helper.setText("這裏是JoTravel 揪遊四國的客服，感謝您此次的咨詢"
				+ "<br>關於您咨詢的問題，我們會及時加以確認。"
				+ "<br>我們是依序確認郵件，可能需要幾小時才能回復您，請您知悉。"
				+ "<br>根據您詢問的問題，我們可能無法給您滿意的答復，請您諒解。"
				+ "<br>我們將會保密您的個人資料及郵件內容，不會讓第三方知道。"
				+ "<br>"
				+ "<br>"
				+ "感謝您的來信。", html);
		// helper.setText("問題："+"<b>"+cusmes.getMessageQuest()+"</b><br>"+"回覆:"+"<b>"+cusmes.getMessagetext()+"</b>",
		// html);
		mailSender.send(message);

		ModelAndView mav = new ModelAndView();
		CustomerBean csResult = csService.findById(csb.getId());
		mav.getModel().put("csResult", csResult);
		mav.setViewName("Customer/selectOne1");
		return mav;
	}

	// 導去修改畫面
	@GetMapping("/message/editForm{id}")
	public ModelAndView editFormPage(ModelAndView mav, @PathVariable Integer id) {

		mav.getModel().put("id", id);// 抓到修改的對象的id

		mav.getModel().put("customerBean2", new CustomerBean());// 將空物件放進model

		List<CustomerBean> allCus = csService.findAllCustomer();
		mav.getModel().put("allCus", allCus);

		mav.setViewName("Customer/editForm");

		return mav;
	}

	// @PostMapping("/message/editForm")
	// public editFormPage(@ModelAttribute(name="") ModelAndView mav) {
	//
	//
	//
	// mav.getModel().put("customerBean2", new CustomerBean());// 將空物件放進model
	//
	// List<CustomerBean> allCus = csService.findAllCustomer();
	// mav.getModel().put("allCus", allCus);
	//
	// mav.setViewName("Customer/editForm1");
	//
	// return mav;
	// }

	// 確認修改
	@GetMapping("/message/edit")
	public ModelAndView editPage(ModelAndView mav, Integer id, @ModelAttribute("customerBean2") CustomerBean csb) throws MessagingException {

			
		
		String from = "客服通知信<roger9527vivi@gmail.com>";
		String to = csb.getEmail();
		String re = csb.getRemark();
		MimeMessage message = mailSender.createMimeMessage();
		MimeMessageHelper helper = new MimeMessageHelper(message);

		helper.setFrom(from);
		helper.setTo(to);
		helper.setSubject("關於您反映的問題");
		// message.setText("將在48小時內回覆您");
		boolean html = true;
		helper.setText("感謝您的來信。"
				+"<br>我們是JoTravel 揪遊四國的客服中心。"
				+"<br>"
				+"<br>感謝您耐心等候"
				+"<br>"
				+"客服已做以下回覆:"
				+"<br>"
				+"<h1>"
				+re
				+"</h1>"
				+"</br>"
				, html);
		// helper.setText("問題："+"<b>"+cusmes.getMessageQuest()+"</b><br>"+"回覆:"+"<b>"+cusmes.getMessagetext()+"</b>",
		// html);
		mailSender.send(message);
		
		
		// 資料庫修改
		csService.editOne(csb);

		// 資料庫查詢, 查詢完, 給前端
		List<CustomerBean> allCus = csService.findAllCustomer();
		mav.getModel().put("allCus", allCus);
		mav.setViewName("redirect:/staff/message/selectAll");
		return mav;
	}

	@GetMapping("/message/delete{id}")
	public ModelAndView deletePage(ModelAndView mav, @PathVariable Integer id,
			@ModelAttribute("customerBean2") CustomerBean csb) {
		csService.deleteById(id);

		mav.setViewName("redirect:/staff/message/selectAll");

		return mav;
	}

}