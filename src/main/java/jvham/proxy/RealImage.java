package jvham.proxy;

public class RealImage implements Image{
	private String fileName;

	   public RealImage(String fileName){
	      this.fileName = fileName;
	      loadFromDisk(fileName);
	   }


	   public String display() {
	      return fileName;
	   }

	   private String loadFromDisk(String fileName){
	      return ("Cargando " + fileName);
	   }

}
