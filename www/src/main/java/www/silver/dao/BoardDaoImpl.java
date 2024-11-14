package www.silver.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import www.silver.vo.BoardVO;
import www.silver.vo.PageVO;

@Repository
public class BoardDaoImpl implements IF_BoardDao{
	@Inject
	SqlSession sqlsession;
	private static String mapperQuery="www.silver.dao.IF_BoardDao";
	
	@Override
	public void insertBoard(BoardVO boardvo) {
		sqlsession.insert(mapperQuery + ".inin", boardvo);
	}

	@Override
	public List<BoardVO> selectAll(PageVO pagevo) throws Exception {
		return 	sqlsession.selectList(mapperQuery + ".selectall", pagevo);
	}

	@Override
	public void deleteBoard(String delt) throws Exception {
		sqlsession.delete(mapperQuery + ".delete", delt);
	}

	@Override
	public BoardVO selectOne(String modt) throws Exception {
		return sqlsession.selectOne(mapperQuery + ".selectone", modt);
	}

	@Override
	public void updateBoard(BoardVO boardvo) throws Exception {
		sqlsession.update(mapperQuery + ".update", boardvo);
	}

	@Override
	public int cntBoard() throws Exception {
		return sqlsession.selectOne(mapperQuery + ".cntall");
	}

	@Override
	public void insertAttach(String fname) throws Exception {
		// TODO Auto-generated method stub
		sqlsession.insert(mapperQuery + ".insertattach", fname);
	}

	@Override
	public List<String> selectAllAttach(String num) throws Exception {
		return sqlsession.selectList(mapperQuery + ".selectattach", num);
	}

}
