package org.simplilearn.lms.entities;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.security.auth.Subject;

@Entity

public class AcadamicClass {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int cid;
	
	@Column
	private String name;
	
	@Column
	private int duration;
	
	@ManyToMany(mappedBy="Classes",cascade= CascadeType.ALL)
	private Set<Subject> Subjects=new HashSet<>();

	@OneToMany(mappedBy ="AcademicClass",cascade=CascadeType.ALL)
	private Set<Student> students=new HashSet<>();	
	
	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getDuration() {
		return duration;
	}

	public void setDuration(int duration) {
		this.duration = duration;
	}

	public Set<Subject> getSubjects() {
		return Subjects;
	}

	public void setSubjects(Set<Subject> subjects) {
		Subjects = subjects;
	}

	
	//helper methods
	public void addSubject(Subject subject)
	{
		Subjects.add(subject);
	}
	
	
	

}
