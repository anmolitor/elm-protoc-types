{- !!! DO NOT EDIT THIS FILE MANUALLY !!! -}


module Proto.Google.Protobuf.FileOptions exposing
    ( OptimizeMode(..), decodeOptimizeMode, defaultOptimizeMode, encodeOptimizeMode, fieldNumbersOptimizeMode, fromInternalOptimizeMode
    , toInternalOptimizeMode
    )

{-| This file was automatically generated by

  - [`protoc-gen-elm`](https://www.npmjs.com/package/protoc-gen-elm) 3.2.3
  - `protoc` 4.22.2
  - the following specification files: `google/protobuf/descriptor.proto`

To run it, add a dependency via `elm install` on [`elm-protocol-buffers`](https://package.elm-lang.org/packages/eriktim/elm-protocol-buffers/1.2.0) version latest or higher.

@docs OptimizeMode, decodeOptimizeMode, defaultOptimizeMode, encodeOptimizeMode, fieldNumbersOptimizeMode, fromInternalOptimizeMode
@docs toInternalOptimizeMode

-}

import Proto.Google.Protobuf.Internals_
import Protobuf.Decode
import Protobuf.Encode


{-| The field numbers for the fields of `OptimizeMode`. This is mostly useful for internals, like documentation generation.
-}
fieldNumbersOptimizeMode : OptimizeMode -> Int
fieldNumbersOptimizeMode n_ =
    case n_ of
        SPEED ->
            1

        CODESIZE ->
            2

        LITERUNTIME ->
            3


{-| Default for OptimizeMode. Should only be used for 'required' decoders as an initial value.
-}
defaultOptimizeMode : OptimizeMode
defaultOptimizeMode =
    SPEED


{-| Convert a `OptimizeMode` into its internal representation `Proto__Google__Protobuf__FileOptions__OptimizeMode`.

Using two different types is necessary to avoid recursive module references while having readable constructor names.

-}
toInternalOptimizeMode : OptimizeMode -> Proto.Google.Protobuf.Internals_.Proto__Google__Protobuf__FileOptions__OptimizeMode
toInternalOptimizeMode data_ =
    case data_ of
        SPEED ->
            Proto.Google.Protobuf.Internals_.Proto__Google__Protobuf__FileOptions__SPEED

        CODESIZE ->
            Proto.Google.Protobuf.Internals_.Proto__Google__Protobuf__FileOptions__CODESIZE

        LITERUNTIME ->
            Proto.Google.Protobuf.Internals_.Proto__Google__Protobuf__FileOptions__LITERUNTIME


{-| Convert the internal type `Proto__Google__Protobuf__FileOptions__OptimizeMode` into a `OptimizeMode`.

Using two different types is necessary to avoid recursive module references while having readable constructor names.

-}
fromInternalOptimizeMode : Proto.Google.Protobuf.Internals_.Proto__Google__Protobuf__FileOptions__OptimizeMode -> OptimizeMode
fromInternalOptimizeMode data_ =
    case data_ of
        Proto.Google.Protobuf.Internals_.Proto__Google__Protobuf__FileOptions__SPEED ->
            SPEED

        Proto.Google.Protobuf.Internals_.Proto__Google__Protobuf__FileOptions__CODESIZE ->
            CODESIZE

        Proto.Google.Protobuf.Internals_.Proto__Google__Protobuf__FileOptions__LITERUNTIME ->
            LITERUNTIME


{-| Declares how to encode a `OptimizeMode` to Bytes. To actually perform the conversion to Bytes, you need to use Protobuf.Encode.encode from eriktim/elm-protocol-buffers.
-}
encodeOptimizeMode : OptimizeMode -> Protobuf.Encode.Encoder
encodeOptimizeMode =
    toInternalOptimizeMode >> Proto.Google.Protobuf.Internals_.encodeProto__Google__Protobuf__FileOptions__OptimizeMode


{-| Declares how to decode a `OptimizeMode` from Bytes. To actually perform the conversion from Bytes, you need to use Protobuf.Decode.decode from eriktim/elm-protocol-buffers.
-}
decodeOptimizeMode : Protobuf.Decode.Decoder OptimizeMode
decodeOptimizeMode =
    Protobuf.Decode.map
        fromInternalOptimizeMode
        Proto.Google.Protobuf.Internals_.decodeProto__Google__Protobuf__FileOptions__OptimizeMode


{-| Generated classes can be optimized for speed or code size.
-}
type OptimizeMode
    = SPEED
    | CODESIZE
    | LITERUNTIME
