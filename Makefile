PHONY: clean

clean:
	@docker rmi -f $(shell docker images -q)