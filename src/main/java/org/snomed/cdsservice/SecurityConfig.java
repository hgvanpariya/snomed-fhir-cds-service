// package org.snomed.cdsservice;


// import org.springframework.context.annotation.Bean;
// import org.springframework.context.annotation.Configuration;
// import org.springframework.security.config.annotation.web.builders.HttpSecurity;
// import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
// import org.springframework.security.web.SecurityFilterChain;

// @Configuration
// @EnableWebSecurity
// public class SecurityConfig {

//     @Bean
//     public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
//         http
//             .cors().and() // Enable CORS support
//             .csrf().disable() // Disable CSRF for API endpoints
//             .authorizeRequests()
//                 .anyRequest().permitAll(); // Adjust based on your auth needs
        
//         return http.build();
//     }
// }
