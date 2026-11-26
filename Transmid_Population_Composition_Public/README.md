# Transmid — population-composition analyses (public-release files)

**Scope:** Exploratory peritoneal (PE) and gastrointestinal (GI) population-composition models that support Figure 5. The primary ΔT model and its code are separate and are not included here.

## Data-sharing protection

This public-release ZIP **does not include original individual-animal colony counts, animal identifiers linked to results, embedded compressed copies of the study data, or per-animal posterior/plate audit files.** Those items occur in the earlier private research archive and were deliberately excluded here because permission to redistribute the KWS-derived observations has not been verified. No claim is made that the underlying animal data can be publicly shared.

The six analysis notebooks have `_PUBLIC` suffixes. Their original statistical model and plotting cells are preserved, but the input-restoration cells no longer embed data. The PE (NB10, NB11), GI (NB15), and donor-audit (NB16) notebooks **require separately authorised inputs**. They are not self-contained and will stop with a clear error if those private inputs are not supplied. Do not add private inputs or execution outputs back to a public repository.

## Contents

- `notebooks/NB10_*_PUBLIC.ipynb`: PE Bayesian latent-population model; requires original 32 PE culture-count records.
- `notebooks/NB11_*_PUBLIC.ipynb`: PE sensitivity analyses; requires same private PE input.
- `notebooks/NB15_*_PUBLIC.ipynb`: GI hierarchical shared-donor model; requires original 32 animal-day culture-count records.
- `notebooks/NB16_*_PUBLIC.ipynb`: donor abundance audit; requires separate authorisation for animal-level NB15 audit file and two aggregate NB15 outputs.
- `notebooks/NB17_*_PUBLIC.ipynb`: aggregate PE/GI figure and table; uses `figures/NB17_Unmodified_Posterior_Summaries.csv`.
- `notebooks/NB18_*_PUBLIC.ipynb`: aggregate calibrated-width PE/GI figure; uses `figures/Figure5_Calibrated_Width_Data.csv`.
- `figures/`: final vertical Figure 5 and aggregate source tables.
- `results/`: selected **group-level** posterior summaries and contrasts only.

## Running the notebook code

Run NB17 or NB18 from the repository root (or `notebooks/`) with the `figures/` directory present. Neither requires private inputs. NB18's notebook renders a horizontal arrangement; the submitted manuscript Figure 5 uses the same data in the supplied vertical PNG.

To refit NB10/NB11/NB15, obtain permission for the original study records and keep those files outside the public repository. The respective notebooks expect them in the working `DATA_DIR` chosen in their setup cells:

- `NB10_PE_Original_CFU_derived.csv`: `animal_id`, `group`, `hours_post_infection`, `Cb_CFU_ml`, `CbTc_CFU_ml`, `Tc_CFU_ml`, `LB_CFU_ml` (and optional source-row columns). Early-group LB values are unavailable.
- `NB15_GI_original_selective_plate_CFU_g.csv`: `animal_id`, `day`, `group`, `sample_weight_g`, `N_Sm`, `N_SmTc`, `N_SmRfTc`, `N_SmCbTc`, `N_SmCb`, `N_SmRf`.
- NB16 expects `NB15_original_count_audit.csv`, `NB15_group_population_fractions.csv`, `NB15_donor_hierarchical_posterior.csv` inside its private `DATA_DIR`.

No individual-level template or fabricated records are supplied.

## Interpretation

The models are exploratory. PE assumes negligible spontaneous resistance-plasmid loss in Transmid-negative recipients. GI assumes shared mean donor abundance within a sampling day, with prior-sensitive donor heterogeneity. Some measured selective-plate counts violate expected biological subset relationships. Later PE target and non-target observations were not time-matched. Figure 5 segment heights are normalised posterior medians and widths show between-animal SD, *not* density curves or credible intervals. These analyses cannot independently establish Transmid acquisition rates, molecular plasmid loss, or causal resensitisation rates.

