package br.vemprafam.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.NumberFormat;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.vemprafam.dao.DaoProduto;
import br.vemprafam.pojo.Produto;

/**
 * Servlet implementation class ServletLista
 */
@WebServlet("/lista")
public class ServletLista extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletLista() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DaoProduto dao = new DaoProduto();
		List<Produto> lista = dao.getLista();
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("<head>\r\n"
				+ "<meta charset=\"ISO-8859-1\">\r\n"
				+ "<title>Lista</title>\r\n"
				+ "</head>");
		out.println("<body>");
		out.println("<table border='1'>");
		out.println("<tr>\r\n"
				+ "	<th>código</th>\r\n"
				+ "	<th>descrição</th>\r\n"
				+ "	<th>quantidade</th>\r\n"
				+ "	<th>preço</th>\r\n"
				+ "	<th>data da compra</th>\r\n"
				+ "</tr>");
		SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
		for( Produto produto: lista) {
			out.println("<tr>");
			out.println("<td>"+produto.getCodigo()+"</td>");
			out.println("<td>"+produto.getDescricao()+"</td>");
			out.println("<td>"+produto.getQuantidade()+"</td>");
			out.println("<td>"+
			NumberFormat.getCurrencyInstance().format( produto.getPreco())
			            +"</td>");
			out.println("<td>"+
			            dateFormat.format( produto.getDataCompra())
			            +"</td>");
			out.println("</tr>");
		}
		
		out.println("</table>");
		out.println("<br/>\r\n"
				+ "<a href=\"/Projeto\">voltar</a>");
		out.println("</body>");
		out.println("</html>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
