package com.group1project.controller;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.group1project.mail.MailUtils;
import com.group1project.model.bean.Account;
import com.group1project.model.bean.Member;
import com.group1project.model.service.AccountService;
import com.group1project.model.service.MemberService;

@Controller
@SessionAttributes(names = {"loginuser"})
public class AccountController {

//	@Autowired
	private AccountService aService;
	@Autowired
	public AccountController(AccountService aService) {
		super();
		this.aService = aService;
	}
	@Autowired
	private MailUtils mailUtils;
	
	@Autowired
	private MemberService mService;

	// 查詢單筆帳號資料
	@GetMapping("back/login/{accountid}")
	@ResponseBody
	public Account getAccountById(@PathVariable("accountid") Integer accountId) {
		return aService.getAccountById(accountId);
	}

	// 查詢所有帳號資料
//	@GetMapping("/login/findall")
//	public String getAllAccount(Model model) {
//		List<Account> accounts = aService.getAllAccount();
//		model.addAttribute("account", accounts);
//
//		return "allAccount";
//	}

	// 會員帳號新增  
	@PostMapping("back/login/insert")
	public String inserAccount(@ModelAttribute("account") Account account, Model model) {
		Date nowdate = new Date();
		account.setSignupDate(nowdate);
		
		//加密功能
		String password = getStringHash(account.getPassword(), "SHA-512");
		account.setPassword(password);
		
		aService.saveAccount(account);

		return "redirect:/back/login/findall";
	}
	
	// 商家新增帳號用 
	@PostMapping("back/login/guide/insert")
	public String inserGuideAccount(@ModelAttribute("account") Account account, Model model) {
		Date nowdate = new Date();
		account.setSignupDate(nowdate);

		aService.saveAccount(account);
		
		return "redirect:XXXXXXXXX";
	}

	// 刪除帳號
	@RequestMapping(value = "back/login/delete/{id}", method = RequestMethod.GET)
	public String deleteAccount(@PathVariable("id") Integer accountId) {
		aService.deleteAccount(accountId);
		return "redirect:/back/login/findall";
	}

	// 修改
	@GetMapping("back/login/edit")
	public String editAccount(@RequestParam("id") Integer accountId, Model model) {
		Account newAccount = aService.getAccountById(accountId);

//					Login login = new Login();
		model.addAttribute("newAccount", newAccount);
		return "editAccount";// 回到頁面
	}
	//修改
	@PostMapping("back/login/edit")
    public String postEditAccount(@ModelAttribute(name="newAccount") Account newAccount) {
		
		//加密功能
		String password = getStringHash(newAccount.getPassword(), "SHA-512");
		newAccount.setPassword(password);
		
		aService.saveAccount(newAccount);
		
		return "redirect:/back/login/findall";
		
	}
	
	//加密
	private static String getStringHash(String message, String algorithm) {
		//
		final StringBuffer buffer = new StringBuffer();
		try {
			//md是取道的加密算法
			MessageDigest md = MessageDigest.getInstance(algorithm);
			
			//將字串轉成二進制
			md.update(message.getBytes());
			//加密後得到另一個二進制的digest
			byte[] digest = md.digest();

			//遍勵全部的digest
			for (int i = 0; i < digest.length; ++i) {
				byte b = digest[i];
				//編碼後放進s
				String s = Integer.toHexString(Byte.toUnsignedInt(b));
				//長度小於二補0如果沒有就不補
				s = s.length() < 2 ? "0" + s : "" + s;
				//用buffer把多字串整成一個
				buffer.append(s);
			}
		} catch (NoSuchAlgorithmException e) {
//			System.out.println("請檢查使用的演算法，演算法有誤");
			return null;
		}
		return buffer.toString();//正列轉字串toString=編碼
	}
	
	
	
	//登入
	@RequestMapping(path = "back/logingo", method=RequestMethod.POST)
	public String loginCheck(@RequestParam("inputAccount") String inputAccount, @RequestParam("inputPassword") String inputPassword, Model model) {
		
		//加密功能
		String password = getStringHash(inputPassword, "SHA-512");
		Account queryMember = aService.findByAccPwd(inputAccount, password );

		System.out.println("queryMember=" + queryMember);
				
		if(queryMember == null) {	
			model.addAttribute("loginErrorMsg", "登入失敗,帳號不存在");
			return "redirect:/login";
		} else if(!queryMember.getPassword().equals(password)){
			model.addAttribute("loginErrorMsg", "登入失敗,密碼錯誤");
			return "redirect:/login";
		} else if(queryMember.getAccountName().equals("")) {
			model.addAttribute("loginuser", queryMember);
			return "redirect:/index";
		} else {
			model.addAttribute("loginuser", queryMember);
			return "redirect:/index";
		}
	}
	@GetMapping("back/loginout")
	public String login(SessionStatus status) {
		status.setComplete();
		return "redirect:/login";
	}
	
	
	
	
	
	
	//模糊搜尋
	@GetMapping("back/searchAccount")
	@ResponseBody
	public List<Account> searchAccount(@RequestParam("key") String key,Model m) {
	
		List<Account> searchAccount = aService.searchAccountByName(key);
		
		m.addAttribute("searchAccount", searchAccount);
		
		return searchAccount;
	
	}
	
	
	
	//前台page---------------------------------------------------------------

