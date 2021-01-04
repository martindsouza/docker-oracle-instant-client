# Docker for Oracle Instant Client / SQL*Plus

*Note: Dockerfile originated from: https://github.com/oracle/docker-images/tree/master/OracleInstantClient*


```bash
# Build the image
docker build \
  -t oracle-instantclient:19.5.0 \
  -t oracle-instantclient:latest \
  .

```


## Using the Oracle Wallet
If connecting to the Oracle Cloud you'll need to provide a `TNS_ADMIN`. See the [docker sqlcl](https://github.com/martindsouza/docker-oracle-sqlcl#oracle-wallet--oracle-oci-atp) documentation about how to set the `TNS_ADMIN` (it's the same steps for `sqlplus`)