package www.silver.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class AuthenticationInterceptor extends HandlerInterceptorAdapter{

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		System.out.println("preHandle에 진입하였습니다.");
		// 로그인 판단 유무 비즈니스 서비스를 처리 
		// 세션을 가져와서 세션이 있다면 로그인 한 사람 없다면
		// 로그인을 안했으니 메인화면으로 리턴
		HttpSession session = request.getSession();
		Object nowid = session.getAttribute("id");
		if(nowid == null) {
			response.sendRedirect(request.getContextPath() + "/");
			return false;
		}
		
		//return super.preHandle(request, response, handler);
		return true;
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub
		super.postHandle(request, response, handler, modelAndView);
	}
	
}
