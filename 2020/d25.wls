#!/usr/bin/env wolframscript
(* ::Package:: *)

input = Import[FileNameJoin[{Directory[], "input_d25.txt"}], "List"];
ans1 = PowerMod[b, MultiplicativeOrder[7, M, {a}], M] /. {a -> input[[1]], b -> input[[2]], M -> 20201227}
Print["Part 1: ", ans1];
