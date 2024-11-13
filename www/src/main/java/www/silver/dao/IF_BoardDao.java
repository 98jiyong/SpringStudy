package www.silver.dao;

import java.util.List;

import www.silver.vo.BoardVO;

public interface IF_BoardDao {
	
	public void insertBoard(BoardVO boardvo) throws Exception;
	public List<BoardVO> selectAll() throws Exception;
	public void deleteBoard(String delt) throws Exception;
	public BoardVO selectOne(String modt) throws Exception;
	public void updateBoard(BoardVO boardvo) throws Exception;
}
