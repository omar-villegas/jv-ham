package jvham.bridge;

public class Sencilla extends Orden {
	public Sencilla (TipoDeEntrega tipoDeEntrega) {
		  super(tipoDeEntrega);
	}
		 
	public void prepara() {
		  System.out.print("Orden sencilla ");
		  Consola.textoConsola += "<p>Orden sencilla ";
		  tipoDeEntrega.entrega();
	}

}
