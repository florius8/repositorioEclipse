package es.ies;

/**
 * Clase Carta. Un objeto de esta clase representa una carta en particular
 * 
 * @author Flor
 * @version 1.0
 */
public class Carta implements Comparable<Carta> {
	// ATRIBUTOS
	private int numero;
	private String palo;

	// Constantes
	public static final String[] PALOS = { "ESPADAS", "OROS", "COPAS", "BASTOS" };
	public static final int LIMITE_CARTA_PALO = 12;

	// CONSTRUCTORES
	/**
	 * Constructor vacio
	 */
	public Carta() {
		super();
	}

	/**
	 * Constructor con los dos atributos
	 * 
	 * @param numero de la carta pasado por parametro
	 * @param palo de la carta pasado por parametro
	 */
	public Carta(int numero, String palo) {
		this.numero = numero;
		this.palo = palo;
	}

	// GETTERS Y SETTERS
	public int getNumero() {
		return numero;
	}

	public void setNumero(int numero) {
		this.numero = numero;
	}

	public String getPalo() {
		return palo;
	}

	public void setPalo(String palo) {
		this.palo = palo;
	}

	// METODOS
	/**
	 * Metodo toString. Devuelve una cadena con los datos de la carta
	 */
	@Override
	public String toString() {
		String nombreFigura;

		switch (numero) {
		case 1:
			nombreFigura = "As (1)";
			break;
		case 10:
			nombreFigura = "Sota (10)";
			break;
		case 11:
			nombreFigura = "Caballo (11)";
			break;
		case 12:
			nombreFigura = "Rey (12)";
			break;
		default:
			nombreFigura = numero + "";
		}
		return nombreFigura + " de " + palo;
	}

	/**
	 * Metodo compareTo. Compara una carta con otra por su numero
	 * 
	 * @return Devuelve 1 si la carta pasada es mayor; 0 si son iguales y -1 si la
	 *         carta pasada es menor
	 */
	@Override
	public int compareTo(Carta otraCarta) {
		int esta = this.getNumero();
		int otra = otraCarta.getNumero();

		if (esta > otra) {
			return -1;
			
		} else if (esta == otra) {
			return 0;
			
		} else {
			return 1;
		}

	}

}