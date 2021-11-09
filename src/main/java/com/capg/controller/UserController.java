/**
 * 
 */
package com.capg.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.capg.models.User;

/**
 * @author mohammfa
 *
 */
@RestController
@RequestMapping("/api/v1")
public class UserController {

  /**
   * Get all users list.
   *
   * @return the list
   */
  @GetMapping("/users")
  public List<User> getAllUsers() {
	List<User> userList = new ArrayList<User>();
	User user = new User();
	user.setId(1000000);
	user.setFirstName("Mohammad");
	user.setLastName("Farooqui");
	user.setEmail("mohammad.farooqui@capgemini.com");
	userList.add(user);
    return userList;//userRepository.findAll();
  }

  
}

