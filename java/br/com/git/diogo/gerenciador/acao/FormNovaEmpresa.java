package br.com.git.diogo.gerenciador.acao;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.git.diogo.gerenciador.modelo.Banco;
import br.com.git.diogo.gerenciador.modelo.Empresa;

public class FormNovaEmpresa {

	public String executa(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {

		return "foward:formNovaEmpresa.jsp";

	}

}
