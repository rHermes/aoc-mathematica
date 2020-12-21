#!/usr/bin/env wolframscript
(* ::Package:: *)

input = Import[FileNameJoin[{Directory[], "input_d01.txt"}], "List"]
Print["Part 1: ", Times @@ SelectFirst[Subsets[input, {2}], Total[#] == 2020&]]
Print["Part 2: ", Times @@ SelectFirst[Subsets[input, {3}], Total[#] == 2020&]]
