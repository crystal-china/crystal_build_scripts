This project is split into two main components:

# Part 1: The magic-haversack Fork

This is a fork of [magic-haversack](https://github.com/luislavena/magic-haversack). We've updated it to cross-compile AMD64/ARM64 
static binaries and macOS binaries right on your Linux AMD64 laptop by leveraging 
[zig](https://github.com/ziglang/zig) cc.

All credit and honors go to the original author.

For more details on this part, check out the dedicated [README.md](/docs/readme_for_magic-haversack.md).

# Part 2: Podman-Powered Scripts

This section contains two scripts that use [Podman](https://github.com/containers/podman). 

These scripts handle the cross-compilation of AMD64/ARM64 static binaries within 
an [alpine linux](https://pkgs.alpinelinux.org/packages) Linux environment.

For more details on this part, check out the dedicated [README.md](/docs/readme_for_podman_scripts.md).