	// 會員帳號新增  
		@PostMapping("page/login/member/insert")
		public String pageinserAccount(@ModelAttribute("account") Account account, Model model) {
			Date nowdate = new Date();
			account.setSignupDate(nowdate);
//			Account oaccount = aService.getAccountById(account.getAccountId());
//			if(oaccount!=null) {
//				return "redirect:/";
//			}
			//加密功能
			String password = getStringHash(account.getPassword(), "SHA-512");
			account.setPassword(password);
			
			aService.saveAccount(account);

			return "redirect:/";
		}
		
		// 商家新增帳號用 
		@PostMapping("page/login/guide/insert")
		public String pageinserGuideAccount(@ModelAttribute("account") Account account, Model model) {
			Date nowdate = new Date();
			account.setSignupDate(nowdate);

			aService.saveAccount(account);
			
			return "redirect:XXXXXXXXX";
		}
	
		
		//登入
		@RequestMapping(path = "page/logingo", method=RequestMethod.POST)
		public String pageloginCheck(@RequestParam("inputAccount") String inputAccount, @RequestParam("inputPassword") String inputPassword, Model model) {
			
			//加密功能
			String password = getStringHash(inputPassword, "SHA-512");
			Account queryMember = aService.findByAccPwd(inputAccount, password );

			System.out.println("queryMember=" + queryMember);
					
			if(queryMember == null) {	
				model.addAttribute("loginErrorMsg", "登入失敗,帳號不存在");
				return "/";
			} else if(!queryMember.getPassword().equals(password)){
				model.addAttribute("loginErrorMsg", "登入失敗,密碼錯誤");
				return "/";
			} else if(queryMember.getAccountName().equals("")) {
				model.addAttribute("loginuser", queryMember);
				return "redirect:/";
			} else {
				model.addAttribute("loginuser", queryMember);
				return "redirect:/";
				
			}
		}
		
		@GetMapping("page/loginout")
		public String pagelogin(SessionStatus status) {
			status.setComplete();
			return "redirect:/";
		}
		// 查詢單筆帳號資料
		@GetMapping("page/login/{accountid}")
		@ResponseBody
		public Account pagegetAccountById(@PathVariable("accountid") Integer accountId) {
			return aService.getAccountById(accountId);
		}
		
		// 刪除帳號
		@RequestMapping(value = "page/login/delete/{id}", method = RequestMethod.GET)
		public String pagedeleteAccount(@PathVariable("id") Integer accountId) {
			aService.deleteAccount(accountId);
			return "redirect:/";
		}
		
//		 //修改
//		@GetMapping("page/login/edit")
//		public String pageeditAccount(@RequestParam("id") Integer accountId, Model model) {
//			Account newAccount = aService.getAccountById(accountId);
//
////						Login login = new Login();
//			model.addAttribute("newAccount", newAccount);
//			return "editAccount";// 回到頁面
//		}
//		//修改
//		@PostMapping("page/login/edit")
//	    public String pagepostEditAccount(@ModelAttribute(name="newAccount") Account newAccount) {
//			
//			//加密功能
//			String password = getStringHash(newAccount.getPassword(), "SHA-512");
//			newAccount.setPassword(password);
//			
//			aService.saveAccount(newAccount);
//			
//			return "redirect:/";
//			
//		}
		
		@GetMapping("page/login/updatepwd")
		public String updatepwd() {
			return "/front/JoTravelFront/pageNewPassword";
		}
		
		@GetMapping(path = "/sendEmail/{accountName}", produces = "text/plain;charset=utf-8")
		@ResponseBody
		public Map<String,String> AccountsendMail(@PathVariable("accountName") String accountName) {
			int r=0;
			String ran = "";
			
			for(int i =0; i<6; i++) {
				r = (int)(Math.random()*10);
				ran=ran+r;
			}
			System.out.println(ran);
			
			Map<String,String> mailresult = new LinkedHashMap<String, String>();
			System.out.println(accountName+" WWWW");
			Account account = aService.getAccountByName(accountName);
			if (account==null) {
				mailresult.put("msg", "沒有此帳號");
				return mailresult;
			}
			
			Member member = mService.getMemberByAccountId(account.getAccountId());
			int accountMaillen = member.getEmail().length();
			if(accountMaillen==0) {
				mailresult.put("msg", "沒有email");
				return mailresult;
			}
			String msg = sendEmail(account.getAccountName(), member.getEmail(), ran);
			
			mailresult.put("ran", ran);
			mailresult.put("msg", msg);
			
			return mailresult;
		}
		
		
		public String sendEmail(String memberName ,String memberMail, String ran){
			
			
			String subject = "JoTravel修改密碼";
			
			String htmlcontent = "<h3>" + memberName + " 會員你好</h3></br>" +
					"您修改的驗證碼如下:<br>" +ran; 
			
			boolean b = mailUtils.sendMail(memberMail,subject,htmlcontent);
			
			if(b) {
				return "已寄送相關資料至會員E-Mail";
			}else {
				return "發生錯誤，請尋求管理員幫助";
			}
			
		}
		
		//修改
		@PostMapping("page/login/edit")
	    public String pagepostEditAccount(@ModelAttribute(name="newAccount") Account newAccount) {
			
			//加密功能
			String password = getStringHash(newAccount.getPassword(), "SHA-512");
			newAccount.setPassword(password);
			
			aService.saveAccount(newAccount);
			
			return "redirect:/";
			
		}
		
		
		

}
