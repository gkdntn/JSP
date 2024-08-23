package sub1;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/greeting.do") // xml에서 하는 서블릿 등록과 주소 맵핑을 한번에 처리하는 명령어
public class GreetingServlet extends HttpServlet{
	private static final long serialVersionUID = 7256300011072658008L;

	@Override
	public void init() throws ServletException {
		System.out.println("GreetingServlet init...");
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("GreetingServlet doGet...");
		
		resp.setContentType("text/html;charset=utf-8");
		
		PrintWriter writer = resp.getWriter();
		writer.println("<html>");
		writer.println("<head>");
		writer.println("<meta charset='UTF-8'/>");
		writer.println("<title>GreetingServlet</title>");
		writer.println("</head>");
		writer.println("<body>");
		writer.println("<h3>GreetingServlet</h3>");
		writer.println("<a href='/ch09/hello.do'>hello</a>");
		writer.println("<a href='/ch09/welcome.do'>welcome</a>");
		writer.println("<a href='/ch09/greeting.do'>greeting</a>");
		writer.println("</body>");
		writer.println("</html>");
		writer.close();
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("GreetingServlet doPost...");
	}
	
	private void destory() {
		System.out.println("GreetingServlet destory...");
	}
	
}
