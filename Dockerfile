FROM hasura/graphql-engine:latest.cli-migrations

ADD db/migrations /hasura-migrations/

CMD HASURA_GRAPHQL_DATABASE_URL=$DATABASE_URL && graphql-engine \
  --database-url $DATABASE_URL \
  serve \
  --server-port $PORT \
  --enable-console