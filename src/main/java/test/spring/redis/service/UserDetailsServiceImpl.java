package test.spring.redis.service;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.HashSet;
import java.util.Set;

/**
 * <p>This application demonstrates usage of Spring Session with redis to distribute httpSession
 * over multiple nodes. <i>Need up and running redis server for this application. </i>
 * Spring security has been used to implement login functionality.</p>
 *
 * <p>This class provides implementation for spring security's UserDetailsService.
 * Provides custom user object loading mechanism for entered credentials.</p>
 *
 * @author Yasitha Thilakaratne
 * @since v-1.0.0
 */
@Service("userDetailsService")
public class UserDetailsServiceImpl implements UserDetailsService {

    @Override
    public UserDetails loadUserByUsername(String s) throws UsernameNotFoundException {
        Set<GrantedAuthority> authorities = new HashSet<>();

        return new User("user", "1234", true, true, true, true, authorities);
    }
}
