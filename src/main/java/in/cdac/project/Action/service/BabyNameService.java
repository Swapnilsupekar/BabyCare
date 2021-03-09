package in.cdac.project.Action.service;

import java.util.List;

import in.cdac.project.Action.entity.BabyName;

public interface BabyNameService {

	 public List<BabyName> getAllBabyName();
	 
	 public BabyName getBabyNameId(int id);
	 
	 public void saveOrUpdateBabyName(BabyName babyName);
	 
	 public void deleteBabyName(int id);
}
