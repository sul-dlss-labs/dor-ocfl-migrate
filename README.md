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

## Output

The resulting directory structure in the `ocfl` directory will be keyed off of the druid, where each object directory looks something like:

```text
ocfl/hb4/39q/x46/hb439qx4658/
├── 0=ocfl_object_1.0
├── inventory.json
├── inventory.json.sha512
├── v1
│   ├── content
│   │   ├── AUDIT
│   │   └── FOXML
│   ├── inventory.json
│   └── inventory.json.sha512
├── v10
│   ├── content
│   │   └── contentMetadata
│   ├── inventory.json
│   └── inventory.json.sha512
├── v11
│   ├── content
│   │   └── RELS-EXT
│   ├── inventory.json
│   └── inventory.json.sha512
├── v12
│   ├── content
│   │   └── descMetadata
│   ├── inventory.json
│   └── inventory.json.sha512
├── v13
│   ├── content
│   │   └── descMetadata
│   ├── inventory.json
│   └── inventory.json.sha512
├── v14
│   ├── content
│   │   └── contentMetadata
│   ├── inventory.json
│   └── inventory.json.sha512
├── v15
│   ├── inventory.json
│   └── inventory.json.sha512
├── v2
│   ├── content
│   │   └── RELS-EXT
│   ├── inventory.json
│   └── inventory.json.sha512
├── v3
│   ├── content
│   │   └── DC
│   ├── inventory.json
│   └── inventory.json.sha512
├── v4
│   ├── content
│   │   └── sourceMetadata
│   ├── inventory.json
│   └── inventory.json.sha512
├── v5
│   ├── content
│   │   └── workflows
│   ├── inventory.json
│   └── inventory.json.sha512
├── v6
│   ├── content
│   │   └── descMetadata
│   ├── inventory.json
│   └── inventory.json.sha512
├── v7
│   ├── content
│   │   └── identityMetadata
│   ├── inventory.json
│   └── inventory.json.sha512
├── v8
│   ├── content
│   │   └── events
│   ├── inventory.json
│   └── inventory.json.sha512
└── v9
    ├── content
    │   └── provenanceMetadata
    ├── inventory.json
    └── inventory.json.sha512
```
