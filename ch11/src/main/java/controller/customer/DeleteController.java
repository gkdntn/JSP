package controller.customer;

import java.io.IOException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.CustomerService;

@WebServlet("/customer/delete.do")
public class DeleteController extends HttpServlet{

	private static final long serialVersionUID = 1654185732463498798L;

	// 로거생성
	private Logger logger = LoggerFactory.getLogger("DeleteController");
	
	private CustomerService service = CustomerService.INSTANCE;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		// 데이터 수신
		String custId = req.getParameter("custId");

		// System.out.println("custId : " + custId);
		logger.debug("custId : " + custId);
		
		
		// 서비스 실행
		service.deleteCustomer(custId);
		
		// 리다이렉트
		resp.sendRedirect("/ch11/customer/list.do");
		
	}
	
}
