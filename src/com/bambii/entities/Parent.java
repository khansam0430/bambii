package com.bambii.entities;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinTable;
import javax.persistence.OneToMany;

@Entity
public class Parent {

	@Id
	@GeneratedValue
	private Integer id;
	private String username;
	private String pass;
	private String child;

	//@OneToOne(targetEntity = Child.class, cascade = CascadeType.PERSIST, fetch = FetchType.EAGER)
	@OneToMany(targetEntity = Feeding.class, cascade = CascadeType.PERSIST, fetch = FetchType.EAGER)
	@JoinTable(name = "parent_Entries")
	private List<Feeding> pFeeding;

	public Parent() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Parent(Integer id, String username, String pass, String child, List<Feeding> pFeeding) {
		super();
		this.id = id;
		this.username = username;
		this.pass = pass;
		this.child = child;
		this.pFeeding = pFeeding;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getChild() {
		return child;
	}

	public void setChild(String child) {
		this.child = child;
	}

	public List<Feeding> getpFeeding() {
		return pFeeding;
	}

	public void setpFeeding(List<Feeding> pFeeding) {
		this.pFeeding = pFeeding;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((child == null) ? 0 : child.hashCode());
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		result = prime * result + ((pFeeding == null) ? 0 : pFeeding.hashCode());
		result = prime * result + ((pass == null) ? 0 : pass.hashCode());
		result = prime * result + ((username == null) ? 0 : username.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Parent other = (Parent) obj;
		if (child == null) {
			if (other.child != null)
				return false;
		} else if (!child.equals(other.child))
			return false;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		if (pFeeding == null) {
			if (other.pFeeding != null)
				return false;
		} else if (!pFeeding.equals(other.pFeeding))
			return false;
		if (pass == null) {
			if (other.pass != null)
				return false;
		} else if (!pass.equals(other.pass))
			return false;
		if (username == null) {
			if (other.username != null)
				return false;
		} else if (!username.equals(other.username))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Parent [id=" + id + ", username=" + username + ", pass=" + pass + ", child=" + child + ", pFeeding="
				+ pFeeding + "]";
	}

}
