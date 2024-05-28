package com.project.web.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.web.Model.Student;
import com.project.web.Repository.StudentInfo;

import jakarta.servlet.http.HttpSession;

@Controller
public class StudentHandler {

	@Autowired
	private StudentInfo repo;

	@RequestMapping("/")
	public String home() {
		return "Registration";
	}
	@RequestMapping("/admin")
	public String home1() {
		return "admin";
	}
	

	@RequestMapping("/addstudent")
	public String addstudent(@ModelAttribute Student student) {
		System.out.println(student.getRoll_no());
		System.out.println(student.getName());
		System.out.println(student.getAddress());
		System.out.println(student.getAge());

		repo.save(student);

		return "redirect:/get";
	}

	@RequestMapping("/get")
	public String getdata(Model m) {
		List<Student> al = repo.findAll();

		m.addAttribute("e_data", al);

		System.out.println(al);
		return "listUser";
	}

	@RequestMapping("/{Roll_no}")
	public String deleteuser(@PathVariable int Roll_no) {
		repo.deleteById(Roll_no);

		return "redirect:/get";
	}

	@RequestMapping("/edit/{Roll_no}")
	public String editform(@PathVariable int Roll_no, Model m) {
		Student ob = repo.findById(Roll_no).get();

		m.addAttribute("std1", ob);
		return "editform";
	}

	@RequestMapping("/update/{Roll_no}")
	public String updatedata(@PathVariable int Roll_no, @ModelAttribute Student us) {
		Student user = repo.findById(Roll_no).orElse(null);

		if (user != null) {
			user.setName(us.getName());
			user.setAddress(us.getAddress());
			user.setAge(us.getAge());
			repo.save(user);
		}
		return "redirect:/get";
	}

}
