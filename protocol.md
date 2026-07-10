# SPACE-Tag Protocol: Spatial Chromatin Profiling

SPACE-Tag integrates spatial barcoding (Visium, Visium-HD) with CUT&Tag-based epigenomic profiling. Antibody-guided PA-Tn5 tagmentation generates transcribable DNA fragments at target chromatin loci, which are then spatially captured via in vitro transcription and reverse transcription on the Visium slide.

**Tags:** Spatial Epigenomics | CUT&Tag | Visium | PA-Tn5 | Histone Modifications  
**Last updated:** June 6, 2024

---

## Solutions & Reagents

Prepare all buffers fresh or as needed. Store at 4°C unless otherwise noted.

### digi-CT Wash Buffer

| Reagent | Volume | Final Conc. |
|---|---|---|
| 1M HEPES | 200 µl | 20 mM |
| 5M NaCl | 300 µl | 150 mM |
| 6.4M spermidine | 0.78 µl | 0.5 mM |
| Protease inhibitor | 1 tablet | 1x |
| 5% digitonin | 20 µl | 0.01% |
| H₂O | to 10 ml | — |

### digi-300-Wash Buffer

> Higher NaCl (300 mM) reduces non-specific Tn5 binding during tagmentation.

| Reagent | Volume | Final Conc. |
|---|---|---|
| 1M HEPES | 200 µl | 20 mM |
| 5M NaCl | 600 µl | 300 mM |
| 6.4M spermidine | 0.78 µl | 0.5 mM |
| Protease inhibitor | 1 tablet | 1x |
| 5% digitonin | 20 µl | 0.01% |
| H₂O | to 10 ml | — |

### Tagmentation Buffer

| Reagent | Volume |
|---|---|
| digi-300-wash buffer | 1000 µl |
| 1M MgCl₂ | 10 µl (10 mM final) |

> MgCl₂ is required for Tn5 transposase activity.

### 2x Primer Hybridization Buffer

| Reagent | Volume | Final Conc. |
|---|---|---|
| 20X SSC | 2 ml | 4X SSC |
| 100% Formamide | 4 ml | 40% |
| 10% Tween-20 | 200 µl | 0.2% |
| H₂O | to 10 ml | — |

### Additional Reagents Required

- 1X PBS
- 1X PBS with 1.25 M Glycine
- BD Perm/Wash Buffer (554723)
- 40 mM EDTA
- ArrayIT 16-well Hybridization Cassettes (AHC1X16) or Proplate (244864, Grace Biolabs)

---

## Day 1 — Preparation

### A. Adapter Annealing (can be done in advance)

#### Adapter Sequences

HPLC purification recommended; alternatively order in ultramer format.

| Name | Sequence (5'→3') |
|---|---|
| dual_ME19_polyT_v2 (Adapter A) | `TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTVNAGATGTGTATAAGAGACAG` |
| T7_MedsB (Adapter B) | `GAATTTAATACGACTCACTATAGGGGTCTCGTGGGCTCGGAGATGTGTATAAGAGACAG` |
| ME_19_Phos (Mosaic Ends) | `/5Phos/CTGTCTCTTATACACATCT` |

#### Annealing Recipe (per adapter)

| Reagent | Volume |
|---|---|
| Adapter A or B (100 µM stock) | 25 µl |
| Mosaic ends | 25 µl |
| 50x annealing buffer (0.5 M Tris pH 8.0, 2.5 M NaCl) | 1 µl |

#### Annealing Program

- 95°C for 5 min
- Ramp down to 14°C at −0.1°C/s (slow cool for proper duplex formation)

> **Storage:** Aliquot annealed adapters into 2 µl single-use stocks and store at −20°C. Use a fresh aliquot for each experiment.

### B. PA-Tn5 Dilution & Transposon Assembly

#### PA-Tn5 Dilution

Dilute PA-Tn5 to **0.5 mg/ml** using dilution buffer:

**Dilution buffer:** 50% glycerol, 10 mM Tris-HCl pH 7.5, 100 mM NaCl, 0.1 mM EDTA, 1 mM DTT

#### Transposon Assembly (on the day of experiment)

- Mix 10 µl of 0.5 mg/ml PA-Tn5 with 2 µl of annealed adapter aliquot (one per adapter)
- Incubate at RT for 1 hr

---

## Day 1 — Protocol Steps

### Step 1: Formaldehyde Tissue Fixation

