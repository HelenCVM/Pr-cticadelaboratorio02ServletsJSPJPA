package ups.edu.ec.modelo;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Telefono implements Serializable{

	private static final long serialVersionUID =1l;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int codigo;
	private String numero;
	private String tipo;
	private String operadora;
	@ManyToOne
    @JoinColumn
	private Usuario usuario;
	
	
	public Telefono() {
		
		
	}
	

	public Telefono(int codigo, String numero, String tipo, String operadora) {
		super();
		this.codigo = codigo;
		this.numero = numero;
		this.tipo = tipo;
		this.operadora = operadora;
		
	}

	public int getCodigo() {
		return codigo;
	}
	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}
	public String getNumero() {
		return numero;
	}
	public void setNumero(String numero) {
		this.numero = numero;
	}
	public String getTipo() {
		return tipo;
	}
	public void setTipo(String tipo) {
		this.tipo = tipo;
	}
	public String getOperadora() {
		return operadora;
	}
	public void setOperadora(String operadora) {
		this.operadora = operadora;
	}

	public Usuario getUsuario() {
		return usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}

	
	@Override
	public String toString() {
		return "Telefono [numero=" + numero + ", tipo=" + tipo + ", operadora=" + operadora + "]";
	}


	@Override
	public int hashCode() {
		return codigo;
	}


	@Override
	public boolean equals(Object obj) {
		if (obj == null)
		    return false;
		if (getClass() != obj.getClass())
		    return false;
		return obj.hashCode() == this.hashCode();
	}
	
	
	
	
}
