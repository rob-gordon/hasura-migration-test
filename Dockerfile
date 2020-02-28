FROM hasura/graphql-engine:latest.cli-migrations

CMD graphql-engine \
  --database-url $DATABASE_URL \
  serve \
  --server-port $PORT \
  --enable-console