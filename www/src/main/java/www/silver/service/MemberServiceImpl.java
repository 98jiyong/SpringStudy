package www.silver.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import www.silver.dao.IF_MemberDao;
import www.silver.vo.MemberVO;

@Service	// 해당 클래스를 객체로 만들어라...
public class MemberServiceImpl implements IF_MemberService{
	@Inject
	IF_MemberDao memberdao;
	
	@Override
	public void join(MemberVO membervo) throws Exception {
		
		// TODO Auto-generated method stub
		System.out.println("join 서비스");
		// 아이디 중복검사 등 할 수 있다...<생략>
		// dao에게 작업지시해야 한다...
		// 실제 데이터를 저장하도록 지시한다...
		memberdao.insertOne(membervo);
	}

}
