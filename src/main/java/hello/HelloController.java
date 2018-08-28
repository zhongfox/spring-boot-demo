package hello;

import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMapping;

@RestController
public class HelloController {
    @RequestMapping("/")
    public String index() {
        System.out.println("hello user");
        return "Greetings from Spring Boot!"; // test will match the return string
    }
}
