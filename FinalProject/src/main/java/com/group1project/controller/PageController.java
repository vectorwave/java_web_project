package com.group1project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.group1project.model.bean.Account;
import com.group1project.model.bean.Article;
import com.group1project.model.bean.Guide;
import com.group1project.model.bean.Product;
import com.group1project.model.bean.ProductComment;
import com.group1project.model.service.AccountService;
import com.group1project.model.service.ArticleService;
import com.group1project.model.service.GuideService;
import com.group1project.model.service.ProductCommentService;
import com.group1project.model.service.ProductService;

@SessionAttributes("account")
@Controller
public class PageController {
	
	@Autowired
	private ProductService pService ;
	
	

	@Autowired

	private ProductCommentService pcService;

	@Autowired
	private GuideService gService;
	
	@Autowired
	private AccountService acService;

	
	
	
//	########################前台商品頁面########################
	
	
	//前台商品頁面含page方法
	@GetMapping("front/productPage")
	public ModelAndView viewAllProducts(ModelAndView mav, 
			@RequestParam(name="p", defaultValue="1") Integer pageNumber) {
		Page<Product> page = pService.findByPage(pageNumber);
		
		mav.getModel().put("page", page);
		mav.setViewName("front/JoTravelFront/frontProductPage");
		return mav;
		
	}
	@GetMapping("/front/productPage/detail")
	public String frontIndexPage(@RequestParam("id") Integer productId,Model model){
		
		Product product= pService.getProductById(productId);
		List<ProductComment> pdComment =  pcService.getAllProductCommentByProductId(productId);
	
		model.addAttribute("product", product);
		model.addAttribute("pdComment", pdComment);
		
		return "front/JoTravelFront/frontProductDetail";
	} 
	
	
//	########################後台商品頁面########################
	
	@GetMapping("/back")
	public String backIndexPage(){
		return "backIndex";
	}
	
	@GetMapping("back/addProduct")
	public String addProduct(Model model){

		Product newPd = new Product();

		model.addAttribute("newPd", newPd);

		return "addProduct";
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
		
		
		return mav;
	
	}
	
//	###################Start 商品評論############################
	
	@GetMapping("back/ProductComment/add")
	public String addProductComment(@RequestParam(name="id") Integer productId,Model model) {
		
		
		model.addAttribute("pdComment", new ProductComment()); 
		model.addAttribute("pid", productId);
		return "addProductComment";
	}
	
	@GetMapping("back/ProductComment/all")
	public String findAllPrdouctComment(Model model) {
		
		return "findAllProductComment";
		
	}
	
	@GetMapping("back/ProductComment/search")
	public String findAllPrdouctComment(@RequestParam(value="id", defaultValue="" ,required = false) Integer prdouctId ,Model model) {
		
		
		List<ProductComment> searchPdC =  pcService.getAllProductCommentByProductId(prdouctId);
		
		for(ProductComment one:searchPdC) {
		System.out.println(one.getProuctCommentId());
		System.out.println(one.getAccount());
		System.out.println(one.getProductComment());

		}
		model.addAttribute("searchPdC", searchPdC);
		
		return "searchProductComment";
		
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
	
	
	
	
	

	
	
	// ##### Start ##### 商家導遊 Page Controller
	

	@GetMapping("searchProduct")
	@ResponseBody
	public Page<Product> searchProduct(@RequestParam("key") String key,@RequestParam(name = "p",defaultValue = "1") Integer pageNumber,Model m) {
	
		 Pageable pgb = PageRequest.of(pageNumber - 1, 3 ,Sort.Direction.DESC,"productId");
		 
		 m.addAttribute("page", pgb);
		 
		 
		 return pService.searchProductByNameWithPage(key, pgb);
	
	}

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
//		Account guideAcc = acService.getAccountById(id);
		
		mav.getModel().put("guideInfo", guideInfo);
//		mav.getModel().put("guideAcc", guideAcc);
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
		Account guideAcc = acService.getAccountById(id);
		
		mav.getModel().put("guideUpdate", guideUpdate);
		mav.getModel().put("accUpdate", guideAcc);
		mav.setViewName("updateGuide");
		return mav;
	}
	
	//搜尋功能
	@GetMapping("/guidemanagement/search")
	@ResponseBody
	public ModelAndView searchAccountByName(ModelAndView mav,
			@RequestParam(value = "key", defaultValue = "", required = false) String key,String con, Model m) {

		if(con.equals("name")) {
			List<Guide> searchGuide = gService.searchGuideByProfileName(key);
			
			if(searchGuide.isEmpty()) {
				mav.setViewName("noGuide");
				
				return mav;
			}
			
			mav.getModel().put("key", key);
			mav.getModel().put("searchGuide", searchGuide);
			mav.setViewName("allGuideSearch");
			return mav;
		};
		
		if(con.equals("id")) {
			
			boolean isNumeric =  key.matches("[+-]?\\d*(\\.\\d+)?");
			
			if(!isNumeric || key.equals("")) {
				mav.setViewName("noGuide");
				return mav;
			}
			
			Integer id = Integer.parseInt(key);
			Guide oneGuide = gService.getGuideById(id);
			
			if(oneGuide == null) {

				mav.setViewName("noGuide");
				
				return mav;
				
			} else {
				
				Account guideAcc = acService.getAccountById(id);
				
				mav.getModel().put("key", key);
				mav.getModel().put("guideAcc", guideAcc);
				mav.getModel().put("guideInfo", oneGuide);
				mav.setViewName("guideDetail");
				
				return mav;
			}
			
		};
		
		return null;		
	}
	
	// ##### End ##### 商家導遊 Page Controller 

	
	

	
}

