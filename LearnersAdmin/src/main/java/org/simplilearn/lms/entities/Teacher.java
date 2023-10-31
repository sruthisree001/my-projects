package org.simplilearn.lms.entities;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Teacher {
	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	private int tid;
	
	@Column
	private String name;
	
	@Column
	private String subject;
	@OneToMany(mappedBy = "teacher",cascade=CascadeType.ALL)
	private Set<Subject> subjects=new HashSet<>();
	
	
	//Helper methods to adda or remove subjects
	public void addSubject(Subject subject)
	{
		subjects.add(subject);
	}
	public void removeSubject(Subject subject)
	{
		subjects.remove(subject);
	}
	public int getTid() {
		return tid;
	}
	public void setTid(int tid) {
		this.tid = tid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public Set<Subject> getSubjects() {
		return subjects;
	}
	public void setSubjects(Set<Subject> subjects) {
		this.subjects = subjects;
	}
	
	
	
	
}
