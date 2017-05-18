package jvham.strategy;

public class MenuDia implements Strategy{

	public String HoraDelDia(String hora) {
		return "<h4>Men&uacute; de la hora de "+hora+"</h4><ul><li>Hamburguesa Estrella</li><li>Hamburguesa Vegetariana</li><li>Torta de jam&oacute;n</li><li>Club Sandwich</li></ul>";
		
	}
	

}
