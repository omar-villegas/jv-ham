package jvham.facade;

public class ProcesarOrden {
	private RecibirOrden recibirOrden;
	private CocinarOrden cocinarOrden;
	private EntregarOrden entregarOrden;
	
	public ProcesarOrden() {
		this.recibirOrden = new RecibirOrden();
		this.cocinarOrden = new CocinarOrden();
		this.entregarOrden = new EntregarOrden();
	}
	
	public String procesa(){
		String s1 = recibirOrden.recibe();
		String s2 = recibirOrden.pasa();
		String s3 = cocinarOrden.cocina();
		String s4 = cocinarOrden.prepara();
		String s5 = entregarOrden.entrega();
		String s6 = entregarOrden.terminaEntrega();
		return s1 + s2 + s3 + s4 + s5 + s6;
		
	}

}
