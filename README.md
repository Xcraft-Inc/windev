# Minimal bootstrapper for Windows Toolchain

## How to bootstrap

call `bootstrap.bat`

By default, the bootstrapper is using the node.js base toolchain.

## Tree

The `packages` directory is used for the list of tools necessary in order
to use the toolchain.

The `7zip` directory is a tool in order to support the unzipping.

The `web` directory is a tool for downloading.

The `pkg` directory is the package "manager".

# Outputs

The builds are done in the `/build` directory. For the sysroot, look at
`/sysroot`.
