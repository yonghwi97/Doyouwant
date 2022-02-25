package com.boot.projectEx;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

import com.boot.projectEx.dao.ICartDAO;
import com.boot.projectEx.dao.IInteriorDAO;
import com.boot.projectEx.dao.IMemberDAO;
import com.boot.projectEx.dao.IProductDAO;

@SpringBootApplication
@ComponentScan(basePackages={"com.boot.projectEx.service"})
@ComponentScan(basePackages={"com.boot.projectEx.controller"})
@MapperScan(basePackageClasses=IMemberDAO.class)
@MapperScan(basePackageClasses=IProductDAO.class)
@MapperScan(basePackageClasses=ICartDAO.class)
@MapperScan(basePackageClasses=IInteriorDAO.class)

public class SpringBootProjectExApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpringBootProjectExApplication.class, args);
	}

}
