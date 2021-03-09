package in.cdac.project.Action.service;

import java.util.List;
import in.cdac.project.Action.entity.Vaccination;

public interface VaccinationService {
	

	 public List<Vaccination> getAllVaccinationDetails();
	 
	 public Vaccination getVaccinationDetailsById(int id);
	 
	 public void saveOrUpdateVaccinationDetails(Vaccination vaccination);
	 
	 public void deleteVaccinationDetails(int id);

}