> **Rationale:** Light formaldehyde fixation preserves tissue morphology and protein–chromatin interactions while maintaining antibody/enzyme accessibility in subsequent steps.

**Before experiment:**

a. Prepare **0.2% formaldehyde** (methanol-free, Sigma F8775-25ML) in PBS.  
b. Set thermomixer to **37°C** and allow to equilibrate for 5 min.

**Tissue fixation:**

1. Section tissue onto the Visium capture area at a thickness of **10 µm**.
2. Place the slide (active surface up) on the thermomixer. Incubate for 5 min at 37°C.
3. Remove the slide; wipe excess liquid from the back without touching tissue sections.
4. Apply **1 ml of 0.2% formaldehyde** to cover the tissue. Incubate at RT for 10 min.
5. Wash with **1 ml of 1X PBS + 1.25 mM glycine** to quench residual formaldehyde, then remove.
6. Quickly wash with **1 ml of 1X PBS** for ~2 min at RT.

---

### Step 2: Permeabilization

1. Prepare **1x BD Perm buffer** on ice.
2. Apply **70 µl** 1x BD Perm buffer to each well.
3. Incubate for **30 min at 4°C**.

---

### Step 3: Primary Antibody Staining

1. After removing BD Perm buffer, apply **70 µl** primary antibody diluted in 1X BD Perm buffer.
2. Incubate at **RT for 1 hr**.
3. Wash with **100 µl 1x PBS** for 5 min at RT.

> **Note:** Dilution factor should be benchmarked by immunostaining and a pilot experiment.

---

### Step 4: Secondary Antibody Staining

> **Rationale:** The secondary antibody bridges the primary antibody to PA-Tn5, enabling targeted tagmentation at chromatin loci of interest.

1. Add secondary antibody in **digi-CT wash buffer** at **1:50 dilution**, 70 µl/well. Incubate at RT for 30 min.
2. Wash with **100 µl digi-CT wash buffer** for 5 min at RT.

---

### Step 5: Tagmentation

> **Rationale:** PA-Tn5 loaded with sequencing adapters inserts adapters at antibody-bound chromatin sites. Higher salt during binding reduces non-specific insertion; MgCl₂ activates Tn5 during tagmentation.

1. Add loaded PA-Tn5 in **70 µl digi-300-wash buffer** (1:50 dilution). Incubate for **1 hr at RT**.
2. Wash with **digi-300-wash buffer** for 5 min at RT.
3. Add **tagmentation buffer** (10 mM MgCl₂ in digi-300-wash buffer).
4. Incubate at **55°C for 1 hr**.
5. Stop tagmentation with **40 mM EDTA** (70 µl); incubate at RT for 5 min.
6. Wash with **100 µl 1X NEB buffer 2** for 5 min at RT; remove.

> **Recommended:** Start ramping down temperature at 55 min from 55°C → 37°C before stopping.

---

### Step 6: Gap Filling

> **Rationale:** Tagmentation creates nicked DNA ends. Gap filling repairs these nicks, enabling downstream in vitro transcription for signal amplification.

**Gap-Fill Solution (70 µl/well):**

| Reagent | Volume |
|---|---|
| H₂O | 56.8 µl |
| 10x NEB buffer 2 | 7 µl |
| dNTPs | 3.5 µl |
| RNase Inhibitor | 0.7 µl |
| Klenow (exo⁻) | 2 µl |

Remove buffer; add 70 µl fill-in solution. Incubate at **37°C for 30 min** with gentle shaking.

> A Thermotopis is recommended for even temperature distribution.

---

### Step 7: Tissue Clearing

> **Rationale:** HCl treatment removes histones and other proteins, improving accessibility for in vitro transcription.

1. Remove the gap-fill mixture.
2. Add **70 µl of 0.1 M HCl** (accurately diluted from stock) to each well.
3. Incubate for **2 min at RT**.
4. Remove HCl.
5. Add **100 µl of 1X T7 buffer** and wash for 5 min at RT.

---

### Step 8: In Vitro Transcription

> **Rationale:** T7 RNA polymerase transcribes from the inserted T7 promoter, generating multiple RNA copies per tagmentation event — a key amplification step that increases sensitivity.

**IVT Solution (70 µl/well):**

