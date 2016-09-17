package uk.co.assuriti;

import org.camunda.bpm.application.ProcessApplication;
import org.camunda.bpm.spring.boot.starter.SpringBootProcessApplication;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * Created by neil on 13/09/16.
 */
@SpringBootApplication
public class Application extends SpringBootProcessApplication {

    public static void main(String[] args) {
         SpringApplication.run(Application.class, args);
    }
}