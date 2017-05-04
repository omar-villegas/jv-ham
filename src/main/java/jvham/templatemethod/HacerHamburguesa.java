package jvham.templatemethod;

public abstract class HacerHamburguesa {
	
	public final String[] prepararHamburguesa() {
		String[] mensajes={
		prepararIngredientes(),
		armarHamburguesa()};
		return mensajes;

	}

	//Template methods

	protected abstract String prepararIngredientes();

	protected String armarHamburguesa(){
		return "Armando hamburguesa";
		
	}
}
