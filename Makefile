.PHONY: build
build: compose.yaml
	@docker compose build builder

.PHONY: console
console: compose.yaml
	@docker compose run --rm builder
