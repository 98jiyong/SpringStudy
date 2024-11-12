package www.silver.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import www.silver.vo.BoardVO;

@Repository
public class BoardDaoImpl implements IF_BoardDao{
	@Inject
	SqlSession sqlsession;
	private static String mapperQuery="www.silver.dao.IF_BoardDao";
	
	@Override
	public void insertBoard(BoardVO boardvo) {
		// TODO Auto-generated method stub
		sqlsession.insert(mapperQuery + ".inin", boardvo);
		
	}

	@Override
	public List<BoardVO> selectAll() throws Exception {
		// TODO Auto-generated method stub
		return 	sqlsession.selectList(mapperQuery + ".selectall");
	}

}
