package org.daypilot.demo.html5schedulerspring.repository;

import org.daypilot.demo.html5schedulerspring.domain.Resource;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ResourceRepository extends JpaRepository<Resource, Long> {
	
}