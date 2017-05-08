package jvham.memento;

public class Inventario {
	private int[] cantidades = new int[]{10,10,10,10,10};
	   /* lots of memory consumptive private data that is not necessary to define the
	    * state and should thus not be saved. Hence the small memento object. */

	public void setState(int[] cantidades) {
	    System.out.println("Originator: Setting state to " + cantidades[0]+" "+cantidades[1]+" "+ cantidades[2]+" "+ cantidades[3]+" "+ cantidades[4]+" "+ cantidades[5]);
	    this.cantidades = cantidades;
	}

	public Memento save() {
	    System.out.println("Originator: Saving to Memento.");
	    return new Memento(cantidades);
	}
	public void restore(Memento m) {
	    cantidades = m.getState();
	    System.out.println("Originator: State after restoring from Memento: " + cantidades[0]+" "+cantidades[1]+" "+ cantidades[2]+" "+ cantidades[3]+" "+ cantidades[4]+" "+ cantidades[5]);
	}
	
	public int[] Ver(){
		return cantidades;
	}

}
