package de.trion.sample.springapp.greeting;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

@RestController
public class GreetingController
{
  @Value("${sample.greeting:'hello there'}")
  private String greeting;

  @GetMapping("/greeting")
  public String greeting()
  {
     return greeting;
  }

  @RequestMapping(path = "/greet", method = GET)
  public String greet() {
     return "hi!";
  }
}
