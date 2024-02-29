{- !!! DO NOT EDIT THIS FILE MANUALLY !!! -}


module Proto.Google.Protobuf.GeneratedCodeInfo.Annotation.Semantic exposing (Semantic(..), decodeSemantic, defaultSemantic, encodeSemantic, fieldNumbersSemantic, jsonDecodeSemantic, jsonEncodeSemantic)

{-| This file was automatically generated by

  - [`protoc-gen-elm`](https://www.npmjs.com/package/protoc-gen-elm) 4.0.0
  - `protoc` 4.22.2
  - the following specification files: `google/protobuf/descriptor.proto`

To run it, add a dependency via `elm install` on [`elm-protocol-buffers`](https://package.elm-lang.org/packages/eriktim/elm-protocol-buffers/1.2.0) version latest or higher.

@docs Semantic, decodeSemantic, defaultSemantic, encodeSemantic, fieldNumbersSemantic, jsonDecodeSemantic, jsonEncodeSemantic

-}

import Json.Decode
import Json.Encode
import Protobuf.Decode
import Protobuf.Encode
import Protobuf.Utils.Int32


{-| Decode a `Semantic` from JSON. Uses the canonical encoding described here: <https://protobuf.dev/programming-guides/proto3/#json>
-}
jsonDecodeSemantic : Json.Decode.Decoder Semantic
jsonDecodeSemantic =
    Json.Decode.oneOf
        [ Json.Decode.string
            |> Json.Decode.map
                (\i ->
                    case i of
                        "NONE" ->
                            NONE

                        "SET" ->
                            SET

                        "ALIAS" ->
                            ALIAS

                        _ ->
                            NONE
                )
        , Protobuf.Utils.Int32.int32JsonDecoder
            |> Json.Decode.map
                (\i ->
                    case i of
                        0 ->
                            NONE

                        1 ->
                            SET

                        2 ->
                            ALIAS

                        _ ->
                            NONE
                )
        ]


{-| Encode a `Semantic` to JSON. Uses the canonical encoding described here: <https://protobuf.dev/programming-guides/proto3/#json>
-}
jsonEncodeSemantic : Semantic -> Json.Encode.Value
jsonEncodeSemantic value =
    Json.Encode.string <|
        case value of
            NONE ->
                "NONE"

            SET ->
                "SET"

            ALIAS ->
                "ALIAS"


{-| The field numbers for the fields of `Semantic`. This is mostly useful for internals, like documentation generation.
-}
fieldNumbersSemantic : Semantic -> Int
fieldNumbersSemantic n_ =
    case n_ of
        NONE ->
            0

        SET ->
            1

        ALIAS ->
            2


{-| Default for Semantic. Should only be used for 'required' decoders as an initial value.
-}
defaultSemantic : Semantic
defaultSemantic =
    NONE


{-| Declares how to encode a `Semantic` to Bytes. To actually perform the conversion to Bytes, you need to use Protobuf.Encode.encode from eriktim/elm-protocol-buffers.
-}
encodeSemantic : Semantic -> Protobuf.Encode.Encoder
encodeSemantic value =
    Protobuf.Encode.int32 <|
        case value of
            NONE ->
                0

            SET ->
                1

            ALIAS ->
                2


{-| Declares how to decode a `Semantic` from Bytes. To actually perform the conversion from Bytes, you need to use Protobuf.Decode.decode from eriktim/elm-protocol-buffers.
-}
decodeSemantic : Protobuf.Decode.Decoder Semantic
decodeSemantic =
    Protobuf.Decode.int32
        |> Protobuf.Decode.map
            (\i ->
                case i of
                    0 ->
                        NONE

                    1 ->
                        SET

                    2 ->
                        ALIAS

                    _ ->
                        NONE
            )


{-| `Semantic` enumeration
-}
type Semantic
    = NONE
    | SET
    | ALIAS