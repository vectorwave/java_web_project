package com.group1project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
import com.group1project.model.bean.Guide;
import com.group1project.model.bean.Product;
import com.group1project.model.bean.ProductComment;
import com.group1project.model.service.GuideService;
import com.group1project.model.bean.Article;
import com.group1project.model.service.ArticleService;
import com.group1project.model.bean.Account;
import com.group1project.model.bean.Feedback;
import com.group1project.model.service.FeedbackService;
import com.group1project.model.service.ProductService;

@SessionAttributes("account")
@Controller
public class PageController {
	
	@Autowired
	private ProductService pService ;
	
	
	
	@GetMapping("/back")
	public String backIndexPage(){
		return "backIndex";
	}
	@GetMapping("/back/car")
	public String carPage(){
		return "cart";
	} 
	@GetMapping("/back/car2")
	public String carPage2(){
		return "front/frontProductList";
	} 
	
	@GetMapping("back/addProduct")
	public String addProduct(Model model){

//		Account account = new Account();
		Product newPd = new Product();
				
//		Integer userId = account.getAccountId();
//		Integer userId = null;
		model.addAttribute("newPd", newPd);
//		model.addAttribute("userId", userId);

		return "addProduct";
	}
	
//	@GetMapping("/login/insert")
//	public String insertAccountPage(Model model) {
//		Account account = new Account();
//		
//		model.addAttribute("account", account);
//		return "addAccount";
//	}
	
//	@GetMapping("back/allProduct2")
//	public String productAll() {
//		return "findAllProduct";
//	}
//	
	
//	@GetMapping("back/Product/all")
//	public String findAllPrdouct(@RequestParam(name="p", defaultValue = "1") Integer pageNumber, Model model) {
//		
//		Page<Product> page = pService.findByPage(pageNumber);
//		
//		model.addAttribute("page", page);
//		
//		return "findAllProduct2";
//		
//	}
	//前台商品頁面含page方法
	@GetMapping("front/allProduct")
	public ModelAndView viewAllProducts(ModelAndView mav, 
			@RequestParam(name="p", defaultValue="1") Integer pageNumber) {
		Page<Product> page = pService.findByPage(pageNumber);
		
		mav.getModel().put("page", page);
		mav.setViewName("front/frontProductList");
		return mav;
	
	}
	
	
	@GetMapping("back/allProduct")
	@ResponseBody
	public ModelAndView searchProductByPage(ModelAndView mav, 
			@RequestParam(name="p", defaultValue="1") Integer pageNumber,@RequestParam(value="key",defaultValue="" ,required = false) String key ,Model m) {
		
		Pageable pgb = PageRequest.of(pageNumber - 1, 5 ,Sort.Direction.DESC,"productId");
		Page<Product> page = pService.searchProductByNameWithPage(key, pgb);
		
		mav.getModel().put("page", page);
		mav.getModel().put("key", key);
		mav.setViewName("findAllProduct2");
		
		
		
		//test
		
//		m.addAttribute("account", accountBean.getId);
//		System.out.println("123");;
//		
//		
		return mav;
	
	}
	@GetMapping("back/ProductComment/add")
	public String addProductComment(@RequestParam(name="id") Integer productId,Model model) {
		
		
		model.addAttribute("pdComment", new ProductComment()); 
		model.addAttribute("pid", productId);
		return "addProductComment";
	}
	

	
	
//	@GetMapping("searchProduct")
//	@ResponseBody
//	public Page<Product> searchProduct(@RequestParam("key") String key,@RequestParam(name = "p",defaultValue = "1") Integer pageNumber,Model m) {
//	
//		 Pageable pgb = PageRequest.of(pageNumber - 1, 3 ,Sort.Direction.DESC,"productId");
//		 
//		 m.addAttribute("page", pgb);
//		 
//		 return pService.searchProductByNameWithPage(key, pgb);
//	
//	}

	// ##### Start ##### feedback Page Controller
	@Autowired
	private FeedbackService fService;
	
	
	@GetMapping("back/allFeedback")
	public ModelAndView Feedback(ModelAndView mav, 
			@RequestParam(name="p", defaultValue="1") Integer pageNumber) {
		System.out.println(pageNumber);
		Page<Feedback> page = fService.findByPage(pageNumber);
		
		mav.getModel().put("page", page);
		mav.setViewName("findAllFeedback");
		return mav;
	}
	
	@Autowired
	private ArticleService aService;
	
	@GetMapping("article/add")
	public String addArticlePage(Model model) {
		
		Article article=new Article();
		
		
		
		model.addAttribute("article", article);
	
		
		return "editArticle";
	}
	
	// ##### Start ##### 商家導遊 Page Controller
	

	@GetMapping("searchProduct")
	@ResponseBody
	public Page<Product> searchProduct(@RequestParam("key") String key,@RequestParam(name = "p",defaultValue = "1") Integer pageNumber,Model m) {
	
		 Pageable pgb = PageRequest.of(pageNumber - 1, 3 ,Sort.Direction.DESC,"productId");
		 
		 m.addAttribute("page", pgb);
		 
		 
		 return pService.searchProductByNameWithPage(key, pgb);
	
	}
	
	


	@Autowired
	private GuideService gService;
	
	//所有商家頁面
	@GetMapping("/guidemanagement")
	public ModelAndView allGuidePage(ModelAndView mav, @RequestParam(name="p", defaultValue = "1") Integer pageNumber) {
		
		Page<Guide> page = gService.findByPage(pageNumber);
		
		Integer history = pageNumber;
		
		mav.getModel().put("page", page);
		mav.setViewName("allGuide");
		
		return mav;
	}
	
	//導遊詳細資訊
	@GetMapping("/guidemanagement/info/{id}")
	public ModelAndView guideDetails(ModelAndView mav, @PathVariable("id") int id) {
		Guide guideInfo = gService.getGuideById(id);
		mav.getModel().put("guideInfo", guideInfo);
		mav.setViewName("guideDetail");
		return mav;
	}
	
	
	//新增導遊
	@GetMapping("/guidemanagement/addguide")
	public ModelAndView insertGuide(ModelAndView mav) {
		
		Guide newGuide = new Guide();
		mav.getModel().put("addGuide", newGuide);
		mav.setViewName("addGuide");
		
		return mav;
	}
	
	//更新導遊
	@GetMapping("/guidemanagement/update/{id}")
	public ModelAndView updateGuideInfo(ModelAndView mav, @PathVariable("id") int id) {
		Guide guideUpdate = gService.getGuideById(id);
		mav.getModel().put("guideUpdate", guideUpdate);
		mav.setViewName("updateGuide");
		return mav;
	}
	
	// ##### End ##### 商家導遊 Page Controller 

	
	@GetMapping("article/all")
	public ModelAndView viewAllArticles(ModelAndView mav, 
			@RequestParam(name="p", defaultValue = "1") Integer pageNumber,@RequestParam(value="key",defaultValue="" ,required = false) String key,Model m) {
		//Page<Article> page = aService.findByPage(pageNumber);
		
		Pageable pgb = PageRequest.of(pageNumber - 1, 5 ,Sort.Direction.DESC,"articleId");

		Page<Article> page = aService.searchArticleByTitleWithPage(key, pgb);

		mav.getModel().put("page", page);
		mav.getModel().put("key", key);
		mav.setViewName("viewArticles");
		return mav;
	}

	
	
	@GetMapping("front/")
	public String frontPage(){
		return "frontend";
	} 
}

