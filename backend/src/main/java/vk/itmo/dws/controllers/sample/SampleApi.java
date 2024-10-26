package vk.itmo.dws.controllers.sample;

import org.springframework.web.bind.annotation.GetMapping;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;

@Tag(name = "sample", description = "the sample API")
public interface SampleApi {
    @Operation(summary = "Get sample text", description = "Get sample text for endpoint", tags = {"sample"})
    @GetMapping
    default String hello() {
        return "Hello World";
    }
}
