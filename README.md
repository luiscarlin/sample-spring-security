# Sample Spring Security

Log in and registration pages. Push to Master and see it running in [heroku](https://lc-sample-spring-security.herokuapp.com).


## Features
- Validation for input fields with error messages
- Auto-login on successful registration
- CSRF token
- Remember me checkbox

## Prerequisites
- JDK 1.8 or later

## Stack
- Spring Boot
- Spring Data JPA
- JSP
- HSQLDB

## Running
```bash
git clone <this-project>
cd <this-project>

./mvnw spring-boot:run
```

## Notes
- Authentication = log in
- Authorization = access to content based on user roles
- Spring authority = Roles for the user
- To use Spring Security, you have to implement `org.springframework.security.core.userdetails.UserDetailsService`
and override the `public UserDetails loadUserByUsername(String)` method which returns a User with username, password, authorities
- By accessing the `SecurityContextHolder` you can obtain details about the currently authenticated user, and even authenticate somebody
- You can validate forms by implementing the `Validator` interface and overriding `public boolean supports (Class<?>)` and `public void validate(Object, Errors)`
- Spring takes care of `POST /login` by accessing your implementation of `UserDetailService`. You still need to define the `GET /login`
- By default Spring will do basic security if it's in the classpath `org.springframework.boot:spring-boot-starter-security`. You can customize it though.

