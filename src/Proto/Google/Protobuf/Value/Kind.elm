{- !!! DO NOT EDIT THIS FILE MANUALLY !!! -}


module Proto.Google.Protobuf.Value.Kind exposing (Kind(..))

{-| This file was automatically generated by

  - [`protoc-gen-elm`](https://www.npmjs.com/package/protoc-gen-elm) 4.0.1
  - `protoc` 4.22.2
  - the following specification files: `google/protobuf/struct.proto`

To run it, add a dependency via `elm install` on [`elm-protocol-buffers`](https://package.elm-lang.org/packages/eriktim/elm-protocol-buffers/1.2.0) version latest or higher.

@docs Kind

-}


{-| The kind of value.


## Options


### NullValue

Represents a null value.


### NumberValue

Represents a double value.


### StringValue

Represents a string value.


### BoolValue

Represents a boolean value.


### StructValue

Represents a structured value.


### ListValue

Represents a repeated `Value`.

-}
type Kind a0 a1 a2 a3 a4 a5
    = NullValue a0
    | NumberValue a1
    | StringValue a2
    | BoolValue a3
    | StructValue a4
    | ListValue a5
