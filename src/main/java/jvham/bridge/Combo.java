package jvham.bridge;

public class Combo extends Orden {
	public Combo (TipoDeEntrega tipoDeEntrega) {
		  super(tipoDeEntrega);
	}
		 
	 public void prepara() {
		  System.out.print("Orden de combo ");
		  Consola.textoConsola += "<p>Orden de combo ";
		  tipoDeEntrega.entrega();
	}

}