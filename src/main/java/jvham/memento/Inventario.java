package jvham.memento;

public class Inventario {
	private int[] cantidades = new int[]{10,9,8,7,6,5};
	   /* lots of memory consumptive private data that is not necessary to define the
	    * state and should thus not be saved. Hence the small memento object. */

	public void setState(int[] cantidades) {
	    System.out.println("Originator: Setting state to " + cantidades[0]+" "+cantidades[1]+" "+ cantidades[2]+" "+ cantidades[3]+" "+ cantidades[4]+" "+ cantidades[5]);
	    this.cantidades = cantidades;
	}
	
	public int[] getState(){
	    return cantidades;
	}

	public Memento save() {
	    System.out.println("Originator: Saving to Memento.");
	    return new Memento(cantidades);
	}
	public void restore(Memento memento) {
	    cantidades = memento.getState();
	    System.out.println("Originator: State after restoring from Memento: " + cantidades[0]+" "+cantidades[1]+" "+ cantidades[2]+" "+ cantidades[3]+" "+ cantidades[4]+" "+ cantidades[5]);
	}

}
