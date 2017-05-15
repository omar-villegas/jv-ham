package jvham.visitor;

public interface ShoppingCartVisitor {
	double visit(Toy toy);
	double visit(Fruit fruit);

}
