package group.tonight.schmsite_springboot.control;

import group.tonight.schmsite_springboot.dao.BaseResponseBean;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;

@RestController
@RequestMapping(value = "/api")
public class ApiControl {
    @GetMapping(value = "/hehe")
    public String hehe() {
        return "hello world";
    }

    @PostMapping(value = "/regedit")
    public BaseResponseBean register(HttpServletRequest request) {
        String uname = request.getParameter("uname");
        String upass = request.getParameter("upass");
        String tname = request.getParameter("tname");
        String sex = request.getParameter("sex");
        String birth = request.getParameter("birth");
        String tel = request.getParameter("tel");
        String addrs = request.getParameter("addrs");
        String qq = request.getParameter("qq");




        return new BaseResponseBean();
    }

    @PostMapping(value = "/login")
    public BaseResponseBean login(HttpServletRequest request) {
        String username = request.getParameter("uname");
        String password = request.getParameter("upass");
        String utype = request.getParameter("utype");
        String pagerandom = request.getParameter("pagerandom") == null ? "" : request.getParameter("pagerandom");
        String random = (String) request.getSession().getAttribute("random");
        if (!pagerandom.equals(random) && request.getParameter("a") != null) {
            request.setAttribute("random", "");
//            go("/login.jsp", request, response);
        } else {

//            String sql1 = "select * from sysuser where uname='" + username + "' and upass='" + password + "'  ";
//            List<HashMap> userlist1 = dao.select(sql1);
//            if (userlist1.size() == 1) {
//                request.getSession().setAttribute("admin", userlist1.get(0));
//                gor("/schmsite/index.jsp", request, response);
//            } else {
//                request.setAttribute("error", "");
//                go("/login.jsp", request, response);
//            }


        }

        return new BaseResponseBean();
    }
}
