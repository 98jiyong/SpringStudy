package www.silver.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import www.silver.dao.IF_MemberDao;
import www.silver.vo.MemberVO1;

@Service
public class MemberService implements IF_MemberService{
	
	@Inject
	IF_MemberDao memberdao;
	
	@Override
	public void insert(MemberVO1 membervo) throws Exception {
		// TODO Auto-generated method stub
		memberdao.insertOne(membervo);
	}

}
