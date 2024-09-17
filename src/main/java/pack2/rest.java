package pack2;

public class rest {
	private int rid;
	private String rname;
	private String rrate;
	private String rloc;
	private String rcon;
	
	public rest(int rid, String rname, String rrate, String rloc, String rcon) {
		super();
		this.rid = rid;
		this.rname = rname;
		this.rrate = rrate;
		this.rloc = rloc;
		this.rcon = rcon;
	}

	public int getRid() {
		return rid;
	}

	public String getRname() {
		return rname;
	}

	public String getRrate() {
		return rrate;
	}

	public String getRloc() {
		return rloc;
	}

	public String getRcon() {
		return rcon;
	}		
}
