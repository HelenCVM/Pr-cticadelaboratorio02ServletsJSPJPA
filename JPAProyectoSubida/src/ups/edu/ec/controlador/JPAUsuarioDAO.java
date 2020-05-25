package ups.edu.ec.controlador;

import java.util.List;

import javax.persistence.TypedQuery;

import ups.edu.ec.modelo.Telefono;
import ups.edu.ec.modelo.Usuario;

public class JPAUsuarioDAO  extends JPAGenericDAO<Usuario, Integer> implements UsuarioDAO {
    
    public JPAUsuarioDAO() {
	super(Usuario.class);
    }
    
    public Usuario inicio(String username, String password) {
    	
    	 String query = "SELECT e " +
    		      "FROM Usuario e " +
    		      "WHERE e.correo = '" + username +
    		      "' AND " +
    		      " e.contraseña = '" + password + "'";
    	      
    		      return em.createQuery(query, Usuario.class).getSingleResult();
    }
	
    
    
    public Usuario buscarporCed(String cedula) {
        
	          String query = "SELECT e " +
		      "FROM Usuario e " +
		      "WHERE e.cedula='" + cedula +"'";
	          return em.createQuery(query, Usuario.class).getSingleResult();    
		     
	
	
}
}
