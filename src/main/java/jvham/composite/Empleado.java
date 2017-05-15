package jvham.composite;

public interface Empleado {
	   public void add(Empleado employee);
	   public void remove(Empleado employee);
	   public Empleado getChild(int i);
	   public String getName();
	   public double getSalary();
	   public void print();

}
