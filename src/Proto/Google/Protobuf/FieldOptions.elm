{- !!! DO NOT EDIT THIS FILE MANUALLY !!! -}


module Proto.Google.Protobuf.FieldOptions exposing
    ( CType(..), JSType(..), OptionRetention(..), OptionTargetType(..), decodeCType, decodeJSType, decodeOptionRetention, decodeOptionTargetType, defaultCType
    , defaultJSType, defaultOptionRetention, defaultOptionTargetType, encodeCType, encodeJSType, encodeOptionRetention
    , encodeOptionTargetType, fieldNumbersCType, fieldNumbersJSType, fieldNumbersOptionRetention, fieldNumbersOptionTargetType
    , fromInternalCType, fromInternalJSType, fromInternalOptionRetention, fromInternalOptionTargetType, toInternalCType
    , toInternalJSType, toInternalOptionRetention, toInternalOptionTargetType
    )

{-| This file was automatically generated by

  - [`protoc-gen-elm`](https://www.npmjs.com/package/protoc-gen-elm) 3.2.3
  - `protoc` 4.22.2
  - the following specification files: `google/protobuf/descriptor.proto`

To run it, add a dependency via `elm install` on [`elm-protocol-buffers`](https://package.elm-lang.org/packages/eriktim/elm-protocol-buffers/1.2.0) version latest or higher.

@docs CType, JSType, OptionRetention, OptionTargetType, decodeCType, decodeJSType, decodeOptionRetention, decodeOptionTargetType, defaultCType
@docs defaultJSType, defaultOptionRetention, defaultOptionTargetType, encodeCType, encodeJSType, encodeOptionRetention
@docs encodeOptionTargetType, fieldNumbersCType, fieldNumbersJSType, fieldNumbersOptionRetention, fieldNumbersOptionTargetType
@docs fromInternalCType, fromInternalJSType, fromInternalOptionRetention, fromInternalOptionTargetType, toInternalCType
@docs toInternalJSType, toInternalOptionRetention, toInternalOptionTargetType

-}

import Proto.Google.Protobuf.Internals_
import Protobuf.Decode
import Protobuf.Encode


{-| The field numbers for the fields of `OptionTargetType`. This is mostly useful for internals, like documentation generation.
-}
fieldNumbersOptionTargetType : OptionTargetType -> Int
fieldNumbersOptionTargetType n_ =
    case n_ of
        TARGETTYPEUNKNOWN ->
            0

        TARGETTYPEFILE ->
            1

        TARGETTYPEEXTENSIONRANGE ->
            2

        TARGETTYPEMESSAGE ->
            3

        TARGETTYPEFIELD ->
            4

        TARGETTYPEONEOF ->
            5

        TARGETTYPEENUM ->
            6

        TARGETTYPEENUMENTRY ->
            7

        TARGETTYPESERVICE ->
            8

        TARGETTYPEMETHOD ->
            9


{-| Default for OptionTargetType. Should only be used for 'required' decoders as an initial value.
-}
defaultOptionTargetType : OptionTargetType
defaultOptionTargetType =
    TARGETTYPEUNKNOWN


{-| Convert a `OptionTargetType` into its internal representation `Proto__Google__Protobuf__FieldOptions__OptionTargetType`.

Using two different types is necessary to avoid recursive module references while having readable constructor names.

-}
toInternalOptionTargetType : OptionTargetType -> Proto.Google.Protobuf.Internals_.Proto__Google__Protobuf__FieldOptions__OptionTargetType
toInternalOptionTargetType data_ =
    case data_ of
        TARGETTYPEUNKNOWN ->
            Proto.Google.Protobuf.Internals_.Proto__Google__Protobuf__FieldOptions__TARGETTYPEUNKNOWN

        TARGETTYPEFILE ->
            Proto.Google.Protobuf.Internals_.Proto__Google__Protobuf__FieldOptions__TARGETTYPEFILE

        TARGETTYPEEXTENSIONRANGE ->
            Proto.Google.Protobuf.Internals_.Proto__Google__Protobuf__FieldOptions__TARGETTYPEEXTENSIONRANGE

        TARGETTYPEMESSAGE ->
            Proto.Google.Protobuf.Internals_.Proto__Google__Protobuf__FieldOptions__TARGETTYPEMESSAGE

        TARGETTYPEFIELD ->
            Proto.Google.Protobuf.Internals_.Proto__Google__Protobuf__FieldOptions__TARGETTYPEFIELD

        TARGETTYPEONEOF ->
            Proto.Google.Protobuf.Internals_.Proto__Google__Protobuf__FieldOptions__TARGETTYPEONEOF

        TARGETTYPEENUM ->
            Proto.Google.Protobuf.Internals_.Proto__Google__Protobuf__FieldOptions__TARGETTYPEENUM

        TARGETTYPEENUMENTRY ->
            Proto.Google.Protobuf.Internals_.Proto__Google__Protobuf__FieldOptions__TARGETTYPEENUMENTRY

        TARGETTYPESERVICE ->
            Proto.Google.Protobuf.Internals_.Proto__Google__Protobuf__FieldOptions__TARGETTYPESERVICE

        TARGETTYPEMETHOD ->
            Proto.Google.Protobuf.Internals_.Proto__Google__Protobuf__FieldOptions__TARGETTYPEMETHOD


{-| Convert the internal type `Proto__Google__Protobuf__FieldOptions__OptionTargetType` into a `OptionTargetType`.

Using two different types is necessary to avoid recursive module references while having readable constructor names.

-}
fromInternalOptionTargetType : Proto.Google.Protobuf.Internals_.Proto__Google__Protobuf__FieldOptions__OptionTargetType -> OptionTargetType
fromInternalOptionTargetType data_ =
    case data_ of
        Proto.Google.Protobuf.Internals_.Proto__Google__Protobuf__FieldOptions__TARGETTYPEUNKNOWN ->
            TARGETTYPEUNKNOWN

        Proto.Google.Protobuf.Internals_.Proto__Google__Protobuf__FieldOptions__TARGETTYPEFILE ->
            TARGETTYPEFILE

        Proto.Google.Protobuf.Internals_.Proto__Google__Protobuf__FieldOptions__TARGETTYPEEXTENSIONRANGE ->
            TARGETTYPEEXTENSIONRANGE

        Proto.Google.Protobuf.Internals_.Proto__Google__Protobuf__FieldOptions__TARGETTYPEMESSAGE ->
            TARGETTYPEMESSAGE

        Proto.Google.Protobuf.Internals_.Proto__Google__Protobuf__FieldOptions__TARGETTYPEFIELD ->
            TARGETTYPEFIELD

        Proto.Google.Protobuf.Internals_.Proto__Google__Protobuf__FieldOptions__TARGETTYPEONEOF ->
            TARGETTYPEONEOF

        Proto.Google.Protobuf.Internals_.Proto__Google__Protobuf__FieldOptions__TARGETTYPEENUM ->
            TARGETTYPEENUM

        Proto.Google.Protobuf.Internals_.Proto__Google__Protobuf__FieldOptions__TARGETTYPEENUMENTRY ->
            TARGETTYPEENUMENTRY

        Proto.Google.Protobuf.Internals_.Proto__Google__Protobuf__FieldOptions__TARGETTYPESERVICE ->
            TARGETTYPESERVICE

        Proto.Google.Protobuf.Internals_.Proto__Google__Protobuf__FieldOptions__TARGETTYPEMETHOD ->
            TARGETTYPEMETHOD


{-| Declares how to encode a `OptionTargetType` to Bytes. To actually perform the conversion to Bytes, you need to use Protobuf.Encode.encode from eriktim/elm-protocol-buffers.
-}
encodeOptionTargetType : OptionTargetType -> Protobuf.Encode.Encoder
encodeOptionTargetType =
    toInternalOptionTargetType
        >> Proto.Google.Protobuf.Internals_.encodeProto__Google__Protobuf__FieldOptions__OptionTargetType


{-| Declares how to decode a `OptionTargetType` from Bytes. To actually perform the conversion from Bytes, you need to use Protobuf.Decode.decode from eriktim/elm-protocol-buffers.
-}
decodeOptionTargetType : Protobuf.Decode.Decoder OptionTargetType
decodeOptionTargetType =
    Protobuf.Decode.map
        fromInternalOptionTargetType
        Proto.Google.Protobuf.Internals_.decodeProto__Google__Protobuf__FieldOptions__OptionTargetType


{-| This indicates the types of entities that the field may apply to when used
as an option. If it is unset, then the field may be freely used as an
option on any kind of entity. Note: as of January 2023, support for this is
in progress and does not yet have an effect (b/264593489).
-}
type OptionTargetType
    = TARGETTYPEUNKNOWN
    | TARGETTYPEFILE
    | TARGETTYPEEXTENSIONRANGE
    | TARGETTYPEMESSAGE
    | TARGETTYPEFIELD
    | TARGETTYPEONEOF
    | TARGETTYPEENUM
    | TARGETTYPEENUMENTRY
    | TARGETTYPESERVICE
    | TARGETTYPEMETHOD


{-| The field numbers for the fields of `OptionRetention`. This is mostly useful for internals, like documentation generation.
-}
fieldNumbersOptionRetention : OptionRetention -> Int
fieldNumbersOptionRetention n_ =
    case n_ of
        RETENTIONUNKNOWN ->
            0

        RETENTIONRUNTIME ->
            1

        RETENTIONSOURCE ->
            2


{-| Default for OptionRetention. Should only be used for 'required' decoders as an initial value.
-}
defaultOptionRetention : OptionRetention
defaultOptionRetention =
    RETENTIONUNKNOWN


{-| Convert a `OptionRetention` into its internal representation `Proto__Google__Protobuf__FieldOptions__OptionRetention`.

Using two different types is necessary to avoid recursive module references while having readable constructor names.

-}
toInternalOptionRetention : OptionRetention -> Proto.Google.Protobuf.Internals_.Proto__Google__Protobuf__FieldOptions__OptionRetention
toInternalOptionRetention data_ =
    case data_ of
        RETENTIONUNKNOWN ->
            Proto.Google.Protobuf.Internals_.Proto__Google__Protobuf__FieldOptions__RETENTIONUNKNOWN

        RETENTIONRUNTIME ->
            Proto.Google.Protobuf.Internals_.Proto__Google__Protobuf__FieldOptions__RETENTIONRUNTIME

        RETENTIONSOURCE ->
            Proto.Google.Protobuf.Internals_.Proto__Google__Protobuf__FieldOptions__RETENTIONSOURCE


{-| Convert the internal type `Proto__Google__Protobuf__FieldOptions__OptionRetention` into a `OptionRetention`.

Using two different types is necessary to avoid recursive module references while having readable constructor names.

-}
fromInternalOptionRetention : Proto.Google.Protobuf.Internals_.Proto__Google__Protobuf__FieldOptions__OptionRetention -> OptionRetention
fromInternalOptionRetention data_ =
    case data_ of
        Proto.Google.Protobuf.Internals_.Proto__Google__Protobuf__FieldOptions__RETENTIONUNKNOWN ->
            RETENTIONUNKNOWN

        Proto.Google.Protobuf.Internals_.Proto__Google__Protobuf__FieldOptions__RETENTIONRUNTIME ->
            RETENTIONRUNTIME

        Proto.Google.Protobuf.Internals_.Proto__Google__Protobuf__FieldOptions__RETENTIONSOURCE ->
            RETENTIONSOURCE


{-| Declares how to encode a `OptionRetention` to Bytes. To actually perform the conversion to Bytes, you need to use Protobuf.Encode.encode from eriktim/elm-protocol-buffers.
-}
encodeOptionRetention : OptionRetention -> Protobuf.Encode.Encoder
encodeOptionRetention =
    toInternalOptionRetention
        >> Proto.Google.Protobuf.Internals_.encodeProto__Google__Protobuf__FieldOptions__OptionRetention


{-| Declares how to decode a `OptionRetention` from Bytes. To actually perform the conversion from Bytes, you need to use Protobuf.Decode.decode from eriktim/elm-protocol-buffers.
-}
decodeOptionRetention : Protobuf.Decode.Decoder OptionRetention
decodeOptionRetention =
    Protobuf.Decode.map
        fromInternalOptionRetention
        Proto.Google.Protobuf.Internals_.decodeProto__Google__Protobuf__FieldOptions__OptionRetention


{-| If set to RETENTION\_SOURCE, the option will be omitted from the binary.
Note: as of January 2023, support for this is in progress and does not yet
have an effect (b/264593489).
-}
type OptionRetention
    = RETENTIONUNKNOWN
    | RETENTIONRUNTIME
    | RETENTIONSOURCE


{-| The field numbers for the fields of `JSType`. This is mostly useful for internals, like documentation generation.
-}
fieldNumbersJSType : JSType -> Int
fieldNumbersJSType n_ =
    case n_ of
        JSNORMAL ->
            0

        JSSTRING ->
            1

        JSNUMBER ->
            2


{-| Default for JSType. Should only be used for 'required' decoders as an initial value.
-}
defaultJSType : JSType
defaultJSType =
    JSNORMAL


{-| Convert a `JSType` into its internal representation `Proto__Google__Protobuf__FieldOptions__JSType`.

Using two different types is necessary to avoid recursive module references while having readable constructor names.

-}
toInternalJSType : JSType -> Proto.Google.Protobuf.Internals_.Proto__Google__Protobuf__FieldOptions__JSType
toInternalJSType data_ =
    case data_ of
        JSNORMAL ->
            Proto.Google.Protobuf.Internals_.Proto__Google__Protobuf__FieldOptions__JSNORMAL

        JSSTRING ->
            Proto.Google.Protobuf.Internals_.Proto__Google__Protobuf__FieldOptions__JSSTRING

        JSNUMBER ->
            Proto.Google.Protobuf.Internals_.Proto__Google__Protobuf__FieldOptions__JSNUMBER


{-| Convert the internal type `Proto__Google__Protobuf__FieldOptions__JSType` into a `JSType`.

Using two different types is necessary to avoid recursive module references while having readable constructor names.

-}
fromInternalJSType : Proto.Google.Protobuf.Internals_.Proto__Google__Protobuf__FieldOptions__JSType -> JSType
fromInternalJSType data_ =
    case data_ of
        Proto.Google.Protobuf.Internals_.Proto__Google__Protobuf__FieldOptions__JSNORMAL ->
            JSNORMAL

        Proto.Google.Protobuf.Internals_.Proto__Google__Protobuf__FieldOptions__JSSTRING ->
            JSSTRING

        Proto.Google.Protobuf.Internals_.Proto__Google__Protobuf__FieldOptions__JSNUMBER ->
            JSNUMBER


{-| Declares how to encode a `JSType` to Bytes. To actually perform the conversion to Bytes, you need to use Protobuf.Encode.encode from eriktim/elm-protocol-buffers.
-}
encodeJSType : JSType -> Protobuf.Encode.Encoder
encodeJSType =
    toInternalJSType >> Proto.Google.Protobuf.Internals_.encodeProto__Google__Protobuf__FieldOptions__JSType


{-| Declares how to decode a `JSType` from Bytes. To actually perform the conversion from Bytes, you need to use Protobuf.Decode.decode from eriktim/elm-protocol-buffers.
-}
decodeJSType : Protobuf.Decode.Decoder JSType
decodeJSType =
    Protobuf.Decode.map
        fromInternalJSType
        Proto.Google.Protobuf.Internals_.decodeProto__Google__Protobuf__FieldOptions__JSType


{-| `JSType` enumeration
-}
type JSType
    = JSNORMAL
    | JSSTRING
    | JSNUMBER


{-| The field numbers for the fields of `CType`. This is mostly useful for internals, like documentation generation.
-}
fieldNumbersCType : CType -> Int
fieldNumbersCType n_ =
    case n_ of
        STRING ->
            0

        CORD ->
            1

        STRINGPIECE ->
            2


{-| Default for CType. Should only be used for 'required' decoders as an initial value.
-}
defaultCType : CType
defaultCType =
    STRING


{-| Convert a `CType` into its internal representation `Proto__Google__Protobuf__FieldOptions__CType`.

Using two different types is necessary to avoid recursive module references while having readable constructor names.

-}
toInternalCType : CType -> Proto.Google.Protobuf.Internals_.Proto__Google__Protobuf__FieldOptions__CType
toInternalCType data_ =
    case data_ of
        STRING ->
            Proto.Google.Protobuf.Internals_.Proto__Google__Protobuf__FieldOptions__STRING

        CORD ->
            Proto.Google.Protobuf.Internals_.Proto__Google__Protobuf__FieldOptions__CORD

        STRINGPIECE ->
            Proto.Google.Protobuf.Internals_.Proto__Google__Protobuf__FieldOptions__STRINGPIECE


{-| Convert the internal type `Proto__Google__Protobuf__FieldOptions__CType` into a `CType`.

Using two different types is necessary to avoid recursive module references while having readable constructor names.

-}
fromInternalCType : Proto.Google.Protobuf.Internals_.Proto__Google__Protobuf__FieldOptions__CType -> CType
fromInternalCType data_ =
    case data_ of
        Proto.Google.Protobuf.Internals_.Proto__Google__Protobuf__FieldOptions__STRING ->
            STRING

        Proto.Google.Protobuf.Internals_.Proto__Google__Protobuf__FieldOptions__CORD ->
            CORD

        Proto.Google.Protobuf.Internals_.Proto__Google__Protobuf__FieldOptions__STRINGPIECE ->
            STRINGPIECE


{-| Declares how to encode a `CType` to Bytes. To actually perform the conversion to Bytes, you need to use Protobuf.Encode.encode from eriktim/elm-protocol-buffers.
-}
encodeCType : CType -> Protobuf.Encode.Encoder
encodeCType =
    toInternalCType >> Proto.Google.Protobuf.Internals_.encodeProto__Google__Protobuf__FieldOptions__CType


{-| Declares how to decode a `CType` from Bytes. To actually perform the conversion from Bytes, you need to use Protobuf.Decode.decode from eriktim/elm-protocol-buffers.
-}
decodeCType : Protobuf.Decode.Decoder CType
decodeCType =
    Protobuf.Decode.map
        fromInternalCType
        Proto.Google.Protobuf.Internals_.decodeProto__Google__Protobuf__FieldOptions__CType


{-| `CType` enumeration
-}
type CType
    = STRING
    | CORD
    | STRINGPIECE
