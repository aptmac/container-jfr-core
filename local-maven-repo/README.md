# Instructions

## Core JARs
```
cd jmc/core
mvn clean install
cp org.openjdk.jmc.common/target/common-8.1.0-SNAPSHOT.jar ../../container-jfr-core/local-maven-repo
cp org.openjdk.jmc.flightrecorder/target/flightrecorder-8.1.0-SNAPSHOT.jar ../../container-jfr-core/local-maven-repo
cp org.openjdk.jmc.flightrecorder.configuration/target/flightrecorder.configuration-8.1.0-SNAPSHOT.jar ../../container-jfr-core/local-maven-repo
cp org.openjdk.jmc.flightrecorder.rules/target/flightrecorder.rules-8.1.0-SNAPSHOT.jar ../../container-jfr-core/local-maven-repo
cp org.openjdk.jmc.flightrecorder.rules.jdk/target/flightrecorder.rules.jdk-8.1.0-SNAPSHOT.jar ../../container-jfr-core/local-maven-repo
cp org.openjdk.jmc.jdp/target/jdp-8.1.0-SNAPSHOT.jar ../../container-jfr-core/local-maven-repo
cp org.openjdk.jmc.rjmx.core/target/rjmx.core-8.1.0-SNAPSHOT.jar ../../container-jfr-core/local-maven-repo/
```

## JMC JARs
```
mvn install -pl .,releng:platform-definition-2020-09 -am
mvn install -pl .,application:org.openjdk.jmc.ui.common -am
mvn install -pl .,application:org.openjdk.jmc.commands -am
mvn install -pl .,application:org.openjdk.jmc.rjmx -am
mvn install -pl .,application:org.openjdk.jmc.rjmx.services.jfr -am

cp ../jmc/application/org.openjdk.jmc.commands/target/org.openjdk.jmc.commands-8.1.0-SNAPSHOT.jar ./local-maven-repo/
cp ../jmc/application/org.openjdk.jmc.ui.common/target/org.openjdk.jmc.ui.common-8.1.0-SNAPSHOT.jar ./local-maven-repo/
cp ../jmc/application/org.openjdk.jmc.rjmx/target/org.openjdk.jmc.rjmx-8.1.0-SNAPSHOT.jar ./local-maven-repo/
cp ../jmc/application/org.openjdk.jmc.rjmx.services.jfr/target/org.openjdk.jmc.rjmx.services.jfr-8.1.0-SNAPSHOT.jar ./local-maven-repo/
```

## Install to local m2 repo - double check, might not need this if not doing clean install for each jmc jar
```
mvn install:install-file -DgroupId=org.openjdk.jmc -DartifactId=org.openjdk.jmc.commands -Dversion=8.1.0-SNAPSHOT -Dpackaging=jar -Dfile=./local-maven-repo/org.openjdk.jmc.commands-8.1.0-SNAPSHOT.jar
mvn install:install-file -DgroupId=org.openjdk.jmc -DartifactId=org.openjdk.jmc.ui.common -Dversion=8.1.0-SNAPSHOT -Dpackaging=jar -Dfile=./local-maven-repo/org.openjdk.jmc.ui.common-8.1.0-SNAPSHOT.jar
mvn install:install-file -DgroupId=org.openjdk.jmc -DartifactId=org.openjdk.jmc.rjmx -Dversion=8.1.0-SNAPSHOT -Dpackaging=jar -Dfile=./local-maven-repo/org.openjdk.jmc.rjmx-8.1.0-SNAPSHOT.jar
mvn install:install-file -DgroupId=org.openjdk.jmc -DartifactId=org.openjdk.jmc.rjmx.services.jfr -Dversion=8.1.0-SNAPSHOT -Dpackaging=jar -Dfile=./local-maven-repo/org.openjdk.jmc.rjmx.services.jfr-8.1.0-SNAPSHOT.jar
```