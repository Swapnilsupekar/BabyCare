package in.cdac.project.Action.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import in.cdac.project.Action.entity.User;

public interface UserRepository extends JpaRepository<User, Integer>{

	User findByPtUsernameAndPtPassword(String ptUsername,String ptPassword);
}
