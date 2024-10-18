# data-sciences-docker

This project provides a `Makefile` to manage multiple Docker environments for machine learning and deep learning. The environments include:

- `machine-learning-env`: A general machine learning environment.
- `deep-learning-gpu-env`: A deep learning environment optimized for GPU usage.
- `deep-learning-cpu-env`: A deep learning environment optimized for CPU usage.

## Prerequisites

- Docker installed on your machine.
- A `requirements.txt` file in each environment directory containing the necessary Python dependencies.

## Makefile

The `Makefile` provides targets to build, run, and clean up Docker images and containers for each environment.

### Targets

- **build**: Build all Docker images.
- **build-machine-learning**: Build the `machine-learning-env` Docker image.
- **build-deep-learning-gpu**: Build the `deep-learning-gpu-env` Docker image.
- **build-deep-learning-cpu**: Build the `deep-learning-cpu-env` Docker image.
- **run**: Run all Docker containers.
- **run-machine-learning**: Run the `machine-learning-env` Docker container.
- **run-deep-learning-gpu**: Run the `deep-learning-gpu-env` Docker container.
- **run-deep-learning-cpu**: Run the `deep-learning-cpu-env` Docker container.
- **clean**: Clean up all Docker images and containers.
- **clean-machine-learning**: Clean up `machine-learning-env` Docker images and containers.
- **clean-deep-learning-gpu**: Clean up `deep-learning-gpu-env` Docker images and containers.
- **clean-deep-learning-cpu**: Clean up `deep-learning-cpu-env` Docker images and containers.
- **help**: Display available targets.

### Usage

1. **Build all Docker images**:

```sh
make build
```

2. **Build a specific Docker image**

```sh
make build-machine-learning
make build-deep-learning-gpu
make build-deep-learning-cpu
```

3. **Run all Docker containers:**

```sh
make run
```

4. **Run a specific Docker container:**

```sh
make run-machine-learning
make run-deep-learning-gpu
make run-deep-learning-cpu
```

5. **Clean up all Docker images and containers:**

```sh
make clean
```

6. **Clean up a specific Docker image and container:**

```sh
make clean-machine-learning
make clean-deep-learning-gpu
make clean-deep-learning-cpu
```

7. **Display available targets:**

```sh
make clean-machine-learning
make clean-deep-learning-gpu
make clean-deep-learning-cpu
```

## Directory structure

```
project-root/
│
├── machine-learning-env/
│ ├── Dockerfile
│ └── requirements.txt
│
├── deep-learning-gpu-env/
│ ├── Dockerfile
│ └── requirements.txt
│
├── deep-learning-cpu-env/
│ ├── Dockerfile
│ └── requirements.txt
│
├── Makefile
└── README.md
```

## Licence

GNU General Public License v3.0
