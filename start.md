# SPACE-Tag Protocols

Spatial CUT&Tag chromatin profiling on 10x Genomics Visium and Visium HD. An antibody against a
histone mark recruits protein A-Tn5, which tagments chromatin and inserts a T7 promoter. In vitro
transcription turns the tagmented fragments into polyadenylated RNA, which is captured by the
spatially barcoded oligonucleotides of the slide.

## The protocols

| Page | Use it for |
|---|---|
| [CUT&Tag test on tissue sections](cuttag-test.html) | Checking that an antibody directs tagmentation in a new tissue, with standard adapters and a gel readout |
| [IVT test on plain slides](ivt-test.html) | Checking the full Day 1 chemistry, including clearing, gap filling and IVT, before using a spatial slide |
| [SPACE-Tag (Visium)](index.html) | Spatial chromatin profiling on standard Visium slides, 55 µm spots |
| [SPACE-Tag-HD (Visium HD)](https://chaoyan115.github.io/SPACE-Tag-HD-protocol/) | Spatial chromatin profiling on Visium HD with the CytAssist, 2 µm barcoded squares |

Day 1 (antibodies, tagmentation, clearing, gap filling, IVT) is the same in all three. They differ
in where the IVT RNA goes next.

## How to start

```
 1. Section and check the tissue
    Fresh-frozen, 10 µm sections. H&E on one section to confirm morphology.
        │
 2. Validate the antibody on a plain slide
    Immunofluorescence on the same tissue, same fixation and permeabilization.
        │
 3. CUT&Tag test on a plain slide                   → CUT&Tag test page
    Day 1 up to tagmentation with standard Nextera adapters, then PCR and a gel.
    Go on when antibody wells clearly beat the no-antibody control.
        │
 4. IVT test on a plain slide                       → IVT test page
    Day 1 as written, then RNA purification, Qubit and TapeStation.
    Go on when the reference wells clearly beat the no-T7 and no-antibody controls.
        │
 5. Spatial experiment                              → SPACE-Tag or SPACE-Tag-HD page
    Regular Visium, or Visium HD on the CytAssist.
        │
 6. Library QC
    Fragment analyzer trace, then a shallow sequencing run: duplication rate,
    fraction of reads in peaks, valid spatial barcodes, fragments per spot or bin.
        │
 7. Deep sequencing and analysis
```

Steps 2 to 4 cost a few glass slides, a gel and one TapeStation run. They catch most failures (a weak antibody,
an inactive PA-Tn5 batch, a tissue that needs a different clearing time) before a spatial slide is
used.

## Citation and feedback

A manuscript describing SPACE-Tag is in preparation. Please get in touch before using the method in
published work. Questions and reports of what did or did not work in your hands are welcome as
[issues](https://github.com/chaoyan115/SPACE-Tag-protocol/issues).
