package jvham.prototype;

public class A implements Prototype, Cloneable {
    private int size;
 
    public A(int x) {
        this.size = x;
    }
 
    public void setSize(int x) {
        this.size = x;
    }
 
    public void printSize() {
        System.out.println("Sucursales: " + size);
        Consola.texto += "<p>Sucursales: " + size+"</p>";
    }
 
 
    @Override
    public A clone() throws CloneNotSupportedException {
        return (A) super.clone();
    }
}