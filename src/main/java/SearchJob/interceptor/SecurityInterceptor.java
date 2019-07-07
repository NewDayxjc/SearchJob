package SearchJob.interceptor;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class SecurityInterceptor implements HandlerInterceptor {
    private static final String LOGIN_URL = "/jsp/userToLogin.jsp";
    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws Exception {
        HttpSession session=httpServletRequest.getSession(true);
        Object object=session.getAttribute("user");
        Object company=session.getAttribute("company");
        System.out.println("---------进入拦截器------------");
        if((company==null||"".equals(company.toString()))&&(object==null || "".equals(object.toString()))){
            httpServletResponse.sendRedirect("/jsp/userOrCompanyLogin.jsp");
            return false;
        }else if (object==null || "".equals(object.toString())){
            httpServletResponse.sendRedirect(LOGIN_URL);
            return false;
        }
        return  true;
    }

    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

    }

    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
}
