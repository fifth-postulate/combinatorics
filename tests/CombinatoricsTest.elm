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
            , test "singleton" <|
                \_ ->
                    let
                        actual =
                            Combinatorics.permutationsOf [ 1 ]

                        expected =
                            [ [ 1 ] ]
                    in
                    Expect.equal actual expected
            , test "list of size two" <|
                \_ ->
                    let
                        actual =
                            Combinatorics.permutationsOf [ 1, 2 ]

                        expected =
                            [ [ 1, 2 ], [ 2, 1 ] ]
                    in
                    Expect.equal actual expected
            , test "list of size three" <|
                \_ ->
                    let
                        actual =
                            Combinatorics.permutationsOf [ 1, 2, 3 ]

                        expected =
                            [ [ 1, 2, 3 ], [ 2, 1, 3 ], [ 2, 3, 1 ], [ 1, 3, 2 ], [ 3, 1, 2 ], [ 3, 2, 1 ] ]
                    in
                    Expect.equal actual expected
            ]
        ]
