# Variables
MACHINE_LEARNING_IMAGE = machine-learning-env
DEEP_LEARNING_GPU_IMAGE = deep-learning-gpu-env
DEEP_LEARNING_CPU_IMAGE = deep-learning-cpu-env
CONTAINER_PORT = 8888
HOST_PORT = 8888
VOLUME = \$(shell pwd):/home/app

# Targets
.PHONY: build run clean help

# Build the Docker images
build: build-machine-learning build-deep-learning-gpu build-deep-learning-cpu

build-machine-learning:
	@echo "Building the machine-learning-env Docker image..."
	docker build $(MACHINE_LEARNING_IMAGE) -t $(MACHINE_LEARNING_IMAGE)

build-deep-learning-gpu:
	@echo "Building the deep-learning-gpu-env Docker image..."
	docker build $(DEEP_LEARNING_GPU_IMAGE) -t $(DEEP_LEARNING_GPU_IMAGE)

build-deep-learning-cpu:
	@echo "Building the deep-learning-cpu-env Docker image..."
	docker build $(DEEP_LEARNING_CPU_IMAGE) -t $(DEEP_LEARNING_CPU_IMAGE)

# Run the Docker containers
run: run-machine-learning run-deep-learning-gpu run-deep-learning-cpu

run-machine-learning:
	@echo "Running the machine-learning-env Docker container..."
	docker run --name $(MACHINE_LEARNING_IMAGE) -p $(HOST_PORT):$(CONTAINER_PORT) -v $(VOLUME) $(MACHINE_LEARNING_IMAGE)

run-deep-learning-gpu:
	@echo "Running the deep-learning-gpu-env Docker container..."
	docker run --name $(DEEP_LEARNING_GPU_IMAGE) -p $(HOST_PORT):$(CONTAINER_PORT) -v $(VOLUME) $(DEEP_LEARNING_GPU_IMAGE)

run-deep-learning-cpu:
	@echo "Running the deep-learning-cpu-env Docker container..."
	docker run --name $(DEEP_LEARNING_CPU_IMAGE) -p $(HOST_PORT):$(CONTAINER_PORT) -v $(VOLUME) $(DEEP_LEARNING_CPU_IMAGE)

# Clean up Docker images and containers
clean: clean-machine-learning clean-deep-learning-gpu clean-deep-learning-cpu

clean-machine-learning:
	@echo "Cleaning up machine-learning-env Docker images and containers..."
	@docker stop $(MACHINE_LEARNING_IMAGE)
	@docker rm -f $(MACHINE_LEARNING_IMAGE)
	@docker rmi -f $(MACHINE_LEARNING_IMAGE)

clean-deep-learning-gpu:
	@echo "Cleaning up deep-learning-gpu-env Docker images and containers..."
	@docker stop $(DEEP_LEARNING_GPU_IMAGE)
	@docker rm -f $(DEEP_LEARNING_GPU_IMAGE)
	@docker rmi -f $(DEEP_LEARNING_GPU_IMAGE)

clean-deep-learning-cpu:
	@echo "Cleaning up deep-learning-cpu-env Docker images and containers..."
	@docker stop $(DEEP_LEARNING_CPU_IMAGE)
	@docker rm -f $(DEEP_LEARNING_CPU_IMAGE)
	@docker rmi -f $(DEEP_LEARNING_CPU_IMAGE)

# Display available targets
help:
	@echo "Available targets:"
	@echo "  build                    Build all Docker images"
	@echo "  build-machine-learning   Build the machine-learning-env Docker image"
	@echo "  build-deep-learning-gpu  Build the deep-learning-gpu-env Docker image"
	@echo "  build-deep-learning-cpu  Build the deep-learning-cpu-env Docker image"
	@echo "  run                      Run all Docker containers"
	@echo "  run-machine-learning     Run the machine-learning-env Docker container"
	@echo "  run-deep-learning-gpu    Run the deep-learning-gpu-env Docker container"
	@echo "  run-deep-learning-cpu    Run the deep-learning-cpu-env Docker container"
	@echo "  clean                    Clean up all Docker images and containers"
	@echo "  clean-machine-learning   Clean up machine-learning-env Docker images and containers"
	@echo "  clean-deep-learning-gpu  Clean up deep-learning-gpu-env Docker images and containers"
	@echo "  clean-deep-learning-cpu  Clean up deep-learning-cpu-env Docker images and containers"
	@echo "  help                     Display this help"
