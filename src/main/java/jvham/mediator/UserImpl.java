package jvham.mediator;

public class UserImpl extends User {

	public UserImpl(ChatMediator med, String name) {
		super(med, name);
	}
	
	@Override
	public void receive(String msg) {
		System.out.println(this.name+": Received Message:"+msg);
		Chat.textoChat += this.name+": Received Message:"+msg+"</p><p>";
	}
	
	@Override
	public void send(String msg){
		System.out.println(this.name+": Sending Message:"+msg);
		Chat.textoChat += this.name+": Sending Message:"+msg+"</p><p>";
		mediator.sendMessage(msg, this);
	}
	

}