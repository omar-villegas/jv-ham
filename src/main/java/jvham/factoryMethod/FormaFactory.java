package jvham.factoryMethod;

public class FormaFactory {
	//use getShape method to get object of type shape 
	   public Forma getShape(String shapeType) {
	      if(shapeType == null){
	         return null;
	      }		
	      if(shapeType.equalsIgnoreCase("HAMBURGUESA")){
	         return new Hamburguesa();
	         
	      } else if(shapeType.equalsIgnoreCase("TORTA")){
	         return new Torta();
	         
	      } else if(shapeType.equalsIgnoreCase("SANDWICH")){
	         return new Sandwich();
	      }
	      
	      return null;
	   }

}
