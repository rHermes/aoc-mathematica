#!/usr/bin/env wolframscript
(* ::Package:: *)

input = StringSplit[
    Import[FileNameJoin[{Directory[], "input_d02.txt"}], "List"],
    Alternatives[" ", ":", "-"]
];


ans1 = Count[
    Table[
        ToExpression[line[[1]]] <= StringCount[line[[-1]], line[[3]]] <= ToExpression[line[[2]]],
        {line, input}
    ], True
];


ans2 = Count[
    Table[
        Count[
            {
                StringTake[line[[-1]], {ToExpression[line[[1]]]}],
                StringTake[line[[-1]], {ToExpression[line[[2]]]}]
            }, line[[3]]
        ],
        {line, input}
    ], 1
];


Print["Part 1: ", ans1];
Print["Part 2: ", ans2];
