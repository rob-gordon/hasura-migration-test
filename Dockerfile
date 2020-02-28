FROM hasura/graphql-engine:latest.cli-migrations

ENV HASURA_GRAPHQL_DATABASE_URL ${DATABASE_URL}

CMD graphql-engine \
  --database-url $DATABASE_URL \
  serve \
  --server-port $PORT \
  --enable-console