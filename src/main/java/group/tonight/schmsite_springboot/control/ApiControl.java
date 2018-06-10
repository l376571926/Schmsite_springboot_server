package group.tonight.schmsite_springboot.control;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "/api")
public class ApiControl {
    @GetMapping(value = "/hehe")
    public String hehe() {
        return "hello world";
    }
}
