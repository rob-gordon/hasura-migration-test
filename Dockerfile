FROM hasura/graphql-engine:latest.cli-migrations

ENV HASURA_GRAPHQL_DATABASE_URL "postgres://qumetknfxqsmyw:fcda9c2005ab66b8f70b70bb6aa461ff235941e560d6eab54bf4c56db3ad560c@ec2-52-86-33-50.compute-1.amazonaws.com:5432/d8buon5f65sa1t"
ENV MY_ONLY_SUCCESSFUL_VARIABLE 5

RUN echo "1 2 3 4 ${MY_ONLY_SUCCESSFUL_VARIABLE}"

ADD db/migrations /hasura-migrations/

CMD graphql-engine \
  --database-url $DATABASE_URL \
  serve \
  --server-port $PORT \
  --enable-console