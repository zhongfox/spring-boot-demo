package hello;

import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMapping;

@RestController
public class HelloController {
    @RequestMapping("/")
    public String index() {
        System.out.println("hello user");
         // unit test will check: the return string must contains "Spring Boot"
        return "<body style='background-color:green;' ><h1>Hi Spring Boot!<h1></body>";
    }
}
