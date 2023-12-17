{- !!! DO NOT EDIT THIS FILE MANUALLY !!! -}


module Proto.Google.Protobuf.EnumDescriptorProto exposing
    ( EnumReservedRange, decodeEnumReservedRange, defaultEnumReservedRange, encodeEnumReservedRange, fieldNumbersEnumReservedRange
    , jsonEncodeEnumReservedRange
    )

{-| This file was automatically generated by

  - [`protoc-gen-elm`](https://www.npmjs.com/package/protoc-gen-elm) 3.3.4
  - `protoc` 4.22.2
  - the following specification files: `google/protobuf/descriptor.proto`

To run it, add a dependency via `elm install` on [`elm-protocol-buffers`](https://package.elm-lang.org/packages/eriktim/elm-protocol-buffers/1.2.0) version latest or higher.

@docs EnumReservedRange, decodeEnumReservedRange, defaultEnumReservedRange, encodeEnumReservedRange, fieldNumbersEnumReservedRange
@docs jsonEncodeEnumReservedRange

-}

import Json.Encode
import Proto.Google.Protobuf.Internals_
import Protobuf.Decode
import Protobuf.Encode


{-| Encode a `EnumReservedRange` to JSON. Uses the canonical encoding described here: <https://protobuf.dev/programming-guides/proto3/#json>
-}
jsonEncodeEnumReservedRange : EnumReservedRange -> Json.Encode.Value
jsonEncodeEnumReservedRange =
    Proto.Google.Protobuf.Internals_.jsonEncodeProto__Google__Protobuf__EnumDescriptorProto__EnumReservedRange


{-| The field numbers for the fields of `EnumReservedRange`. This is mostly useful for internals, like documentation generation.
-}
fieldNumbersEnumReservedRange : { start : Int, end : Int }
fieldNumbersEnumReservedRange =
    Proto.Google.Protobuf.Internals_.fieldNumbersProto__Google__Protobuf__EnumDescriptorProto__EnumReservedRange


{-| Default for EnumReservedRange. Should only be used for 'required' decoders as an initial value.
-}
defaultEnumReservedRange : EnumReservedRange
defaultEnumReservedRange =
    Proto.Google.Protobuf.Internals_.defaultProto__Google__Protobuf__EnumDescriptorProto__EnumReservedRange


{-| Declares how to decode a `EnumReservedRange` from Bytes. To actually perform the conversion from Bytes, you need to use Protobuf.Decode.decode from eriktim/elm-protocol-buffers.
-}
decodeEnumReservedRange : Protobuf.Decode.Decoder EnumReservedRange
decodeEnumReservedRange =
    Proto.Google.Protobuf.Internals_.decodeProto__Google__Protobuf__EnumDescriptorProto__EnumReservedRange


{-| Declares how to encode a `EnumReservedRange` to Bytes. To actually perform the conversion to Bytes, you need to use Protobuf.Encode.encode from eriktim/elm-protocol-buffers.
-}
encodeEnumReservedRange : EnumReservedRange -> Protobuf.Encode.Encoder
encodeEnumReservedRange =
    Proto.Google.Protobuf.Internals_.encodeProto__Google__Protobuf__EnumDescriptorProto__EnumReservedRange


{-| Range of reserved numeric values. Reserved values may not be used by
entries in the same enum. Reserved ranges may not overlap.

Note that this is distinct from DescriptorProto.ReservedRange in that it
is inclusive such that it can appropriately represent the entire int32
domain.


## Fields


### start

Inclusive.


### end

Inclusive.

-}
type alias EnumReservedRange =
    Proto.Google.Protobuf.Internals_.Proto__Google__Protobuf__EnumDescriptorProto__EnumReservedRange
