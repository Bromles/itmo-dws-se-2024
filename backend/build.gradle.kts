import org.liquibase.gradle.Activity

plugins {
    java
    id("org.springframework.boot") version "3.3.4"
    id("io.spring.dependency-management") version "1.1.6"
    id("org.liquibase.gradle") version "2.0.4"
}

//плагин для миграции - ./gradlew update
liquibase {
        activities(
        closureOf<NamedDomainObjectContainer<Activity>> {
            mapOf(
                "main" to closureOf<Activity> {
                    mapOf(
                        "logLevel" to "info",
                        "changeLogFile" to "db/changelog/db.changelog-master.yaml",
//                        "url" to "jdbc:postgresql://localhost:5434/mydatabase",
                        "url" to "jdbc:postgresql://localhost:5432/mydatabase",
                        "username" to "myuser",
                        "password" to "secret",
                        "driver" to "org.postgresql.Driver"
                    )
                }
            )
        }
    )


}


group = "vk"
version = "0.0.1-SNAPSHOT"

java {
    toolchain {
        languageVersion = JavaLanguageVersion.of(17)
    }
}

configurations {
    compileOnly {
        extendsFrom(configurations.annotationProcessor.get())
    }
}

repositories {
    mavenCentral()
}

dependencies {

    implementation("org.springframework.boot:spring-boot-starter-actuator")
    implementation("org.springframework.boot:spring-boot-starter-data-jpa")
    implementation("org.springframework.boot:spring-boot-starter-oauth2-resource-server")
    implementation("org.springframework.boot:spring-boot-starter-security")
    implementation("org.springframework.boot:spring-boot-starter-validation")
    implementation("org.springframework.boot:spring-boot-starter-web")
    implementation("org.liquibase:liquibase-core")

    //для плагина
    liquibaseRuntime("org.liquibase:liquibase-core")
    liquibaseRuntime("org.postgresql:postgresql:42.7.4")
    liquibaseRuntime("org.yaml:snakeyaml:2.0")


    implementation("org.springdoc:springdoc-openapi-starter-webmvc-ui:${project.properties["springoc.version"]}")
    compileOnly("org.projectlombok:lombok")
    developmentOnly("org.springframework.boot:spring-boot-devtools")
    developmentOnly("org.springframework.boot:spring-boot-docker-compose")
    runtimeOnly("org.postgresql:postgresql")
    annotationProcessor("org.projectlombok:lombok")
    testImplementation("org.springframework.boot:spring-boot-starter-test")
    testImplementation("org.springframework.security:spring-security-test")
    testRuntimeOnly("org.junit.platform:junit-platform-launcher")
    implementation("org.postgresql:postgresql:42.7.4")

}

tasks.withType<Test> {
    useJUnitPlatform()
}


