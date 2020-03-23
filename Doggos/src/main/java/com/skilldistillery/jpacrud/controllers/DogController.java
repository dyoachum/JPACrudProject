package com.skilldistillery.jpacrud.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.jpacrud.data.DogDAOJpaImpl;
import com.skilldistillery.jpacrud.entities.Dog;

@Controller
public class DogController {
	@Autowired
	private DogDAOJpaImpl dao;
	
	@RequestMapping(path= {"/", "home.do"})
	public String index(Model model) {
		
		model.addAttribute("dog", dao.findAll());
		return "index";
		
	}
	@RequestMapping(path= "getDog.do", method = RequestMethod.GET, params = "did")
	public String showDog(@RequestParam int did, Model model) {
		String veiwDog = "showDog";
		Dog dog = dao.findById(did);
		model.addAttribute("dog", dog);
		return veiwDog;
	}
	@RequestMapping(path = "addDog.do", method = RequestMethod.GET)
	public ModelAndView addDog(Dog dog) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("addDog");
		mv.addObject("dog", new Dog());
		return mv;
	}
	
	@RequestMapping(path = "addDog.do", method = RequestMethod.POST)
	public ModelAndView createDog(Dog dog) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("showDog");
		System.out.println(dog);
		dao.createDog(dog);
		return mv;
	}
	@RequestMapping(path = "deleteDog.do", method = RequestMethod.POST)
	public String deleteDog(@RequestParam("id")int id) {
		Dog deadDog =dao.findById(id);
		dao.deleteDog(deadDog);
		
		return "index";
	}
	@RequestMapping(path = "updateDog.do", method = RequestMethod.GET, params = "id")
	public ModelAndView getUpdateInfo(int id) {
		Dog dog = dao.findById(id);
		ModelAndView mv = new ModelAndView("updateDog");
		
		mv.addObject("dog", dog);

		return mv;
	}

	@RequestMapping(path = "update.do", method = RequestMethod.POST)
	public ModelAndView update(@RequestParam("id")int id, Dog dog) {
		
		ModelAndView mv = new ModelAndView("updateDogRecord");
		
		Dog updated = dao.updateDog(dog, id);
		mv.addObject("dog", updated);
		return mv;
	}
	
}
