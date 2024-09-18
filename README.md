A base docker run image to use for docker images built through paketo-buildpacks.

I created this a POC to demonstrate whether MS fonts can be used for instance through apache-poi for container images built through paketo.


To use this with viz. spring boot build image goal:

```xml
    <build>
        <plugins>
            <plugin>
                <groupId>org.springframework.boot</groupId>
                <artifactId>spring-boot-maven-plugin</artifactId>
                <configuration>
                    <image>
                        <builder>paketobuildpacks/builder-jammy-base:0.4.330</builder>
                        <runImage>ghcr.io/sansmoraxz/base-dkr-image-with-ms-fonts:main</runImage>
                        <buildpacks>
                            <buildpack>gcr.io/paketo-buildpacks/amazon-corretto:8.5.2</buildpack>
                            <buildpack>paketo-buildpacks/java</buildpack>
                        </buildpacks>
                    </image>
                    <excludes>
                        <exclude>
                            <groupId>org.projectlombok</groupId>
                            <artifactId>lombok</artifactId>
                        </exclude>
                    </excludes>
                </configuration>
            </plugin>
        </plugins>
    </build>
```
