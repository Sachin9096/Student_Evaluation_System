package com.example.demo.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import com.example.demo.model.Staff;

public interface Staffrepository extends JpaRepository <Staff,String>
{

	 


}
