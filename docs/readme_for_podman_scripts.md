# Dependencies

You need run it use [podman](https://github.com/containers/podman), for how to install it, check [Installation Instructions](instli)

You'll need to run this using [podman](https://github.com/containers/podman). Check out the [Installation Instructions](instli)
for how to set it up.

podman share same usage with docker, maybe it works when use [docker](https://download.docker.com/linux/static/stable/) instead,
but this isn't guaranteed， 

Podman works pretty much the same way as Docker, so using Docker might work instead, 
but I can't guarantee it.

Honestly, I can't see why anyone would still use Docker! 

You can switch to Podman easily and painlessly without any issues, plus you get 
these awesome benefits:

1. No need to start a dockerd daemon anymore.
2. podman = docker + docker-compose + docker buildx + pod manager
3. It's (way) faster than Docker.
4. Say goodbye to fixuid!

# How to use it.

For a AMD64 static binary

```sh
# For shards managed project
$: crystal_build_amd64_binary # built binary will land in the `bin/` folder.

# Build one file
$: crystal_build_amd64_binary foo.cr # built binary will land in current folder.
```

For a ARM64 static binary

```crystal
# For shards managed project
$: crystal_build_arm64_binary

# Build one file
$: crystal_build_arm64_binary foo.cr
```

You can find all the default build arguments in the sample file: [build_flags.conf.sample](/bin/build_flags.conf.sample). 
Just rename that file to build_flags.conf, set your arguments there, and both scripts
will automatically pick them up.
