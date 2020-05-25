package ups.edu.ec.controlador;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet Filter implementation class Filtro
 */
@WebFilter({"/JSPs/eliminar.jsp","/JSPs/modificar.jsp" ,"/JSPs/registrar.jsp"})
public class Filtro implements Filter {

    /**
     * Default constructor. 
     */
    public Filtro() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		// place your code hereHttpSession session= null;
        HttpServletRequest peticion=(HttpServletRequest)request;
        
		// pass the request along the filter chain
        
        HttpSession session=peticion.getSession();
        HttpServletResponse repuess=(HttpServletResponse)response;
        if(session.getAttribute("correo") == null )
        {
        	System.out.println("entro");
        	repuess.sendRedirect("/PracticaJEE/JSPs/cuenta.jsp");
        }else {
            chain.doFilter(request, response);
            System.out.println("entro1");
        }
        
        //sino se cumple se pone el dispatcher para que se dirija a otra pagina
        
        		
      
       
        //se inicia normalmente
        
		
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
