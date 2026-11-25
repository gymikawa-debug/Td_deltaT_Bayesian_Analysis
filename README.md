# Transmid Bayesian resensitisation analysis

Reproducibility materials for Bayesian analysis of the **relative reduction in carbenicillin resistance (ΔT)** following Transmid delivery in gastrointestinal (GI) and peritoneal (PE) mouse models.

## Included files
- `notebooks/NB05_Bayesian_DeltaT_Group_Comparison.ipynb`: source-derived, public-release adaptation of NB05. Numbered sequential cells.
- `models/NB05_GI_descriptive_deltaT.stan`: GI Student-t model, ν = 4, with animal-level repeated-measures random intercept.
- `models/NB05_PE_descriptive_deltaT.stan`: PE Student-t model, ν = 4, with independent terminal observations.
- `data/NB05_GI_Delta_T.csv`: 32 GI observations from 16 mice (Days 10 and 14).
- `data/NB05_PE_Delta_T.csv`: 32 PE observations from 32 mice (early 6 h and later observations).

## Reproduce
1. Clone or download this repository and extract it.
2. Run the notebook from the repository root. In Google Colab, upload the repository ZIP to session storage and open the notebook separately; Cell 2 extracts the ZIP automatically.
3. Run the numbered cells sequentially. Python dependencies are installed by Cell 1; CmdStan will be installed if needed.
4. Outputs are generated locally under `results/` and are excluded from version control by default.

The notebook was **adapted only for release**: removed Google Drive mounting, embedded source-workbook archives and source provenance fields, and replaced paths with repository-relative paths. Statistical models, priors and sampling settings from NB05 were retained. The corrected GI input indexing matches the original validated notebook. A Colab run reported by the author on 25 November 2026 reproduced all four target–non-target posterior contrasts in manuscript Table 1 to reported precision. The release ZIP itself was not independently refitted during packaging.

## Data and interpretation

The CSV files contain reduced numerical inputs, not original KWS workbooks. Animal IDs are **new analysis-only identifiers**. GI IDs preserve the original Stan random-effect index ordering and are kept consistent across repeated measures; they are not source study identifiers. No original study identifiers or workbook provenance fields are included.

ΔT is a selective-culture-derived index; posterior location parameters are not directly estimated biological fractions or molecular gene-cleavage rates. Later PE observations were not time matched (target approximately 16–20 h; non-target 24 h). The notebook reports descriptive target–non-target contrasts rather than mechanistic conversion rates.

## Excluded intentionally

Complete Transmid or plasmid nucleotide sequences, private construction records, original KWS reports and workbooks, unpublished plasmid maps, contact details, private Drive paths, email addresses, and exploratory NB08/NB09 population-fraction notebooks.

## Licence and data rights

No licence is granted by this preliminary upload package. Confirm reuse rights for the derived animal-study data and choose a code licence before publishing the repository. Do not include raw source records without an independent disclosure review.
