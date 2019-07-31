###################
# RELEASE BUILDER #
###################
FROM elixir:1.9-alpine AS builder

ENV MIX_ENV=prod

WORKDIR /opt/app

# Install required packages
RUN apk add \
  --update \
  --no-cache \
  alpine-sdk

# Install hex (Elixir package manager)
RUN mix local.hex --if-missing --force

# Install rebar (Erlang build tool)
RUN mix local.rebar --force

# Copy all dependencies files
COPY mix.* ./

# Install all production dependencies
RUN mix deps.get --only prod

# Compile all dependencies
RUN mix deps.compile

# Copy all application files
COPY . .

# Compile the entire project
RUN mix compile

# Build a release
RUN mix release

##################
# RELEASE RUNNER #
##################
FROM alpine:3.9

RUN apk add \
  --update \
  --no-cache \
  bash openssl-dev postgresql-client

WORKDIR /opt/app

# Import the release binary
COPY --from=builder /opt/app/_build/prod/rel/prod .

# Expose Phoenix PORT variable
EXPOSE 4444

CMD ["/bin/sh", "-c", "./bin/prod start"]
