package ups.edu.ec.controlador;

import java.util.List;
import java.util.Set;

import ups.edu.ec.modelo.Telefono;
import ups.edu.ec.modelo.Usuario;

public interface TelefonoDAO extends GenericDAO<Telefono ,Integer>{
	
	public List<Telefono> buscarporCedula(String cedula);
}
