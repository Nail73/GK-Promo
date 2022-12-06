package ru.gulliver;


import io.restassured.RestAssured;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.context.SpringBootTest.WebEnvironment;
import org.springframework.boot.web.server.LocalServerPort;
import org.springframework.http.HttpStatus;
import org.springframework.test.context.junit4.SpringRunner;

import static org.junit.Assert.assertEquals;

@RunWith(SpringRunner.class)
@SpringBootTest(classes = Application.class, webEnvironment = WebEnvironment.RANDOM_PORT)
public class AutoConfigIntegrationTest {

    @LocalServerPort
    private int port;

    @Test
    public void givenAuthentication_whenAccessHome_thenOK() {
        int statusCode = RestAssured.given().auth().basic("john", "123").get("http://localhost:" + port).statusCode();
        assertEquals(HttpStatus.OK.value(), statusCode);
    }
}
