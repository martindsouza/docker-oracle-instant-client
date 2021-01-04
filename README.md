# Docker for Oracle Instant Client / SQL*Plus

*Note: Dockerfile originated from: https://github.com/oracle/docker-images/tree/master/OracleInstantClient*

*See: https://github.com/martindsouza/docker-oracle-sqlcl for examples on how to set aliases etc*

```bash
# Build the image
docker build \
  -t oracle-instantclient:19.9.0 \
  -t oracle-instantclient:latest \
  .
```


## Running

See https://github.com/martindsouza/docker-oracle-sqlcl for examples on how to run

Parameter | Description
--- | ---
`--network="host"` |  This will mimic the current host networking (with the goal of acting like a binary)
`-e ORACLE_PATH=/oracle/` |  Leave this as is
`-e TNS_ADMIN=$TNS_ADMIN` | This will detect your local (on  your laptop) `TNS_ADMIN` setting and propogate to the docker container. Note this should reference the location on the docker container and not a direct path to your system. Ex: on your laptop before running set `TNS_ADMIN=/oracle/wallets/bbspro-dev01` instead of `TNS_ADMIN=/Users/giffy/OneDrive/Documents/oracle/wallets/bbspro-dev01`
`-e RUN_COMMAND` |  *optional*. Will determine which command to run. If not provided `sqlplus` will be run. Additional tested commants `expdp` (data pump)
`-v ~/Documents/Oracle/:/oracle` | _(optional)_ for `login.sql` to load startup scripts
`-v ``pwd``:/sqlplus` | This will set the current directory that `sqlplus` is run to the one that the container is looking at

## Using the Oracle Wallet
If connecting to the Oracle Cloud you'll need to provide a `TNS_ADMIN`. See the [docker sqlcl](https://github.com/martindsouza/docker-oracle-sqlcl#oracle-wallet--oracle-oci-atp) documentation about how to set the `TNS_ADMIN` (it's the same steps for `sqlplus`)