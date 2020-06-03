package scope;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/scope")
public class ScopeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		//no.jsp에서 넘긴 값 가져오기
		req.setCharacterEncoding("utf-8"); //post 한글 깨짐 방지
		//DAO의 getUser() 호출 한 후 VO에 담기
		
		String no = req.getParameter("no");
		MemberDAO dao = new MemberDAO();
		MemberVO vo = dao.getUser(Integer.parseInt(no));
		//vo를 다른 jsp에 넘겨서 출력을 하고 싶다면?
//		session.setAttribute("vo",vo);
//		res.sendRedirect("scope/result.jsp");
		HttpSession session = req.getSession();
		
		//sendRedirect : 무조건 session, forward : 무조건 request
		
		req.setAttribute("vo",vo); //무조건 forward로 실행
		RequestDispatcher rd = req.getRequestDispatcher("scope/result.jsp");
		
		rd.forward(req, res);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}














