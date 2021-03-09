package in.cdac.project.ServiceImlemantation;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import in.cdac.project.Action.entity.Babysitter;
import in.cdac.project.Action.entity.Vaccination;
import in.cdac.project.Action.repository.VaccinationRepository;
import in.cdac.project.Action.service.VaccinationService;

@Service
@Transactional
public class VaccinationServiceImplemantation implements VaccinationService {
	
	@Autowired
	VaccinationRepository vaccinationRepository;
	

	@Override
	public List<Vaccination> getAllVaccinationDetails() {
		return (List<Vaccination>) vaccinationRepository.findAll();
	}

	@Override
	public Vaccination getVaccinationDetailsById(int id) {
		return vaccinationRepository.findById(id).get();
	}

	@Override
	public void saveOrUpdateVaccinationDetails(Vaccination vaccination) {
		vaccinationRepository.save(vaccination);
	}

	@Override
	public void deleteVaccinationDetails(int id) {
		vaccinationRepository.deleteById(id);
	}


	public List<Vaccination> listAll(String keyword) {
		if (keyword != null) {
            return vaccinationRepository.search(keyword);
        }
		return vaccinationRepository.findAll();
		}
	
}
