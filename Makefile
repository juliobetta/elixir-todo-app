run_container=docker run -it --privileged=true --rm=true --name=elixir_todoapp -v $(CURDIR):/apps elixirtodo_app

build:
	@docker build -t elixirtodo_app . > /dev/null

mix: build
	@$(run_container) mix $(c)

bash: build
	@$(run_container) /bin/sh

iex: build
	@$(run_container) iex -S mix

exec: build
	@$(run_container) elixir $(file)
