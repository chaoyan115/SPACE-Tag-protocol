# SPACE-Tag

Spatial CUT&Tag for chromatin profiling on 10x Genomics Visium and other solid-phase
capture spatial platforms.

**[Read the full protocol →](https://chaoyan115.github.io/SPACE-Tag-protocol/)**

## What it does

SPACE-Tag maps histone modifications in intact tissue sections while preserving spatial
context. An antibody directed against the histone mark of interest recruits protein
A-Tn5, which tagments chromatin at the targeted loci and inserts a T7 promoter. In vitro
transcription then converts those fragments into polyadenylated RNA, which is captured
by the spatially barcoded oligonucleotides on a standard Visium slide and read out by
reverse transcription and sequencing.

Because the readout is antibody-directed rather than accessibility-based, both activating
marks (for example H3K27ac, H3K4me3) and repressive marks (H3K27me3, H3K9me3) can be
measured directly.

## Protocol at a glance

The protocol runs over three days on a standard Visium workflow.

| | |
| --- | --- |
| **Day 1** | Fixation, permeabilization, primary and secondary antibody staining, PA-Tn5 tagmentation, tissue clearing, gap filling, in vitro transcription |
| **Day 2** | Methanol fixation, H&E staining, tissue wash, cDNA synthesis on the slide |
| **Day 3** | Denaturation, second strand synthesis, PCR library amplification |

Buffer recipes, reagent part numbers, incubation times and temperatures are given in
full in the protocol page linked above.

## Requirements

A 10x Genomics Visium slide, or another solid-phase capture spatial platform with
polyadenylate capture chemistry, protein A-Tn5, a validated antibody against the histone
modification of interest, T7 RNA polymerase, and standard molecular biology reagents.
The complete reagent list is in the protocol.

## Citation

A manuscript describing SPACE-Tag is in preparation. Please check back here for the
citation, or get in touch before using the method in published work.

## Contact

Vickovic Lab, New York Genome Center.

## Feedback

If something in the protocol is unclear or does not work in your hands, please open an
issue. Reports of what failed and on which tissue are especially useful.
