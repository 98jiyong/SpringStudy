package www.silver.hom;

import java.util.HashMap;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class WordController {
	HashMap<String, String> word = new HashMap<String, String>();
	
	@RequestMapping(value = "word", method = RequestMethod.GET)
	public String aaa(Model model) {
		word.put("apple", "사과");
		word.put("banana", "바나나");
		word.put("carrot", "당근");
		word.put("kiwi", "키위");
		word.put("mango", "망고");
		model.addAttribute("word", word);
		return "word/index";
	}
	
	@RequestMapping(value = "result", method = RequestMethod.POST)
	public String bbb(@RequestParam ("fruit") String fruit, Model model) {
		String a = fruit;
		for(String key : word.keySet()) {
			if(a.equals(key)) {				
//				System.out.println(key + "=" + word.get(key));
				model.addAttribute("eng", a);
				model.addAttribute("kor", word.get(key));
			}
		}
		model.addAttribute("eng",a);
		model.addAttribute("kor","저도 잘 모르겠습니다.");
		return "word/result";
	}
}
