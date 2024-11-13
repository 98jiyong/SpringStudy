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
import www.silver.vo.PageVO;

@Controller
public class BoardController {
	@Inject
	IF_BoardService boardservice;
	
	
	@GetMapping("bwr")
	public String bwr() throws Exception{
		return "board/bbswr";
	}
	
	@PostMapping("bwrdo")
	public String bwrdo(@ModelAttribute BoardVO boardvo) throws Exception{
//		System.out.println(boardvo.toString());
		// 컨트롤러는 클라이언트가 요청한 정보를 vo에 저장하고 서비스로 보내주는 역할
		boardservice.addBoard(boardvo);
		return "redirect:board";
	}
	
	@GetMapping("board")
	public String board(Model model, @ModelAttribute PageVO pagevo) throws Exception{
		if(pagevo.getPage() == null) {
			pagevo.setPage(1);
		}
		pagevo.setTotalCount(boardservice.totalCountBoard());
//		System.out.println(pagevo.getStartNo());
//		System.out.println(pagevo.getEndNo());
//		System.out.println(pagevo.getStartPage());
//		System.out.println(pagevo.getEndPage());
		List<BoardVO> list = boardservice.boardList(pagevo);
		// 리턴받은 list변수의 값을 모델 객체로 뷰에게 전송하는 코드
		model.addAttribute("list",list);
		// 뷰를 지정
		return "board/bbs";
	}

	@GetMapping("mod")
	public String bm(@RequestParam("modtitle") String modt, Model model) throws Exception {
		BoardVO bvo = boardservice.modBoard(modt);
//		System.out.println(bvo.getTitle());
//		 sysout은 서버 입장에서는 부하 걸리는 작업이다.
//		그래서 테스트 했다면 삭제하거나 주석처리를 해야 한다.
//		실제로 sysout은 잘 사용하지 않는다.
//		테스트 하기 위해서는 junit test라는 도구를 사용한다.
//		또 기록을 남기기 위해서는 로그라는 기능을 사용한다.
//		로그는 홈 컨트롤러에 가면 볼 수 있다.
		model.addAttribute("boardvo", bvo);
		return "board/bbsform";
	}
	
	@PostMapping("mod")
	public String bu(@ModelAttribute BoardVO boardvo) throws Exception {
		boardservice.modBoard(boardvo);
		return "redirect:board";
	}
	
	@GetMapping("del")
	public String bd(@RequestParam("deltitle") String delt) throws Exception {
		boardservice.deleteBoard(delt);
		return "redirect:board";
	}
	
	
}
