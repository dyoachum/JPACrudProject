package com.skilldistillery.jpacrud.data;

import java.util.List;

import com.skilldistillery.jpacrud.entities.Dog;



public interface DogDAO {
	
	Dog findById(int id);
	List<Dog> findAll();

}
