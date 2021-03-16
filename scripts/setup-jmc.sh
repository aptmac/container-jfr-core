# Download the repo archive
wget https://github.com/aptmac/jmc/archive/migrate-rjmx.zip
unzip migrate-rjmx.zip

# Build and install jmc core
cd jmc-migrate-rjmx/core
mvn clean install

# Remove the archive
cd ../../
rm -rf jmc-migrate-rjmx migrate-rjmx.zip