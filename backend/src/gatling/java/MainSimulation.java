import io.gatling.javaapi.core.ScenarioBuilder;
import io.gatling.javaapi.core.Simulation;
import io.gatling.javaapi.http.HttpProtocolBuilder;

import static io.gatling.javaapi.core.CoreDsl.*;
import static io.gatling.javaapi.http.HttpDsl.http;

public class MainSimulation extends Simulation {
    HttpProtocolBuilder httpProtocol = http.baseUrl("http://localhost:8080")
            .acceptHeader("application/json");

    ScenarioBuilder mainScenario = scenario("My Scenario")
            .exec(http("Req 1").get("/api/v1/sections"));

    {
        setUp(
                mainScenario.injectOpen(rampUsers(1000).during(60))
        ).protocols(httpProtocol);
    }
}
