# curry-lsp

A framework for writing [Language Server Protocol (LSP)](https://microsoft.github.io/language-server-protocol/) servers and clients in Curry.

## Overview

The package currently includes

- [x] [Type definitions](src/LSP/Protocol/Types.curry) for all LSP structures, enumerations and type aliases
  - These are automatically generated from the [meta model](https://github.com/microsoft/vscode-languageserver-node/blob/main/protocol/metaModel.json)
- [x] Support for encoding and decoding JSON-RPC calls
- [x] A framework for writing language servers (partially implemented)
- [ ] A framework for writing language clients

> **Note:** The auto-generated types are currently around 6k lines of Curry code, which compiles to a ~280k line Haskell file. This means that compilation may take considerable time and memory.
