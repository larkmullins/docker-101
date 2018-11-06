PHONY: clean

clean:
	@docker rm -f $(shell docker ps -aq)
	@docker rmi -f $(shell docker images -q)

# example-01:
# 	@docker build -t docker/service:101 -f docker-files/example-01.dockerfile .

# example-02:
# 	@docker build -t docker/service:101 -f docker-files/example-02.dockerfile .

# example-03:
# 	@docker build -t docker/service:101 -f docker-files/example-03.dockerfile .