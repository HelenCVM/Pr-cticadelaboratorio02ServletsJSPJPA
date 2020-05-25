package ups.edu.ec.controlador;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.TypedQuery;

import ups.edu.ec.modelo.Telefono;


public class JPATelefonoDAO extends JPAGenericDAO<Telefono, Integer> implements TelefonoDAO {

    public JPATelefonoDAO() {
	super(Telefono.class);
    }
    
    public List<Telefono> buscarporCedula(String cedula) {
            
   	          String query = "SELECT e " +
   		      "FROM Telefono e " +
   		      "WHERE e.usuario.cedula='" + cedula +"'";
              List<Telefono> res= em.createQuery(query,Telefono.class).getResultList();          
   		      return res;
   	
   }
	
}
