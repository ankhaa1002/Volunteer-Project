package com.mum.repository;


import org.springframework.data.jpa.repository.JpaRepository;

import com.mum.domain.Volunteer;

public interface VolunteerRepository extends JpaRepository<Volunteer, Integer>{

}
