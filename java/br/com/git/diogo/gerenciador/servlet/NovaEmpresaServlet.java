package br.com.git.diogo.gerenciador.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class NovaEmpresaServlet
 */
@WebServlet("/novaEmpresa")
public class NovaEmpresaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("Cadastrando nova empresa!");
		String nomeEmpresa = request.getParameter("nome");

		PrintWriter out = response.getWriter();
		out.println("<html><meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">" + "<body> Empresa "
				+ nomeEmpresa + " cadastrada com sucesso! </body></html>");

	}

}