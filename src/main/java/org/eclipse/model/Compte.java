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
	
	@ManyToOne
    @JoinColumn(name = "idUsers")
	private Users user;
	
	public Compte(String login, String pwd, Users user) {
		super();
		this.login = login;
		this.pwd = pwd;
		this.user = user;
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

	public Users getUser() {
		return user;
	}

	public void setUser(Users user) {
        this.user = user;
        user.getComptes().add(this); // Add this compte to the user's collection
    }

	public int getIdCompte() {
		return idCompte;
	}

	public String getType() {
		return type;
	}
	
	
}
