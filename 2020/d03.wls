#!/usr/bin/env wolframscript
(* ::Package:: *)

input = Characters /@ Import[FileNameJoin[{Directory[], "d03.input"}], "List"];


{h, w} = Dimensions[input];
ans1 = Count[Table[input[[i + 1, Mod[3 i, w] + 1]], {i, 0, h - 1}], "#"];


ans2 = Times @@ Table[
    Count[
        Map[
            (* Wrap the positions *)
            input[[#[[1]] + 1, Mod[#[[2]], w] + 1]]&,
            (* Construct a list of positions. *)
            NestWhileList[# + x&, {0, 0}, #[[1]] < h&, 1, Infinity, -1]
        ],
        "#"
    ], {x, {{1, 1}, {1, 3}, {1, 5}, {1, 7}, {2, 1}}}
];


Print["Part 1: ", ans1];
Print["Part 2: ", ans2];
