package br.com.git.diogo.gerenciador.acao;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.git.diogo.gerenciador.modelo.Banco;
import br.com.git.diogo.gerenciador.modelo.Empresa;

public class ListaEmpresas {

	public String executa(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("listando empresas");

		Banco banco = new Banco();
		List<Empresa> lista = banco.getEmpresas();

		request.setAttribute("empresas", lista);
		return "foward:listaEmpresas.jsp";
	}

}
