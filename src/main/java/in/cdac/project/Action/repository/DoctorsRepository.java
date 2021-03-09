package in.cdac.project.Action.repository;


import org.springframework.data.jpa.repository.JpaRepository;

import in.cdac.project.Action.entity.Doctors;

public interface DoctorsRepository extends JpaRepository<Doctors, Integer> {

	Doctors findByDrUsernameAndDrPassword(String drUsername,String drPassword);
	
}
