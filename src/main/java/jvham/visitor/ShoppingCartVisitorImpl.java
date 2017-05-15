package jvham.visitor;

public class ShoppingCartVisitorImpl implements ShoppingCartVisitor {
	public double visit(Toy toy){
		double cost = 0;
		
		if(toy.getPrice() > 50){
			cost = toy.getPrice() - 5;
		} else cost = toy.getPrice();
		System.out.println("C�digo del juguete: " + toy.getCodeNumber() + "   Precio : " + cost);
		Consola.texto += "<p>C�digo del juguete: " + toy.getCodeNumber() + "   Precio : " + cost+"</p>";
		return cost;
	}
	
	public double visit(Fruit fruit){
		double cost = fruit.getPricePerKg() * fruit.getWeight();
		System.out.println("Fruta: " + fruit.getName() + "   Precio : "+ cost);
		Consola.texto += "<p>Fruta: " + fruit.getName() + "   Precio : "+ cost+"</p>";
		return cost;
	}
	

}
