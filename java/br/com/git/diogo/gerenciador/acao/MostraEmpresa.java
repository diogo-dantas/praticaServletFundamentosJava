package br.com.git.diogo.gerenciador.acao;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.git.diogo.gerenciador.modelo.Banco;
import br.com.git.diogo.gerenciador.modelo.Empresa;

public class MostraEmpresa {

	public String executa(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String paramId = request.getParameter("id");
		Integer id = Integer.valueOf(paramId);

		Banco banco = new Banco();

		Empresa empresa = banco.buscaEmpresaPelaId(id);

		request.setAttribute("empresa", empresa);

		return "foward:formAlteraEmpresa.jsp";

	}

}
