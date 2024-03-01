{- !!! DO NOT EDIT THIS FILE MANUALLY !!! -}


module Proto.Google.Protobuf.Compiler.Internals_ exposing
    ( Proto__Google__Protobuf__Compiler__CodeGeneratorRequest, Proto__Google__Protobuf__Compiler__CodeGeneratorResponse
    , Proto__Google__Protobuf__Compiler__CodeGeneratorResponse__File, Proto__Google__Protobuf__Compiler__Version
    , decodeProto__Google__Protobuf__Compiler__CodeGeneratorRequest
    , decodeProto__Google__Protobuf__Compiler__CodeGeneratorResponse
    , decodeProto__Google__Protobuf__Compiler__CodeGeneratorResponse__File, decodeProto__Google__Protobuf__Compiler__Version
    , defaultProto__Google__Protobuf__Compiler__CodeGeneratorRequest
    , defaultProto__Google__Protobuf__Compiler__CodeGeneratorResponse
    , defaultProto__Google__Protobuf__Compiler__CodeGeneratorResponse__File, defaultProto__Google__Protobuf__Compiler__Version
    , encodeProto__Google__Protobuf__Compiler__CodeGeneratorRequest
    , encodeProto__Google__Protobuf__Compiler__CodeGeneratorResponse
    , encodeProto__Google__Protobuf__Compiler__CodeGeneratorResponse__File, encodeProto__Google__Protobuf__Compiler__Version
    , fieldNumbersProto__Google__Protobuf__Compiler__CodeGeneratorRequest
    , fieldNumbersProto__Google__Protobuf__Compiler__CodeGeneratorResponse
    , fieldNumbersProto__Google__Protobuf__Compiler__CodeGeneratorResponse__File
    , fieldNumbersProto__Google__Protobuf__Compiler__Version, jsonDecodeProto__Google__Protobuf__Compiler__CodeGeneratorRequest
    , jsonDecodeProto__Google__Protobuf__Compiler__CodeGeneratorResponse
    , jsonDecodeProto__Google__Protobuf__Compiler__CodeGeneratorResponse__File
    , jsonDecodeProto__Google__Protobuf__Compiler__Version, jsonEncodeProto__Google__Protobuf__Compiler__CodeGeneratorRequest
    , jsonEncodeProto__Google__Protobuf__Compiler__CodeGeneratorResponse
    , jsonEncodeProto__Google__Protobuf__Compiler__CodeGeneratorResponse__File
    , jsonEncodeProto__Google__Protobuf__Compiler__Version
    )

