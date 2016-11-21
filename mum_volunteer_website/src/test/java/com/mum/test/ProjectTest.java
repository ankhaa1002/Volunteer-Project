package com.mum.test;


import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.mum.domain.Project;
import com.mum.service.ProjectService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="classpath:springconfig-dao.xml")
public class ProjectTest {
	@Autowired
	ProjectService projectService;
	
	@Test
	public void testWrite() {
		Project project = new Project();
		project.setTitle("asd");
		projectService.saveProject(project);
	}
}
