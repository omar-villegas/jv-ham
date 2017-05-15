package jvham.flyweight;

public class Orden {
	private final int tableNumber;
	  private final SaborSoda flavour;

	  Orden(final int tableNumber, final SaborSoda flavor) {
	    this.tableNumber = tableNumber;
	    this.flavour = flavor;
	  }

	  void serve() {
		Consola.textoConsola += "\nSirviendo soda de " + flavour + " a la mesa " + tableNumber+"</p><p>";
	    System.out.println("Sirviendo soda de " + flavour + " a la mesa " + tableNumber);
	  }

}
