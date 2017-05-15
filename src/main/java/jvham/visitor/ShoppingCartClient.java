package jvham.visitor;

public class ShoppingCartClient {

	public static double calculatePrice(ItemElement[]items){
		ShoppingCartVisitor visitor = new ShoppingCartVisitorImpl();
		double sum = 0;
		for(ItemElement item : items){
			sum = sum + item.accept(visitor);
		}
		return sum;
	}

}
