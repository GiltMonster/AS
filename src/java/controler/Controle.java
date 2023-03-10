package controler;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Acesso;
import model.EmpresaDao;

/**
 *
 * @author lucas.scampos4
 */
@WebServlet(name = "Controle", urlPatterns = {"/Controle"})
public class Controle extends HttpServlet {
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        PrintWriter out = response.getWriter();
        String flag;
        flag = request.getParameter("flag");
        if(flag.equals("login")){
            String user, password;
            user = request.getParameter("usuario");
            password = request.getParameter("senha");
             
            EmpresaDao dao = new EmpresaDao();
            Acesso acesso = dao.validarLogin(user, password);
            
            if(acesso != null){
            String msg, cargo, nome;
            cargo = acesso.getFuncionario().getCargoFuncionario();
            nome = acesso.getFuncionario().getNomeFuncionario();
            msg = nome +", " + cargo;
            request.setAttribute("m", msg);
            
                if(cargo.equalsIgnoreCase("Dev")){
                    RequestDispatcher disp = request.getRequestDispatcher("acessoGerente.jsp");
                    disp.forward(request, response);
                    
                }else if(cargo.equalsIgnoreCase("Patrão")){
                    RequestDispatcher disp = request.getRequestDispatcher("acessoPatrao.jsp");
                    disp.forward(request, response);
                }else{
                    RequestDispatcher disp = request.getRequestDispatcher("acessoOutro.jsp");
                    disp.forward(request, response);
                }
            
            }else{
                
                RequestDispatcher disp = request.getRequestDispatcher("acessoErro.jsp");
                disp.forward(request, response);
                           
            }
            
        }
        
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
