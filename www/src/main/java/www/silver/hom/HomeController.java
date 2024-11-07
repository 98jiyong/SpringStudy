package www.silver.hom;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

/** aaa
 * Handles requests for the application home page.
 */
@Controller
// Ŭ���̾�Ʈ ��û ó���� ��Ʈ�ѷ��� �Ѵ�.
// ��Ʈ�ѷ��� @Controller�� �ٿ� ����Ѵ�.
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	// value���� /�� �޾� ����
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
		// ���� Ÿ���� .jsp�̸� ����Ҷ� ���ϸ� ����.
	}
	
	@RequestMapping(value = "timeline", method = RequestMethod.GET)
	public String timeline() {
		return "timeline";
	}
	
	@RequestMapping(value = "viewMessage", method = RequestMethod.GET)
	public String viewMessage(@RequestParam("time") String time, @RequestParam("name") String name,
			Model model) {
		System.out.println(time + "/" + name);
		model.addAttribute("변수명","값");
		model.addAttribute("time",time);
		model.addAttribute("name",name);
		return "viewMsg";
	}
	
	@RequestMapping(value = "viewMessage", method = RequestMethod.POST)
	public String viewMessage1(@RequestParam("time") String time, @RequestParam("name") String name,
			Model model) {
		System.out.println(time + "/" + name);
		model.addAttribute("변수명","값");
		model.addAttribute("time",time);
		model.addAttribute("name",name);
		return "viewMsg";
	}
	
}