| Reagent | Volume |
|---|---|
| Nuclease-free water | 45.5 µl |
| 5x T7 RNA Polymerase buffer | 14 µl |
| 25 mM each rNTP | 5.6 µl |
| RNase Inhibitor | 3.5 µl |
| T7 RNA Polymerase (Thermo) | 1.4 µl |
| **Total** | **70 µl** |

1. Remove T7 buffer and apply **70 µl IVT solution** to each well.
2. Seal wells with film and incubate in thermomixer at **37°C overnight** (14–16 hrs).

> A thermotop is recommended to maintain temperature uniformity.

---

## Day 2

### Step 9: Methanol Fixation

> **Rationale:** Methanol fixation preserves IVT-generated RNA transcripts in place on the slide, enabling spatial capture in subsequent steps.

> **Night before:** Chill methanol (40 ml/slide) in a 50 ml centrifuge tube at −20°C.

1. Completely immerse the slide in pre-chilled methanol; secure the cap. Incubate upright for **30 min at −20°C**.
2. Remove the slide; wipe excess liquid from the back without touching tissue sections. Place on a flat, clean, non-absorbent surface.
3. Add **500 µl isopropanol** to uniformly cover all tissue sections. Incubate for 1 min at RT, then discard by draining. Wipe off excess.
4. Air dry the slide. Inspect after 5 min.

> **DO NOT exceed 10 min drying time** to avoid over-drying the tissue.

---

### Step 10: H&E Staining (optional)

> **Rationale:** H&E staining is performed for histological imaging to annotate tissue regions and guide downstream spatial analysis.

**Before experiment — dispense Milli-Q water:**
- 50 ml into one 50 ml centrifuge tube (per slide)
- 800 ml each into Beakers 1, 2, and 3 (each sufficient for two slides)

**Eosin Mix:**

> **DO NOT** add undiluted eosin directly to tissue sections.

| Reagent | Volume/slide |
|---|---|
| Eosin Y Solution | 100 µl |
| Tris-Acetic Acid Buffer (0.45 M, pH 6.0) | 900 µl |
| **Total** | **1,000 µl** |

**Staining Steps:**

1. Add **1 ml Hematoxylin** to cover sections. Incubate for **7 min** at RT, then drain.
2. Immerse slide: 5× centrifuge-tube water → 15× Beaker 1 → 15× Beaker 2. Spin dry.
3. Add **1 ml Bluing Buffer**. Incubate for **2 min** at RT, then discard.
4. Immerse slide 5× in Beaker 2 water. Spin dry.
5. Add **1 ml Eosin Mix**. Incubate for **1 min** at RT, then discard.
6. Immerse slide 15× in Beaker 3 water. Spin dry.
7. Incubate on Thermocycler Adaptor (lid open) for 1 min at 37°C.

**Proceed to tissue imaging on the Metafer scope.**

---

### Step 11: Tissue Wash

1. After imaging, wash with **1X RT buffer** (MMuLV, Maxima, or SSIII) at **37°C for 30 min**.
2. Remove the 1X RT buffer.

---

### Step 12: cDNA Synthesis

> **Rationale:** Reverse transcription converts IVT-generated RNA into cDNA using the spatially barcoded capture oligos on the Visium slide, enabling spatial indexing of the signal.

Prepare the RT mixture (70 µl/well) and pre-heat to **42°C** before use.

**Option A: MMuLV (NEB)**

| Reagent | Volume |
|---|---|
| 5x Maxima RT Buffer | 14 µl |
| Water (RNase/DNase-free) | 41.35 µl |
| BSA (20 mg/ml) | 0.65 µl |
| dNTP mix (10 mM each) | 3.5 µl |
| *(Add immediately before use:)* | |
| RNaseOut (1 U/µl) | 3.5 µl |
| MMuLV (200 U/µl) | 7 µl |
| **Total** | **70 µl** |

**Option B: Superscript III (Thermo)**

| Reagent | Volume |
|---|---|
| 5x RT Buffer | 14 µl |
| Water (RNase/DNase-free) | 41.35 µl |
| BSA (20 mg/ml) | 0.65 µl |
| dNTP mix (10 mM each) | 3.5 µl |
| *(Add immediately before use:)* | |
| RNaseOut (1 U/µl) | 3.5 µl |
| SSIII (200 U/µl) | 7 µl |
| **Total** | **70 µl** |

1. Add 70 µl of RT mix to each well; avoid bubbles. Cover with a plate sealer.
2. Incubate at **42°C overnight** or for 6 hrs in an Eppendorf thermomixer.

