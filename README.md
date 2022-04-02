# dor-ocfl-migrate

This repository contains instructions for exporting SUL's Fedora3 filesystem to [OCFL](http://ocfl.io) using [migration-utils](https://github.com/fcrepo-exts/migration-utils). 

To run it you will need to copy the OCFL Root template into where the OCFL data will be written:

    cp -r ocfl-template ocfl

Then set the `JAVA_HOME` environment variable to the location to where you have Java v18 installed. And then you can run:

    ./convert.sh

It should write to `convert.log` about what it is doing.

## migration-utils

This repository contains a custom build of migration-utils until 6.2.0 is released. It was built from the main branch on April 2, 2022 using the following additions to the `pom.xml`:

```xml
<dependency>
  <groupId>edu.wisc.library.ocfl</groupId>
  <artifactId>ocfl-java-core</artifactId>
  <version>1.4.6</version>
</dependency>
<dependency>
  <groupId>edu.wisc.library.ocfl</groupId>
  <artifactId>ocfl-java-core</artifactId>
  <version>1.4.6</version>
  <exclusions>
    <exclusion>
      <groupId>org.slf4j</groupId>
      <artifactId>slf4j-api</artifactId>
    </exclusion>
  </exclusions>
</dependency>
```

