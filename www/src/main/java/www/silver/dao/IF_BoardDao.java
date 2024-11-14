package www.silver.dao;

import java.util.List;

import www.silver.vo.BoardVO;
import www.silver.vo.PageVO;

public interface IF_BoardDao {
	
	public void insertBoard(BoardVO boardvo) throws Exception;
	public List<BoardVO> selectAll(PageVO pagevo) throws Exception;
	public void deleteBoard(String delt) throws Exception;
	public BoardVO selectOne(String modt) throws Exception;
	public void updateBoard(BoardVO boardvo) throws Exception;
	public int cntBoard() throws Exception;
	public void insertAttach(String fname) throws Exception;
	public List<String> selectAllAttach(String num) throws Exception;
}
