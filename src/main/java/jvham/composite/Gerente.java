package jvham.composite;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class Gerente implements Empleado{

 private String name;
 private double salary;

 public Gerente(String name,double salary){
  this.name = name;
  this.salary = salary;
 }

 List<Empleado> employees = new ArrayList<Empleado>();
 public void add(Empleado employee) {
    employees.add(employee);
 }

 public Empleado getChild(int i) {
  return employees.get(i);
 }

 public String getName() {
  return name;
 }

 public double getSalary() {
  return salary;
 }

 public void print() {
  System.out.println("-------------");
  System.out.println("Nombre = "+getName());
  Consola.texto += "<p>Nombre = "+ getName()+"</p>";
  System.out.println("Salario = "+getSalary());
  Consola.texto += "<p>Salario = "+ getSalary()+"</p><br>";
  System.out.println("-------------");

  Iterator<Empleado> employeeIterator = employees.iterator();
    while(employeeIterator.hasNext()){
    	Empleado employee = employeeIterator.next();
     employee.print();
    }
 }

 public void remove(Empleado employee) {
  employees.remove(employee);
 }

}