# Minimal bootstrapper for Windows Toolchain

## Requirements

 - Install **Git** i386 in `Program Files (x86)`.
 - Clone the bootstrapper in a location **without space**.

### Optional

- Install CMake (faster build for the cmake's toolchain version) but it is
  not mandatory.

## How to bootstrap

call `bootstrap.bat`

By default, the bootstrapper is using the node.js base toolchain.

## Create a standalone distribution version

call `bootstrap.bat dist`

After that, no need to have an Internet connection in order to install the
toolchain (see previous point)

## Tree

The `packages` directory is used for the list of tools necessary in order
to use the toolchain.

The `utils` directory is contains some helpers.

The `pkg` directory is the package "manager".

# Outputs

The builds are done in the `/build` directory. For the sysroot, look at
`/sysroot`.
