package jvham.flyweight;
import java.util.List;
import java.util.Vector;

public class ServicioSodas {
	private final List<Orden> orders = new Vector<Orden>();
	  private final Menu menu = new Menu();

	  public void takeOrder(final String flavourName, final int table) {
	    SaborSoda flavour = menu.lookup(flavourName);
	    Orden order = new Orden(table, flavour);
	    orders.add(order);
	  }

	  public void service() {
	    for (Orden order : orders)
	      order.serve();
	  }

	  public String report() {
		Consola.textoConsola += "\nTotal de objetos SaborSoda creados: "
		        + menu.totalSodaFlavoursMade()+"</p>";
	    return "\nTotal de objetos SaborSoda creados: "
	        + menu.totalSodaFlavoursMade();
	  }

}
