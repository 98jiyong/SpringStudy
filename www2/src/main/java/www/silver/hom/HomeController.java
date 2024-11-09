package www.silver.hom;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import www.silver.service.IF_MemberService;
import www.silver.vo.MemberVO1;

/** aaa
 * Handles requests for the application home page.
 */
@Controller
// Ŭ���̾�Ʈ ��û ó���� ��Ʈ�ѷ��� �Ѵ�.
// ��Ʈ�ѷ��� @Controller�� �ٿ� ����Ѵ�.
public class HomeController {
	@Inject
	IF_MemberService memberservice;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
		// ���� Ÿ���� .jsp�̸� ����Ҷ� ���ϸ� ����.
	}
	
	@PostMapping("sign")
	public String sign(@ModelAttribute MemberVO1 membervo) throws Exception {
		memberservice.insert(membervo);		
		return "home";
	}
	
	@RequestMapping(value = "timeline", method = RequestMethod.GET)
	public String timeline() {
		return "timeline";
	}
	
	@RequestMapping(value = "viewMessage", method = RequestMethod.GET)
	public String viewMessage() {
		return "viewMsg";
	}
	
}
