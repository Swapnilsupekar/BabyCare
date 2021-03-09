package in.cdac.project.Action.service;

import java.util.List;

import in.cdac.project.Action.entity.Inquiry;

public interface InquiryService {

	public List<Inquiry> getAllInquiry();
	 
	 public Inquiry getInquiryById(int id);
	 
	 public void saveOrUpdateInquiry(Inquiry inquiry);
	 
	 public void deleteInquiry(int id);

}
