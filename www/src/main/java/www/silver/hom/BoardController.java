package www.silver.hom;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import www.silver.service.IF_BoardService;
import www.silver.vo.BoardVO;

@Controller
public class BoardController {
	@Inject
	IF_BoardService boardservice;
	
	@GetMapping("board")
	public String board(Model model) throws Exception{
		List<BoardVO> list = boardservice.boardList();
		// 리턴받은 list변수의 값을 모델 객체로 뷰에게 전송하는 코드
		model.addAttribute("list",list);
		// 뷰를 지정
		return "board/bbs";
	}
	
	@GetMapping("bwr")
	public String bwr() throws Exception{
		return "board/bbswr";
	}
	
	@GetMapping("del")
	public String bd(@RequestParam("deltitle") String delt) throws Exception {
		boardservice.deleteBoard(delt);
		return "redirect:board";
	}
	
	@PostMapping("bwrdo")
	public String bwrdo(@ModelAttribute BoardVO boardvo) throws Exception{
//		System.out.println(boardvo.toString());
		// 컨트롤러는 클라이언트가 요청한 정보를 vo에 저장하고 서비스로 보내주는 역할
		boardservice.addBoard(boardvo);
		return "redirect:board";
	}
}
