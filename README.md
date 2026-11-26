# Transmid Bayesian resensitisation analysis

Reproducibility materials for Bayesian analysis of the **relative reduction in carbenicillin resistance (ΔT)** following Transmid delivery in gastrointestinal (GI) and peritoneal (PE) mouse models. Exploratory bacterial population-composition analyses supporting Figure 5 are included in a separate folder.

## Included files
- `notebooks/NB05_Bayesian_DeltaT_Group_Comparison.ipynb`: source-derived, public-release adaptation of NB05. Numbered sequential cells.
- `models/NB05_GI_descriptive_deltaT.stan`: GI Student-t model, ν = 4, with animal-level repeated-measures random intercept.
- `models/NB05_PE_descriptive_deltaT.stan`: PE Student-t model, ν = 4, with independent terminal observations.
- `data/NB05_GI_Delta_T.csv`: 32 GI observations from 16 mice (Days 10 and 14).
- `data/NB05_PE_Delta_T.csv`: 32 PE observations from 32 mice (early 6 h and later observations).
- `Transmid_Population_Composition_Public/`: six exploratory notebooks (NB10, NB11, NB15–NB18), aggregate posterior summaries, Figure 5, and a separate README.

## Reproduce
1. Clone or download this repository and extract it.
2. Run the notebook from the repository root. In Google Colab, upload the repository ZIP to session storage and open the notebook separately; Cell 2 extracts the ZIP automatically.
3. Run the numbered cells sequentially. Python dependencies are installed by Cell 1; CmdStan will be installed if needed.
4. Outputs are generated locally under `results/` and are excluded from version control by default.

The notebook was **adapted only for release**: removed Google Drive mounting, embedded source-workbook archives and source provenance fields, and replaced paths with repository-relative paths. Statistical models, priors and sampling settings from NB05 were retained. The corrected GI input indexing matches the original validated notebook. A Colab run reported by the author on 25 November 2026 reproduced all four target–non-target posterior contrasts in manuscript Table 1 to reported precision. The release ZIP itself was not independently refitted during packaging.

## Exploratory population-composition analysis (Figure 5)

The `Transmid_Population_Composition_Public/` folder contains the code and aggregate results supporting Figure 5. Its own `README.md` explains the notebooks and their input requirements.

- **NB17 and NB18** use the included aggregate data and can be run without the original animal-study records.
- **NB10, NB11, NB15 and NB16** require original selective-culture observations or animal-level analysis inputs that are not distributed in this folder.

Consequently, the public files support regeneration of the aggregate Figure 5 results but **not complete refitting** of the exploratory Bayesian population models. Private animal-study inputs should not be added to the public repository without appropriate permission.

## Data and interpretation

The CSV files contain reduced numerical inputs, not original KWS workbooks. Animal IDs are **new analysis-only identifiers**. GI IDs preserve the original Stan random-effect index ordering and are kept consistent across repeated measures; they are not source study identifiers. No original study identifiers or workbook provenance fields are included.

ΔT is a selective-culture-derived index; posterior location parameters are not directly estimated biological fractions or molecular gene-cleavage rates. Later PE observations were not time matched (target approximately 16–20 h; non-target 24 h). The notebook reports descriptive target–non-target contrasts rather than mechanistic conversion rates.

## Excluded intentionally

Complete Transmid or plasmid nucleotide sequences, private construction records, original KWS reports and workbooks, unpublished plasmid maps, and exploratory NB08/NB09 population-fraction notebooks.

## Licence and data rights

The original Python and Stan analysis code in this repository is released under the MIT License (see `LICENSE`).

The MIT License does not apply to the KWS BioTest-derived animal-study datasets. The reduced NB05 numerical data are included to support reproducibility of the ΔT Bayesian analysis, but their redistribution and reuse rights have not been independently confirmed. The exploratory population-composition folder excludes original individual-animal inputs; rights to publish the included aggregate results and Figure 5 also require confirmation.

No rights to reuse or redistribute these datasets are granted by this repository. Original KWS source records and complete Transmid nucleotide sequences are not included.

