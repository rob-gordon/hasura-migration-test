FROM hasura/graphql-engine:latest.cli-migrations

ARG HASURA_GRAPHQL_DATABASE_URL=$DATABASE_URL
ENV HASURA_GRAPHQL_DATABASE_URL ${$DATABASE_URL}

RUN echo "The value of our var is $HASURA_GRAPHQL_DATABASE_URL"

ADD db/migrations /hasura-migrations/

CMD HASURA_GRAPHQL_DATABASE_URL=$DATABASE_URL && graphql-engine \
  --database-url $DATABASE_URL \
  serve \
  --server-port $PORT \
  --enable-console