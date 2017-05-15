package jvham.composite;


public class Mesero implements Empleado{

  private String name;
  private double salary;

  public Mesero(String name,double salary){
    this.name = name;
    this.salary = salary;
  }
  public void add(Empleado employee) {
    //this is leaf node so this method is not applicable to this class.
  }

  public Empleado getChild(int i) {
    //this is leaf node so this method is not applicable to this class.
    return null;
  }

  public String getName() {
    return name;
  }

  public double getSalary() {
    return salary;
  }

  public void print() {
    System.out.println("-------------");
    System.out.println("Nombre = "+ getName());
    Consola.texto += "<p>Nombre = "+ getName()+"</p>";
    System.out.println("Salario = "+ getSalary());
    Consola.texto += "<p>Salario = "+ getSalary()+"</p><br>";
    System.out.println("-------------");
  }

  public void remove(Empleado employee) {
    //this is leaf node so this method is not applicable to this class.
  }

}