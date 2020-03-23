package com.skilldistillery.jpacrud.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Dog {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private String breed;
	private String size;
	private String description;

	public Dog(int id, String breed, String size, String description) {
		super();
		this.id = id;
		this.breed = breed;
		this.size = size;
		this.description = description;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Dog() {
		super();
	}

	

	@Override
	public String toString() {
		return "Dog [id=" + id + ", breed=" + breed + ", size=" + size + ", description=" + description + "]";
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getBreed() {
		return breed;
	}

	public void setBreed(String breed) {
		this.breed = breed;
	}

	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}
}
