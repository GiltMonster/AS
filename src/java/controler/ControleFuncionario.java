package controler;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Departamento;
import model.EmpresaDao;
import model.Funcionario;

/**
 *
 * @author lucas.scampos4
 */
@WebServlet(name = "ControleFuncionario", urlPatterns = {"/ControleFuncionario"})
public class ControleFuncionario extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String flag = request.getParameter("flag");
        String menssagem = "";
        EmpresaDao dao = new EmpresaDao();
        Funcionario func = new Funcionario();
        if (flag.equalsIgnoreCase("BuscarDepartamento")) {
            //Busca os comentarios cadastrados
            List<Departamento> departarmentos = dao.listarDepartamento();

            request.setAttribute("departamentos", departarmentos);
            RequestDispatcher disp = request.getRequestDispatcher("IncluirFuncionario.jsp");
            disp.forward(request, response);

        } else if (flag.equalsIgnoreCase("IncluirFuncionario")) {
            //Salvar os dados digitados na pagina Incluir
            String email, nome, cargo, idDep;
            Double salario;
            email = request.getParameter("email");
            nome = request.getParameter("nome");
            cargo = request.getParameter("cargo");
            salario = Double.parseDouble(request.getParameter("salario"));
            idDep = request.getParameter("idDep");

            func.setEmailFuncionario(email);
            func.setNomeFuncionario(nome);
            func.setCargoFuncionario(cargo);
            func.setSalarioFuncionario(salario);
            Departamento dep = new Departamento();
            dep.setIdDepartamento(idDep);
            func.setIdDepartamento(dep);

            int res = dao.SalvarFuncionario(func);

            switch (res) {
                case 1:
                    menssagem = "Funcionario salvo com sucesso.";
                    break;
                case 2:
                    menssagem = "Funcionario já cadastrado.";
                    break;
                case 3:
                    menssagem = "Erro: Entre em contato com o adminstrador.";
                    break;
                default:
                    break;
            }
            request.setAttribute("m", menssagem);
            RequestDispatcher disp = request.getRequestDispatcher("mensagens.jsp");
            disp.forward(request, response);

        } else if (flag.equalsIgnoreCase("listarFuncionarios")) {
            List<Funcionario> funcionarios = dao.listarFuncionario();

            request.setAttribute("listarFuncionarios", funcionarios);
            RequestDispatcher disp = request.getRequestDispatcher("ListarFuncionarios.jsp");
            disp.forward(request, response);

        } else if (flag.equalsIgnoreCase("excluirFuncionario")) {

            String email = request.getParameter("emailFun");

            int res = dao.excluirFuncionario(email);
            switch (res) {
                case 1:
                    menssagem = "Funcionario excluido com sucesso.";
                    break;
                case 2:
                    menssagem = "Funcionario já excluido.";
                    break;
                case 3:
                    menssagem = "Erro: Entre em contato com o adminstrador.";
                    break;
                default:
                    break;
            }
            request.setAttribute("m", menssagem);
            RequestDispatcher disp = request.getRequestDispatcher("mensagens.jsp");
            disp.forward(request, response);


        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
