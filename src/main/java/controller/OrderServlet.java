package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class OrderServlet
 */
@WebServlet("/order")
public class OrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/view/order.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 文字化け防止
		request.setCharacterEncoding("UTF-8");
		
		// パラメータ取得
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		int item1count = Integer.parseInt(request.getParameter("item1count"));
		int item2count = Integer.parseInt(request.getParameter("item2count"));
		String payment = request.getParameter("payment");
		
		// 税込み合計金額計算
		int total = (int)((item1count*250+item2count*350)*1.1);
		
		// リクエストスコープに格納
		request.setAttribute("name", name);
		request.setAttribute("address", address);
		request.setAttribute("item1count", item1count);
		request.setAttribute("item2count", item2count);
		request.setAttribute("payment", payment);
		request.setAttribute("total", total);
		
		// "/WEB-INF/view/accept.jsp" へフォワード
		request.getRequestDispatcher("/WEB-INF/view/accept.jsp").forward(request, response);
	}

}
