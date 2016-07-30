FROM msaraiva/elixir-dev

RUN mkdir -p /apps
WORKDIR /apps

VOLUME ["/apps"]

RUN mix hex.info
RUN mix local.hex --force
RUN mix deps.get --force & >/dev/null

CMD ["/bin/sh"]
