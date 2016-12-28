package com.luchoc.service;

import com.luchoc.model.User;

import java.util.List;

public interface UserService {
    void save(User user);

    User findByUsername(String username);

    List<User> findAllUsers();
}
