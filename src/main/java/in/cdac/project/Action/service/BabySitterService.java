package in.cdac.project.Action.service ;
import java.util.List;

import org.springframework.data.jpa.repository.Query;

import in.cdac.project.Action.entity.Babysitter;

public interface BabySitterService {

	

		 public List<Babysitter> getAllBebySitters();
		 
		 public Babysitter getUserById(int id);
		 
		 public void saveOrUpdate(Babysitter babysitters);
		 
		 public void delete(int id);
		 
					}
