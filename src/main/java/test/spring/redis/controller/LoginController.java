package test.spring.redis.controller;

import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * <p>This application demonstrates usage of Spring Session with redis to distribute httpSession
 * over multiple nodes. <i>Need up and running redis server for this application. </i>
 * Spring security has been used to implement login functionality.</p>
 *
 * <p>This class is used to redirect login requests. Login requests are coming
 * through spring security filter chain.</p>
 *
 * @author Yasitha Thilakaratne
 * @since v-1.0.0
 */
@Controller
public class LoginController {

    @RequestMapping(value = {"login", "/"})
    public String login() {

        try {
            Authentication auth = SecurityContextHolder.getContext().getAuthentication();
            if (!(auth instanceof AnonymousAuthenticationToken)) {
                return "home";
            }
            return "login";
        } catch (Exception e) {
            return "redirect:/error/500";
        }
    }

    @RequestMapping(value = "/home")
    public String home() {
        return "home";
    }
}
