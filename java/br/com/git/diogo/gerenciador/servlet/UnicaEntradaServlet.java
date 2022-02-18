package br.com.git.diogo.gerenciador.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.git.diogo.gerenciador.acao.AlteraEmpresa;
import br.com.git.diogo.gerenciador.acao.CriaEmpresa;
import br.com.git.diogo.gerenciador.acao.FormNovaEmpresa;
import br.com.git.diogo.gerenciador.acao.ListaEmpresas;
import br.com.git.diogo.gerenciador.acao.MostraEmpresa;
import br.com.git.diogo.gerenciador.acao.RemoveEmpresa;

@WebServlet("/entrada")
public class UnicaEntradaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String paramAcao = request.getParameter("acao");

		String nome = null;

		if (paramAcao.equals("ListaEmpresas")) {
			ListaEmpresas acao = new ListaEmpresas();
			nome = acao.executa(request, response);

		} else if (paramAcao.equals("MostraEmpresa")) {
			MostraEmpresa acao = new MostraEmpresa();
			nome = acao.executa(request, response);
		} else if (paramAcao.equals("RemoveEmpresa")) {
			RemoveEmpresa acao = new RemoveEmpresa();
			nome = acao.executa(request, response);

		} else if (paramAcao.equals("CriaEmpresa")) {
			CriaEmpresa acao = new CriaEmpresa();
			nome = acao.executa(request, response);

		} else if (paramAcao.equals("AlteraEmpresa")) {
			AlteraEmpresa acao = new AlteraEmpresa();
			nome = acao.executa(request, response);

		} else if (paramAcao.equals("FormNovaEmpresa")) {
			FormNovaEmpresa acao = new FormNovaEmpresa();
			nome = acao.executa(request, response);

		}

		String[] tipoEElemento = nome.split(":");

		if (tipoEElemento[0].equals("foward")) {
			RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/view/" + tipoEElemento[1]);
			rd.forward(request, response);
		} else {
			response.sendRedirect(tipoEElemento[1]);
		}

	}

}
