package ups.edu.ec.controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ups.edu.ec.modelo.Telefono;
import ups.edu.ec.modelo.Usuario;

/**
 * Servlet implementation class ListarBPublica
 */
@WebServlet("/ListarBPublica")
public class ListarBPublica extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Usuario usu1=new Usuario();
	Telefono tele1=new Telefono();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListarBPublica() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		TelefonoDAO shoppingBasketDAO1 = DAOFactory.getFactory().getTelefonoDAO();
		TelefonoDAO productDAO = DAOFactory.getFactory().getTelefonoDAO();
		UsuarioDAO shoppingBasketDAO = DAOFactory.getFactory().getUsuarioDAO();
		//shoppingBasketDAO.createTable();
		
		
	
		
		tele1.getNumero();
		tele1.getTipo();
		tele1.getOperadora();
		
		//String sele = request.getParameter("seleccion");
		String valor=request.getParameter("cedula");
		
		
	    
	    
	    request.setAttribute("resultadoo", shoppingBasketDAO1.buscarporCedula(valor));
	    request.setAttribute("resultado", shoppingBasketDAO.buscarporCed(valor));
		
		
		
		
		
	    /*
		request.setAttribute("resultado", i);
		RequestDispatcher rd=getServletContext().getRequestDispatcher("/JSPs/IniciadoSesion.jsp");
		rd.forward(request, response);
		*/
		
	
		
		request.getRequestDispatcher("/JSPs/mostrarUsuarios.jsp").forward(request,  response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
