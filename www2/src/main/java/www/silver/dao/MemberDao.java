package www.silver.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import www.silver.vo.MemberVO1;

@Repository
public class MemberDao implements IF_MemberDao{
	
	@Inject
	SqlSession sqlSession;
	private static String mapperQuery="www.silver.dao.IF_MemberDao";
	
	@Override
	public void insertOne(MemberVO1 membervo) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.insert(mapperQuery + ".insertOne", membervo);
	}
	
	
}
