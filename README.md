# curry-lsp

A framework for writing language servers and clients in Curry.

## Overview

The package currently includes

- [x] [Type definitions](src/LSP/Protocol/Types.curry) for all LSP structures, enumerations and type aliases
  - These are automatically generated from the [meta model](https://github.com/microsoft/vscode-languageserver-node/blob/main/protocol/metaModel.json)
- [ ] Support for encoding and decoding JSON-RPC calls
- [ ] A framework for writing language servers
- [ ] A framework for writing language clients
