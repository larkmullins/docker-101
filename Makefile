PHONY: clean

clean:
	@docker rm -f $(shell docker ps -aq)
	@docker rmi -f $(shell docker images -q)