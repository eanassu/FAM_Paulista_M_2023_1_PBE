package br.vemprafam.logica;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.vemprafam.dao.DaoProduto;
import br.vemprafam.pojo.Produto;

public class LogicaCadastro implements Logica{

	public String executar(HttpServletRequest request, HttpServletResponse response) {
		int codigo = Integer.parseInt(request.getParameter("codigo"));
		String descricao = request.getParameter("descricao");
		int quantidade = Integer.parseInt(request.getParameter("quantidade"));
		double preco = Double.parseDouble(request.getParameter("preco"));
		SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy");
		Date dataCompra;
		try {
			dataCompra = format.parse(request.getParameter("dataCompra"));
		} catch (ParseException e) {
			dataCompra = new Date();
			e.printStackTrace();
		}
		DaoProduto dao = new DaoProduto();
		dao.insert(new Produto(codigo,
			descricao,quantidade,preco,dataCompra));
		return "cadastrado.jsp";
	}
	
}
