package www.silver.hom;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import www.silver.service.IF_BoardService;
import www.silver.vo.BoardVO;

@Controller
public class BoardController {
	@Inject
	IF_BoardService boardservice;
	
	@GetMapping("board")
	public String board() throws Exception{
		return "board/bbs";
	}
	
	@GetMapping("bwr")
	public String bwr() throws Exception{
		return "board/bbswr";
	}
	
	@PostMapping("bwrdo")
	public String bwrdo(@ModelAttribute BoardVO boardvo) throws Exception{
//		System.out.println(boardvo.toString());
		// 컨트롤러는 클라이언트가 요청한 정보를 vo에 저장하고 서비스로 보내주는 역할
		boardservice.addBoard(boardvo);
		return "board/bbs";
	}
}
