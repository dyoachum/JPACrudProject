package com.skilldistillery.jpacrud.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.jpacrud.entities.Dog;
@Service
@Transactional
public class DogDAOJpaImpl implements DogDAO {
	
	@PersistenceContext
	EntityManager em;

	@Override
	public Dog findById(int id) {
		// TODO Auto-generated method stub
		return em.find(Dog.class, id);
	}

	@Override
	public List<Dog> findAll() {
		String jpql = "SELECT d FROM Dog d";
		
		return em.createQuery(jpql, Dog.class).getResultList();
	}

}
