# cpuburn - run the cpuburn utility in a container using the [do-framework](https://bit.ly/do-framework)

The [cpuburn](https://github.com/patrickmn/cpuburn) utility is a way to stress test cpu cores on the machine where the utility runs.

# Usage

## Cyclic pattern

The following commands burn all cpu cores for 20 seconds, sleep for 10 seconds, then repeat.

### Run locally

```bash
docker run -it --rm iankoulski/cpuburn
```

or 

```bash
git clone https://github.com/iankoulski/cpu-burn
cd cpu-burn
./build.sh
./run.sh
```

### Run on Kubernetes

```bash
git clone https://github.com/iankoulski/cpu-burn
cd cpu-burn
./build.sh
./push.sh
sed -i 's/export TO=docker/export TO=kubernetes/g' .env
./run.sh
```

## Continuous burn pattern

Burn all cores

```bash
docker run -it --rm iankoulski/cpuburn cpuburn
```

Burn 1 core

```bash
docker run -it --rm iankoulski/cpuburn cpuburn -n 1
```

# Project description 

This is a Depend on Docker project which comes operational out of the box 
and is configured with reasonable defaults, which can be customized as needed.


The project contains the following scripts:
* `config.sh` - open the configuration file .env in an editor so the project can be customized
* `build.sh` - build the container image
* `test.sh` - run container unit tests
* `push.sh` - push the container image to a registry
* `pull.sh` - pull the container image from a registry
* `run.sh [cmd]` - run the container, passing an argument overrides the default command
* `status.sh` - show container status - running, exited, etc.
* `logs.sh` - tail container logs
* `exec.sh [cmd]` - open a shell or execute a specified command in the running container
