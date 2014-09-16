# Minimal bootstrapper for Windows Toolchain

## Requirements

 - Install **Git** i386 in `Program Files (x86)`.
 - Clone the bootstrapper in a location **without space**.

## How to bootstrap

call `bootstrap.bat`

By default, the bootstrapper is using the node.js base toolchain.


## Create a standalone distribution version

call `bootstrap.bat dist`

After that, no need to have an Internet connection in order to install the toolchain (see previous point)


## Tree

The `packages` directory is used for the list of tools necessary in order
to use the toolchain.

The `7zip` directory is a tool in order to support the unzipping.

The `web` directory is a tool for downloading.

The `pkg` directory is the package "manager".

# Outputs

The builds are done in the `/build` directory. For the sysroot, look at
`/sysroot`.
