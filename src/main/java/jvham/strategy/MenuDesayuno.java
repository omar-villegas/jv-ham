package jvham.strategy;

public class MenuDesayuno implements Strategy{

	public String HoraDelDia(String hora) {
		return "<h4>Men&uacute; de la hora de "+hora+"</h4><ul><li>Hamburguesa de desayuno</li><li>Biscuit</li><li>Hot Cakes</li><li>Sandwich de huevo con jam&oacute;n</li></ul>";
	}

}
