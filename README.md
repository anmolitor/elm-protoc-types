# elm-protoc-types

Protobufs Well-Known Types as an Elm Package. Generated via protoc-gen-elm.

** MOVED TO https://package.elm-lang.org/packages/anmolitor/elm-protoc-types/latest/ **

## What is this?

[Protocol buffers](https://protobuf.dev/) are a serialization format. The idea is that you write `.proto` files describing your data structures and then generate source code from them in your favourite languages using the [protoc compiler](https://github.com/protocolbuffers/protobuf/releases/tag/v22.2) and the respective language plugins.

When you install `protoc` it automatically includes a directory of proto files containing the so called [well-known types](https://protobuf.dev/reference/protobuf/google.protobuf/).

These are
- Compiler Internals (`DescriptorProto`, `Field`, `Enum`, ...)
- Wrappers for scalar types (`BoolValue`, `BytesValue`, `Int32Value`, ...)
- Useful utilities (`Timestamp`, `Duration`, `Empty`, `FieldMask`)

This package was created/is updated by running `protoc` with the
[protoc-gen-elm](https://github.com/andreasewering/protoc-gen-elm) plugin on the directory included in the `protoc` installation.

You can do this yourself, but this might be useful if you want to skip this part of your build process.

## Future ideas

- Some utility types are not quite in the "Elm format" - timestamp for instance consists of a `secs` and `nanos` field whereas Elms `time` package prefers using the `Posix` Type, which is a wrapper around a number of milliseconds. This package could provide common conversions.

Feel free to open an issue/create a pull request if you have a suggestion or need one of the above ideas implemented.

There are no plans to add .proto generated types other than the well-known types.

