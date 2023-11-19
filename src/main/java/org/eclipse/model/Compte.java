package org.eclipse.model;

import javax.persistence.*;


@Entity
public class Compte {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int idCompte;
	private String login;
	private String pwd;
	private String type;
	private int idUsers;
	
	public Compte(String login, String pwd, int idUsers) {
		super();
		this.login = login;
		this.pwd = pwd;
		this.idUsers = idUsers;
		this.type = "s";
	}
	
	public Compte() {
	}

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public int getIdUsers() {
		return idUsers;
	}

	public void setIdUsers(int idUsers) {
		this.idUsers = idUsers;
	}

	public int getIdCompte() {
		return idCompte;
	}

	public String getType() {
		return type;
	}
	
	
}
