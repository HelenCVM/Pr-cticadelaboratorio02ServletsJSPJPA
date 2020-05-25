package ups.edu.ec.controlador;

public class JPADAOFactory extends DAOFactory {

	@Override
	public UsuarioDAO getUsuarioDAO() {
		return new JPAUsuarioDAO();
	}
	
	public TelefonoDAO getTelefonoDAO() {
		return new JPATelefonoDAO();
	}
}
