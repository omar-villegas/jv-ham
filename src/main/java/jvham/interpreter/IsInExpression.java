package jvham.interpreter;

public class IsInExpression implements Expression {
	  private String data;

	  public IsInExpression(String data) {
	    this.data = data;
	  }


	  public boolean evaluate(String context) {
	    if (context.contains(data)) {
	      return true;
	    }
	    return false;
	  }


	@Override
	public String toString() {
		return "IsInExpression [data=" + data + "]";
	}
	  
}
