# Container-JFR-Core

Core library providing a convenience wrapper and headless stubs for managing
JFR with JDK Mission Control API

## Requirements
Build:
- Maven
- JDK11+
- JMC 8.1.0-SNAPSHOT artifacts

## Build

The Maven build expects to be able to find Java Mission Control (JMC)
artifacts in the local Maven repository. To ensure these are available, download
the modified JMC archive at [aptmac/jmc/migrate-rjmx](https://github.com/aptmac/jmc/archive/migrate-rjmx.zip)
and follow its build instructions. Run `mvn install` in the jmc core directory to
install its artifacts to the local repository. After this is complete, the
project in this repository may be built locally.

Alternatively, run the `setup-jmc.sh` script in the `/scripts` folder.

`mvn install` to compile this core library and publish the artifacts to the
local Maven repository for consumption by other projects.
