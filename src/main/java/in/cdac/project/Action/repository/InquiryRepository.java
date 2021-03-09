package in.cdac.project.Action.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import in.cdac.project.Action.entity.Inquiry;

public interface InquiryRepository extends JpaRepository<Inquiry, Integer>  {

}
