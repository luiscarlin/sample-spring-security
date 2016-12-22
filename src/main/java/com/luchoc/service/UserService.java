package com.luchoc.service;

import com.luchoc.model.User;

public interface UserService {
    void save(User user);

    User findByUsername(String username);
}
