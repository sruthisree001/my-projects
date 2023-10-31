package org.simplilearn.lms.dao;
 
import java.util.List;

import org.simplilearn.lms.entities.AcadamicClass;

public interface AcadamicClassDao {
	void insert(AcadamicClass acadamicClass);
	List<AcadamicClass> getAll();
	AcadamicClass get(int cid);
	void delete(AcadamicClass acadamicClass);
	void update(AcadamicClass acadamicClass);
	

}
