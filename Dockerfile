ARG HASURA_GRAPHQL_DATABASE_URL
ARG HASURA_GRAPHQL_MIGRATIONS_DATABASE_ENV_VAR

FROM hasura/graphql-engine:latest.cli-migrations

RUN echo "Oh dang look at that ${HASURA_GRAPHQL_DATABASE_URL}"

ADD db/migrations /hasura-migrations/

CMD echo $HASURA_GRAPHQL_DATABASE_URL 

# && graphql-engine \
#   --database-url $DATABASE_URL \
#   serve \
#   --server-port $PORT \
#   --enable-console