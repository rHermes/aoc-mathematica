#!/usr/bin/env wolframscript
(* ::Package:: *)

input = Characters /@ Import[FileNameJoin[{Directory[], "d03.input"}], "List"];

solutions = Table[Count[Table[
    input[[
        Mod[s[[2]] * i - (s[[2]] - 1), Length[input], 1],
        Mod[s[[1]] * i - (s[[1]] - 1), Length[input[[i]]], 1]
    ]],
    {i, 1, Length[input] / s[[2]]}
], "#"], {s, {{1, 1}, {3, 1}, {5, 1}, {7, 1}, {1, 2}}}];


Print["Part 1: ", solutions[[2]]];
Print["Part 2: ", Times @@ solutions];
