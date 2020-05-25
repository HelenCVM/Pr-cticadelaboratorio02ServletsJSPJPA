package ups.edu.ec.controlador;

import java.io.IOException;

import javax.persistence.EntityManager;
import javax.persistence.Persistence;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ups.edu.ec.modelo.Usuario;

/**
 * Servlet implementation class InicioSesion
 */
@WebServlet("/InicioSesion")
public class InicioSesion extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Usuario us=new Usuario();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InicioSesion() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session=request.getSession(true);
		UsuarioDAO shoppingBasketDAO = DAOFactory.getFactory().getUsuarioDAO();
		EntityManager em =Persistence.createEntityManagerFactory("jpa").createEntityManager();
		// EntidadUno e=em.find(EntidadUno.class, 2);
		 
		 // Persona p=em.find(Persona.class, 1);
		String correo = request.getParameter("correo");
		String contrasena = request.getParameter("contrasena");
		
		
		us=shoppingBasketDAO.inicio(correo, contrasena);
	    
		
        
		try {
			if(us !=null) {
		     String cedula=us.getCedula();
		      System.out.println(cedula);
			request.getSession().setAttribute("correo", cedula);
		    session.setAttribute("correo", cedula);
				    
			request.getSession().setAttribute("contrasena", contrasena);
			session.setAttribute("contrasena", contrasena);
					
			session.setAttribute("variableSession", cedula);
			
			response.sendRedirect(request.getContextPath() + "/JSPs/IniciadoSesion.jsp?correo=" + cedula);
		
		}else {
			response.sendRedirect(request.getContextPath() + "/JSPs/cuenta.jsp");
			
		}
		}catch (Exception e) {
			response.sendRedirect(request.getContextPath() + "/JSPs/cuenta.jsp");
		}
		
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
