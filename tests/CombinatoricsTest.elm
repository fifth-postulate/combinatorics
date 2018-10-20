module CombinatoricsTest exposing (suite)

import Combinatorics
import Expect exposing (Expectation)
import Fuzz exposing (Fuzzer, int, list, string)
import Test exposing (..)


suite : Test
suite =
    describe "Combinatorics"
        [ describe "permutationsOf"
            [ test "empty list" <|
                \_ ->
                    let
                        actual =
                            Combinatorics.permutationsOf []

                        expected =
                            [ [] ]
                    in
                    Expect.equal actual expected
            ]
        ]
