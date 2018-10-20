module Combinatorics exposing (permutationsOf)

{-| Combinatorics provides common primitives such as permutations and selections

[_Combinatorics_](https://en.wikipedia.org/wiki/Combinatorics) is

> an area of mathematics primarily concerned with counting, both as a means and
> an end in obtaining results, and certain properties of finite structures. It is
> closely related to many other areas of mathematics and has many applications
> ranging from logic to statistical physics, from evolutionary biology to computer
> science, etc.


# Methods
@docs permutationsOf -}

{-| Creates a list of all permutations of the argument.

A [permutation](https://en.wikipedia.org/wiki/Permutation) is

> an ordered arrangement of elements. -}
permutationsOf : List a -> List (List a)
permutationsOf elements =
    case elements of
        [] -> [[]]

        x :: xs ->
            let
                permutations = permutationsOf xs
            in
                permutations
                    |> List.map (interleave x)
                    |> List.concat

interleave : a -> List a -> List (List a)
interleave element elements =
    case elements of
        [] -> [[element]]

        x::xs ->
            let
                interleaves = interleave element xs

                tail =
                    interleaves
                        |> List.map (\list -> x :: list)
            in
            (element :: elements) :: tail
