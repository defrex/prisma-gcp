#! /bin/bash

set -e

printf "
port: ${PORT}
managementApiSecret: ${MGMT_SECRET}
databases:
  default:
    connector: postgres
    host: ${DB_HOST}
    port: ${DB_PORT}
    database: ${DB_NAME}
    schema: ${DB_SCHEMA}
    user: ${DB_USER}
    password: ${DB_PASSWORD}
    ssl: true
" >> ${PRISMA_CONFIG_PATH}
