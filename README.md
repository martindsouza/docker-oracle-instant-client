# Docker for Oracle Instant Client / SQL*Plus

*Note: Dockerfile originated from: https://github.com/oracle/docker-images/tree/master/OracleInstantClient*


```bash
# Build the image
docker build \
  -t oracle-instantclient:19.5.0 \
  -t oracle-instantclient:latest \
  .

```