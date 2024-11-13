package www.silver.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import www.silver.dao.IF_BoardDao;
import www.silver.vo.BoardVO;
import www.silver.vo.PageVO;

@Service
public class BoardServiceImpl implements IF_BoardService{
	
	@Inject
	IF_BoardDao boarddao;
	
	@Override
	public void addBoard(BoardVO boardvo) throws Exception{
		// TODO Auto-generated method stub
		viewChange(boardvo);
		// dao > mapper > DB insert
		boarddao.insertBoard(boardvo);
	}

	@Override
	public List<BoardVO> boardList(PageVO pagevo) throws Exception {
		// DB 처리작업이 필요
		
		// 날짜 데이터의 년-월-일 만 출력
		// 문자열 자르기 메서드 사용 
		// 서버에서 처리하는 방식 => 서버 사이드 렌더링
		// 작업을 서버에서 처리할 지 클라이언트에서 처리할 지는 판단해서 진행해야 할 것.
		// 문자열 자르기 같은 경우 클라이언트에서 처리해야하기 떄문에 view에서 진행하는게 적합하지만
		// 여기서 먼저 진행해본다.
//		List<BoardVO> list = boarddao.selectAll();
//		for(BoardVO b : list) {
//			String date = b.getIndate();
//			b.setIndate(date.substring(0,10));
//		}
		// 서버에서 서비스처리를 하지 않고 클라이언트에서 처리해보자
		return boarddao.selectAll(pagevo);
	}

	@Override
	public void deleteBoard(String delt) throws Exception {
		boarddao.deleteBoard(delt);
		// TODO Auto-generated method stub
	}

	@Override
	public BoardVO modBoard(String modt) throws Exception {
		return boarddao.selectOne(modt);
	}

	@Override
	public void modBoard(BoardVO boardvo) throws Exception {
		viewChange(boardvo);
		boarddao.updateBoard(boardvo);
		// TODO Auto-generated method stub
		
	}
	
	public void viewChange(BoardVO boardvo) {
		
		String viewAuth = boardvo.getViewmember();
		
		if(viewAuth == null) {
			boardvo.setViewmember("공개");
		}else{
			boardvo.setViewmember("비공개");
		}		
	}

	@Override
	public int totalCountBoard() throws Exception {
		return boarddao.cntBoard();
	}
	
}