{-| This file was automatically generated by

  - [`protoc-gen-elm`](https://www.npmjs.com/package/protoc-gen-elm) 4.0.1
  - `protoc` 4.22.2
  - the following specification files: `google/protobuf/compiler/plugin.proto`

To run it, add a dependency via `elm install` on [`elm-protocol-buffers`](https://package.elm-lang.org/packages/eriktim/elm-protocol-buffers/1.2.0) version latest or higher.

@docs Proto__Google__Protobuf__Compiler__CodeGeneratorRequest, Proto__Google__Protobuf__Compiler__CodeGeneratorResponse

@docs Proto__Google__Protobuf__Compiler__CodeGeneratorResponse__File, Proto__Google__Protobuf__Compiler__Version

@docs decodeProto__Google__Protobuf__Compiler__CodeGeneratorRequest

@docs decodeProto__Google__Protobuf__Compiler__CodeGeneratorResponse

@docs decodeProto__Google__Protobuf__Compiler__CodeGeneratorResponse__File, decodeProto__Google__Protobuf__Compiler__Version

@docs defaultProto__Google__Protobuf__Compiler__CodeGeneratorRequest

@docs defaultProto__Google__Protobuf__Compiler__CodeGeneratorResponse

@docs defaultProto__Google__Protobuf__Compiler__CodeGeneratorResponse__File, defaultProto__Google__Protobuf__Compiler__Version

@docs encodeProto__Google__Protobuf__Compiler__CodeGeneratorRequest

@docs encodeProto__Google__Protobuf__Compiler__CodeGeneratorResponse

@docs encodeProto__Google__Protobuf__Compiler__CodeGeneratorResponse__File, encodeProto__Google__Protobuf__Compiler__Version

@docs fieldNumbersProto__Google__Protobuf__Compiler__CodeGeneratorRequest

@docs fieldNumbersProto__Google__Protobuf__Compiler__CodeGeneratorResponse

@docs fieldNumbersProto__Google__Protobuf__Compiler__CodeGeneratorResponse__File

@docs fieldNumbersProto__Google__Protobuf__Compiler__Version, jsonDecodeProto__Google__Protobuf__Compiler__CodeGeneratorRequest

@docs jsonDecodeProto__Google__Protobuf__Compiler__CodeGeneratorResponse

@docs jsonDecodeProto__Google__Protobuf__Compiler__CodeGeneratorResponse__File

@docs jsonDecodeProto__Google__Protobuf__Compiler__Version, jsonEncodeProto__Google__Protobuf__Compiler__CodeGeneratorRequest

@docs jsonEncodeProto__Google__Protobuf__Compiler__CodeGeneratorResponse

@docs jsonEncodeProto__Google__Protobuf__Compiler__CodeGeneratorResponse__File

@docs jsonEncodeProto__Google__Protobuf__Compiler__Version

-}

import Json.Decode
import Json.Encode
import Maybe
import Proto.Google.Protobuf.Internals_
import Protobuf.Decode
import Protobuf.Encode
import Protobuf.Types.Int64
import Protobuf.Utils.Int32
import Protobuf.Utils.Int64


{-| Decode a `Proto__Google__Protobuf__Compiler__CodeGeneratorResponse__File` from JSON. Uses the canonical encoding described here: <https://protobuf.dev/programming-guides/proto3/#json>
-}
jsonDecodeProto__Google__Protobuf__Compiler__CodeGeneratorResponse__File : Json.Decode.Decoder Proto__Google__Protobuf__Compiler__CodeGeneratorResponse__File
jsonDecodeProto__Google__Protobuf__Compiler__CodeGeneratorResponse__File =
    Json.Decode.map4
        Proto__Google__Protobuf__Compiler__CodeGeneratorResponse__File
        (Json.Decode.maybe (Json.Decode.field "name" Json.Decode.string) |> Json.Decode.map (Maybe.withDefault ""))
        (Json.Decode.maybe (Json.Decode.field "insertionPoint" Json.Decode.string)
            |> Json.Decode.map (Maybe.withDefault "")
        )
        (Json.Decode.maybe (Json.Decode.field "content" Json.Decode.string) |> Json.Decode.map (Maybe.withDefault ""))
        (Json.Decode.maybe
            (Json.Decode.field
                "generatedCodeInfo"
                (Json.Decode.map
                    Just
                    Proto.Google.Protobuf.Internals_.jsonDecodeProto__Google__Protobuf__GeneratedCodeInfo
                )
            )
            |> Json.Decode.map (Maybe.withDefault Nothing)
        )


{-| Encode a `Proto__Google__Protobuf__Compiler__CodeGeneratorResponse__File` to JSON. Uses the canonical encoding described here: <https://protobuf.dev/programming-guides/proto3/#json>
-}
jsonEncodeProto__Google__Protobuf__Compiler__CodeGeneratorResponse__File : Proto__Google__Protobuf__Compiler__CodeGeneratorResponse__File -> Json.Encode.Value
jsonEncodeProto__Google__Protobuf__Compiler__CodeGeneratorResponse__File value =
    Json.Encode.object <|
        [ ( "name", Json.Encode.string value.name )
        , ( "insertionPoint", Json.Encode.string value.insertionPoint )
        , ( "content", Json.Encode.string value.content )
        , ( "generatedCodeInfo"
          , (Maybe.map Proto.Google.Protobuf.Internals_.jsonEncodeProto__Google__Protobuf__GeneratedCodeInfo
                >> Maybe.withDefault Json.Encode.null
            )
                value.generatedCodeInfo
          )
        ]


{-| The field numbers for the fields of `Proto__Google__Protobuf__Compiler__CodeGeneratorResponse__File`. This is mostly useful for internals, like documentation generation.
-}
fieldNumbersProto__Google__Protobuf__Compiler__CodeGeneratorResponse__File : { name : Int, insertionPoint : Int, content : Int, generatedCodeInfo : Int }
fieldNumbersProto__Google__Protobuf__Compiler__CodeGeneratorResponse__File =
    { name = 1, insertionPoint = 2, content = 15, generatedCodeInfo = 16 }


{-| Default for Proto\_\_Google**Protobuf**Compiler**CodeGeneratorResponse**File. Should only be used for 'required' decoders as an initial value.
-}
defaultProto__Google__Protobuf__Compiler__CodeGeneratorResponse__File : Proto__Google__Protobuf__Compiler__CodeGeneratorResponse__File
defaultProto__Google__Protobuf__Compiler__CodeGeneratorResponse__File =
    { name = "", insertionPoint = "", content = "", generatedCodeInfo = Nothing }


{-| Declares how to decode a `Proto__Google__Protobuf__Compiler__CodeGeneratorResponse__File` from Bytes. To actually perform the conversion from Bytes, you need to use Protobuf.Decode.decode from eriktim/elm-protocol-buffers.
-}
decodeProto__Google__Protobuf__Compiler__CodeGeneratorResponse__File : Protobuf.Decode.Decoder Proto__Google__Protobuf__Compiler__CodeGeneratorResponse__File
decodeProto__Google__Protobuf__Compiler__CodeGeneratorResponse__File =
    Protobuf.Decode.message
        defaultProto__Google__Protobuf__Compiler__CodeGeneratorResponse__File
        [ Protobuf.Decode.optional 1 Protobuf.Decode.string (\a r -> { r | name = a })
        , Protobuf.Decode.optional 2 Protobuf.Decode.string (\a r -> { r | insertionPoint = a })
        , Protobuf.Decode.optional 15 Protobuf.Decode.string (\a r -> { r | content = a })
        , Protobuf.Decode.optional
            16
            (Protobuf.Decode.map Just Proto.Google.Protobuf.Internals_.decodeProto__Google__Protobuf__GeneratedCodeInfo)
            (\a r -> { r | generatedCodeInfo = a })
        ]


{-| Declares how to encode a `Proto__Google__Protobuf__Compiler__CodeGeneratorResponse__File` to Bytes. To actually perform the conversion to Bytes, you need to use Protobuf.Encode.encode from eriktim/elm-protocol-buffers.
-}
encodeProto__Google__Protobuf__Compiler__CodeGeneratorResponse__File : Proto__Google__Protobuf__Compiler__CodeGeneratorResponse__File -> Protobuf.Encode.Encoder
encodeProto__Google__Protobuf__Compiler__CodeGeneratorResponse__File value =
    Protobuf.Encode.message
        [ ( 1, Protobuf.Encode.string value.name )
        , ( 2, Protobuf.Encode.string value.insertionPoint )
        , ( 15, Protobuf.Encode.string value.content )
        , ( 16
          , (Maybe.map Proto.Google.Protobuf.Internals_.encodeProto__Google__Protobuf__GeneratedCodeInfo
                >> Maybe.withDefault Protobuf.Encode.none
            )
                value.generatedCodeInfo
          )
        ]


{-| `Proto__Google__Protobuf__Compiler__CodeGeneratorResponse__File` message
-}
type alias Proto__Google__Protobuf__Compiler__CodeGeneratorResponse__File =
    { name : String
    , insertionPoint : String
    , content : String
    , generatedCodeInfo : Maybe Proto.Google.Protobuf.Internals_.Proto__Google__Protobuf__GeneratedCodeInfo
    }


{-| Decode a `Proto__Google__Protobuf__Compiler__CodeGeneratorResponse` from JSON. Uses the canonical encoding described here: <https://protobuf.dev/programming-guides/proto3/#json>
-}
jsonDecodeProto__Google__Protobuf__Compiler__CodeGeneratorResponse : Json.Decode.Decoder Proto__Google__Protobuf__Compiler__CodeGeneratorResponse
jsonDecodeProto__Google__Protobuf__Compiler__CodeGeneratorResponse =
    Json.Decode.map3
        Proto__Google__Protobuf__Compiler__CodeGeneratorResponse
        (Json.Decode.maybe (Json.Decode.field "error" Json.Decode.string) |> Json.Decode.map (Maybe.withDefault ""))
        (Json.Decode.maybe (Json.Decode.field "supportedFeatures" Protobuf.Utils.Int64.uint64JsonDecoder)
            |> Json.Decode.map (Maybe.withDefault (Protobuf.Types.Int64.fromInts 0 0))
        )
        (Json.Decode.field
            "file"
            (Json.Decode.oneOf
                [ Json.Decode.list jsonDecodeProto__Google__Protobuf__Compiler__CodeGeneratorResponse__File
                , Json.Decode.null []
                ]
            )
        )


{-| Encode a `Proto__Google__Protobuf__Compiler__CodeGeneratorResponse` to JSON. Uses the canonical encoding described here: <https://protobuf.dev/programming-guides/proto3/#json>
-}
jsonEncodeProto__Google__Protobuf__Compiler__CodeGeneratorResponse : Proto__Google__Protobuf__Compiler__CodeGeneratorResponse -> Json.Encode.Value
jsonEncodeProto__Google__Protobuf__Compiler__CodeGeneratorResponse value =
    Json.Encode.object <|
        [ ( "error", Json.Encode.string value.error )
        , ( "supportedFeatures", (Protobuf.Utils.Int64.toUnsignedString >> Json.Encode.string) value.supportedFeatures )
        , ( "file"
          , Json.Encode.list jsonEncodeProto__Google__Protobuf__Compiler__CodeGeneratorResponse__File value.file
          )
        ]


{-| The field numbers for the fields of `Proto__Google__Protobuf__Compiler__CodeGeneratorResponse`. This is mostly useful for internals, like documentation generation.
-}
fieldNumbersProto__Google__Protobuf__Compiler__CodeGeneratorResponse : { error : Int, supportedFeatures : Int, file : Int }
fieldNumbersProto__Google__Protobuf__Compiler__CodeGeneratorResponse =
    { error = 1, supportedFeatures = 2, file = 15 }


{-| Default for Proto\_\_Google**Protobuf**Compiler\_\_CodeGeneratorResponse. Should only be used for 'required' decoders as an initial value.
-}
defaultProto__Google__Protobuf__Compiler__CodeGeneratorResponse : Proto__Google__Protobuf__Compiler__CodeGeneratorResponse
defaultProto__Google__Protobuf__Compiler__CodeGeneratorResponse =
    { error = "", supportedFeatures = Protobuf.Types.Int64.fromInts 0 0, file = [] }


{-| Declares how to decode a `Proto__Google__Protobuf__Compiler__CodeGeneratorResponse` from Bytes. To actually perform the conversion from Bytes, you need to use Protobuf.Decode.decode from eriktim/elm-protocol-buffers.
-}
decodeProto__Google__Protobuf__Compiler__CodeGeneratorResponse : Protobuf.Decode.Decoder Proto__Google__Protobuf__Compiler__CodeGeneratorResponse
decodeProto__Google__Protobuf__Compiler__CodeGeneratorResponse =
    Protobuf.Decode.message
        defaultProto__Google__Protobuf__Compiler__CodeGeneratorResponse
        [ Protobuf.Decode.optional 1 Protobuf.Decode.string (\a r -> { r | error = a })
        , Protobuf.Decode.optional 2 Protobuf.Decode.uint64 (\a r -> { r | supportedFeatures = a })
        , Protobuf.Decode.repeated
            15
            decodeProto__Google__Protobuf__Compiler__CodeGeneratorResponse__File
            .file
            (\a r -> { r | file = a })
        ]


{-| Declares how to encode a `Proto__Google__Protobuf__Compiler__CodeGeneratorResponse` to Bytes. To actually perform the conversion to Bytes, you need to use Protobuf.Encode.encode from eriktim/elm-protocol-buffers.
-}
encodeProto__Google__Protobuf__Compiler__CodeGeneratorResponse : Proto__Google__Protobuf__Compiler__CodeGeneratorResponse -> Protobuf.Encode.Encoder
encodeProto__Google__Protobuf__Compiler__CodeGeneratorResponse value =
    Protobuf.Encode.message
        [ ( 1, Protobuf.Encode.string value.error )
        , ( 2, Protobuf.Encode.uint64 value.supportedFeatures )
        , ( 15, Protobuf.Encode.list encodeProto__Google__Protobuf__Compiler__CodeGeneratorResponse__File value.file )
        ]


{-| `Proto__Google__Protobuf__Compiler__CodeGeneratorResponse` message
-}
type alias Proto__Google__Protobuf__Compiler__CodeGeneratorResponse =
    { error : String
    , supportedFeatures : Protobuf.Types.Int64.Int64
    , file : List Proto__Google__Protobuf__Compiler__CodeGeneratorResponse__File
    }


{-| Decode a `Proto__Google__Protobuf__Compiler__CodeGeneratorRequest` from JSON. Uses the canonical encoding described here: <https://protobuf.dev/programming-guides/proto3/#json>
-}
jsonDecodeProto__Google__Protobuf__Compiler__CodeGeneratorRequest : Json.Decode.Decoder Proto__Google__Protobuf__Compiler__CodeGeneratorRequest
jsonDecodeProto__Google__Protobuf__Compiler__CodeGeneratorRequest =
    Json.Decode.map4
        Proto__Google__Protobuf__Compiler__CodeGeneratorRequest
        (Json.Decode.field
            "fileToGenerate"
            (Json.Decode.oneOf [ Json.Decode.list Json.Decode.string, Json.Decode.null [] ])
        )
        (Json.Decode.maybe (Json.Decode.field "parameter" Json.Decode.string) |> Json.Decode.map (Maybe.withDefault ""))
        (Json.Decode.field
            "protoFile"
            (Json.Decode.oneOf
                [ Json.Decode.list
                    Proto.Google.Protobuf.Internals_.jsonDecodeProto__Google__Protobuf__FileDescriptorProto
                , Json.Decode.null []
                ]
            )
        )
        (Json.Decode.maybe
            (Json.Decode.field
                "compilerVersion"
                (Json.Decode.map Just jsonDecodeProto__Google__Protobuf__Compiler__Version)
            )
            |> Json.Decode.map (Maybe.withDefault Nothing)
        )


{-| Encode a `Proto__Google__Protobuf__Compiler__CodeGeneratorRequest` to JSON. Uses the canonical encoding described here: <https://protobuf.dev/programming-guides/proto3/#json>
-}
jsonEncodeProto__Google__Protobuf__Compiler__CodeGeneratorRequest : Proto__Google__Protobuf__Compiler__CodeGeneratorRequest -> Json.Encode.Value
jsonEncodeProto__Google__Protobuf__Compiler__CodeGeneratorRequest value =
    Json.Encode.object <|
        [ ( "fileToGenerate", Json.Encode.list Json.Encode.string value.fileToGenerate )
        , ( "parameter", Json.Encode.string value.parameter )
        , ( "protoFile"
          , Json.Encode.list Proto.Google.Protobuf.Internals_.jsonEncodeProto__Google__Protobuf__FileDescriptorProto
                value.protoFile
          )
        , ( "compilerVersion"
          , (Maybe.map jsonEncodeProto__Google__Protobuf__Compiler__Version >> Maybe.withDefault Json.Encode.null)
                value.compilerVersion
          )
        ]


{-| The field numbers for the fields of `Proto__Google__Protobuf__Compiler__CodeGeneratorRequest`. This is mostly useful for internals, like documentation generation.
-}
fieldNumbersProto__Google__Protobuf__Compiler__CodeGeneratorRequest : { fileToGenerate : Int, parameter : Int, protoFile : Int, compilerVersion : Int }
fieldNumbersProto__Google__Protobuf__Compiler__CodeGeneratorRequest =
    { fileToGenerate = 1, parameter = 2, protoFile = 15, compilerVersion = 3 }


{-| Default for Proto\_\_Google**Protobuf**Compiler\_\_CodeGeneratorRequest. Should only be used for 'required' decoders as an initial value.
-}
defaultProto__Google__Protobuf__Compiler__CodeGeneratorRequest : Proto__Google__Protobuf__Compiler__CodeGeneratorRequest
defaultProto__Google__Protobuf__Compiler__CodeGeneratorRequest =
    { fileToGenerate = [], parameter = "", protoFile = [], compilerVersion = Nothing }


{-| Declares how to decode a `Proto__Google__Protobuf__Compiler__CodeGeneratorRequest` from Bytes. To actually perform the conversion from Bytes, you need to use Protobuf.Decode.decode from eriktim/elm-protocol-buffers.
-}
decodeProto__Google__Protobuf__Compiler__CodeGeneratorRequest : Protobuf.Decode.Decoder Proto__Google__Protobuf__Compiler__CodeGeneratorRequest
decodeProto__Google__Protobuf__Compiler__CodeGeneratorRequest =
    Protobuf.Decode.message
        defaultProto__Google__Protobuf__Compiler__CodeGeneratorRequest
        [ Protobuf.Decode.repeated 1 Protobuf.Decode.string .fileToGenerate (\a r -> { r | fileToGenerate = a })
        , Protobuf.Decode.optional 2 Protobuf.Decode.string (\a r -> { r | parameter = a })
        , Protobuf.Decode.repeated
            15
            Proto.Google.Protobuf.Internals_.decodeProto__Google__Protobuf__FileDescriptorProto
            .protoFile
            (\a r -> { r | protoFile = a })
        , Protobuf.Decode.optional
            3
            (Protobuf.Decode.map Just decodeProto__Google__Protobuf__Compiler__Version)
            (\a r -> { r | compilerVersion = a })
        ]


{-| Declares how to encode a `Proto__Google__Protobuf__Compiler__CodeGeneratorRequest` to Bytes. To actually perform the conversion to Bytes, you need to use Protobuf.Encode.encode from eriktim/elm-protocol-buffers.
-}
encodeProto__Google__Protobuf__Compiler__CodeGeneratorRequest : Proto__Google__Protobuf__Compiler__CodeGeneratorRequest -> Protobuf.Encode.Encoder
encodeProto__Google__Protobuf__Compiler__CodeGeneratorRequest value =
    Protobuf.Encode.message
        [ ( 1, Protobuf.Encode.list Protobuf.Encode.string value.fileToGenerate )
        , ( 2, Protobuf.Encode.string value.parameter )
        , ( 15
          , Protobuf.Encode.list Proto.Google.Protobuf.Internals_.encodeProto__Google__Protobuf__FileDescriptorProto
                value.protoFile
          )
        , ( 3
          , (Maybe.map encodeProto__Google__Protobuf__Compiler__Version >> Maybe.withDefault Protobuf.Encode.none)
                value.compilerVersion
          )
        ]


{-| `Proto__Google__Protobuf__Compiler__CodeGeneratorRequest` message
-}
type alias Proto__Google__Protobuf__Compiler__CodeGeneratorRequest =
    { fileToGenerate : List String
    , parameter : String
    , protoFile : List Proto.Google.Protobuf.Internals_.Proto__Google__Protobuf__FileDescriptorProto
    , compilerVersion : Maybe Proto__Google__Protobuf__Compiler__Version
    }


{-| Decode a `Proto__Google__Protobuf__Compiler__Version` from JSON. Uses the canonical encoding described here: <https://protobuf.dev/programming-guides/proto3/#json>
-}
jsonDecodeProto__Google__Protobuf__Compiler__Version : Json.Decode.Decoder Proto__Google__Protobuf__Compiler__Version
jsonDecodeProto__Google__Protobuf__Compiler__Version =
    Json.Decode.map4
        Proto__Google__Protobuf__Compiler__Version
        (Json.Decode.maybe (Json.Decode.field "major" Protobuf.Utils.Int32.int32JsonDecoder)
            |> Json.Decode.map (Maybe.withDefault 0)
        )
        (Json.Decode.maybe (Json.Decode.field "minor" Protobuf.Utils.Int32.int32JsonDecoder)
            |> Json.Decode.map (Maybe.withDefault 0)
        )
        (Json.Decode.maybe (Json.Decode.field "patch" Protobuf.Utils.Int32.int32JsonDecoder)
            |> Json.Decode.map (Maybe.withDefault 0)
        )
        (Json.Decode.maybe (Json.Decode.field "suffix" Json.Decode.string) |> Json.Decode.map (Maybe.withDefault ""))


{-| Encode a `Proto__Google__Protobuf__Compiler__Version` to JSON. Uses the canonical encoding described here: <https://protobuf.dev/programming-guides/proto3/#json>
-}
jsonEncodeProto__Google__Protobuf__Compiler__Version : Proto__Google__Protobuf__Compiler__Version -> Json.Encode.Value
jsonEncodeProto__Google__Protobuf__Compiler__Version value =
    Json.Encode.object <|
        [ ( "major", Json.Encode.int value.major )
        , ( "minor", Json.Encode.int value.minor )
        , ( "patch", Json.Encode.int value.patch )
        , ( "suffix", Json.Encode.string value.suffix )
        ]


{-| The field numbers for the fields of `Proto__Google__Protobuf__Compiler__Version`. This is mostly useful for internals, like documentation generation.
-}
fieldNumbersProto__Google__Protobuf__Compiler__Version : { major : Int, minor : Int, patch : Int, suffix : Int }
fieldNumbersProto__Google__Protobuf__Compiler__Version =
    { major = 1, minor = 2, patch = 3, suffix = 4 }


{-| Default for Proto\_\_Google**Protobuf**Compiler\_\_Version. Should only be used for 'required' decoders as an initial value.
-}
defaultProto__Google__Protobuf__Compiler__Version : Proto__Google__Protobuf__Compiler__Version
defaultProto__Google__Protobuf__Compiler__Version =
    { major = 0, minor = 0, patch = 0, suffix = "" }


{-| Declares how to decode a `Proto__Google__Protobuf__Compiler__Version` from Bytes. To actually perform the conversion from Bytes, you need to use Protobuf.Decode.decode from eriktim/elm-protocol-buffers.
-}
decodeProto__Google__Protobuf__Compiler__Version : Protobuf.Decode.Decoder Proto__Google__Protobuf__Compiler__Version
decodeProto__Google__Protobuf__Compiler__Version =
    Protobuf.Decode.message
        defaultProto__Google__Protobuf__Compiler__Version
        [ Protobuf.Decode.optional 1 Protobuf.Decode.int32 (\a r -> { r | major = a })
        , Protobuf.Decode.optional 2 Protobuf.Decode.int32 (\a r -> { r | minor = a })
        , Protobuf.Decode.optional 3 Protobuf.Decode.int32 (\a r -> { r | patch = a })
        , Protobuf.Decode.optional 4 Protobuf.Decode.string (\a r -> { r | suffix = a })
        ]


{-| Declares how to encode a `Proto__Google__Protobuf__Compiler__Version` to Bytes. To actually perform the conversion to Bytes, you need to use Protobuf.Encode.encode from eriktim/elm-protocol-buffers.
-}
encodeProto__Google__Protobuf__Compiler__Version : Proto__Google__Protobuf__Compiler__Version -> Protobuf.Encode.Encoder
encodeProto__Google__Protobuf__Compiler__Version value =
    Protobuf.Encode.message
        [ ( 1, Protobuf.Encode.int32 value.major )
        , ( 2, Protobuf.Encode.int32 value.minor )
        , ( 3, Protobuf.Encode.int32 value.patch )
        , ( 4, Protobuf.Encode.string value.suffix )
        ]


{-| `Proto__Google__Protobuf__Compiler__Version` message
-}
type alias Proto__Google__Protobuf__Compiler__Version =
    { major : Int, minor : Int, patch : Int, suffix : String }