---

## Day 3

### Step 13: Denaturation (post-RT)

> **Rationale:** KOH denaturation removes the RNA template, leaving single-stranded cDNA for second strand synthesis.

1. Remove the RT mixture.
2. Add **70 µl of 0.08 M KOH** (freshly diluted) to each well.
3. Incubate for **5 min at RT**.
4. Remove KOH.
5. Add **100 µl of Buffer EB** (10 mM Tris-Cl, pH 8.5) to neutralize.

---

### Step 14: Second Strand Synthesis

> **Rationale:** A primer is annealed to the single-stranded cDNA; Klenow polymerase extends it to generate dsDNA suitable for PCR amplification.

**Primer Annealing:**

| Reagent | Volume |
|---|---|
| 2x primer hybridization buffer | 35 µl |
| Primer (1 µM) | 1.4 µl |
| H₂O | 33.6 µl |

1. Add 70 µl of primer annealing mix to each well; incubate at **RT for 30 min**.
2. Wash with Buffer EB: pipette 100 µl into each well and immediately remove.

**Klenow Extension:**

| Reagent | Volume |
|---|---|
| 5x Maxima Buffer | 14 µl |
| Water (RNase/DNase-free) | 40.25 µl |
| dNTP mix (10 mM each) | 7 µl |
| DNA primer (10 µM) | 7 µl |
| Klenow (200 U/µl) | 1.75 µl |
| **Total** | **70 µl** |

1. Add 70 µl of Klenow mix to each well; avoid bubbles. Cover and incubate for **1 hr at 37°C**.
2. Remove the Klenow mix.

---

### Step 15: Denaturation (post-Second Strand)

> **Rationale:** A second KOH denaturation releases the dsDNA from the slide for collection and downstream library preparation.

1. Remove reagents from the wells.
2. Add **100 µl Buffer EB** to each well; remove immediately.
3. Add **35 µl of 0.08 M KOH** (freshly diluted) to each well.
4. Incubate for **10 min at RT** with 300 rpm shaking.
5. Add **5 µl of 1 M Tris (pH 7.0)** to each tube in an 8-tube strip to pre-neutralize.
6. Transfer 35 µl of sample from each well to the corresponding Tris-containing tube (±1–2 µl variation expected).
7. Vortex briefly, centrifuge, and place on ice.

---

### Step 16: PCR Library Amplification

> **Rationale:** PCR1 amplifies the cDNA library using primers targeting the capture oligo and Nextera adapter sequences. Index PCR adds sample-specific barcodes for multiplexed sequencing.

**PCR1:**

For Visium slides (e.g. mouse brain, ~70% capture area): ~18 cycles recommended.

| Reagent | Volume |
|---|---|
| Elution | 40 µl |
| cDNA-oligo1 (`CTACACGACGCTCTTCCGATCT`) | 5 µl |
| PF-nexteraR2-DME (`GTCTCGTGGGCTCGGAGATGTGTATAAGAGACAG`) | 5 µl |
| NEBNext | 50 µl |

**PCR1 Program:**

| Step | Temp | Time | Cycles |
|---|---|---|---|
| Initial denaturation | 98°C | 3 min | 1 |
| Denaturation | 98°C | 15 s | 18× |
| Annealing | 60°C | 20 s | 18× |
| Extension | 72°C | 1 min | 18× |
| Final extension | 72°C | 1 min | 1 |
| Hold | 4°C | ∞ | — |

Purify with **0.65x SPRI**; elute in 40 µl. Use 20 µl for index PCR.

**Index PCR (5 cycles):**

| Reagent | Volume |
|---|---|
| Elution | 20 µl |
| SIPCR-T5XXX | 2.5 µl |
| N7 indexing primer | 2.5 µl |
| NEBNext | 25 µl |

**Primer sequences:**

- SIPCR-T5XXX: `AATGATACGGCGACCACCGAGATCTACACNNNNNNNNACACTCTTTCCCTACACGACGCTC`
- N7 indexing primer: `CAAGCAGAAGACGGCATACGAGATNNNNNNNNGTCTCGTGGGCTCGG`

**Final Cleanup:**

- If high-molecular-weight (HMW) bands are visible: perform **2-sided SPRI** — 0.45x twice, followed by 0.6x.
- Alternatively: perform **0.6x SPRI for 2 rounds**.
