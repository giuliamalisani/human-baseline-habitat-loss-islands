# Human-induced habitat loss rates exceed baseline rates across islands worldwide

R code and data for the paper:

> Malisani G, Uría Weis C, Sauerbier JDC, De Groeve J, de Nascimento L, Fernández-Palacios JM, Boschman L, Nogué S, Rijsdijk KF, Norder SJ. Human-induced habitat loss rates exceed baseline rates across islands worldwide. *Frontiers of Biogeography* (in review).

The code compares human-induced habitat loss rates (HumHLr) on 43 volcanic oceanic islands with natural baseline rates (BaseHLr): sea-level rise since the Last Glacial Maximum (SeaHLr) and Holocene volcanism (VolHLr). HumHLr is estimated with a local proxy (island-specific vegetation data) and a global proxy (Human Modification Index, HMc; Kennedy et al. 2019).

## How to run

1. Open `human-baseline-habitat-loss-islands.Rproj` in RStudio.
2. Run `source("scripts/run_all.R")`.

All paths are relative to the project root (via the `here` package), so no paths need to be changed.

## Project structure

```
├── data/
│   ├── raw/                    input data (not modified by the code)
│   │   ├── arrival_years.csv           year of first human arrival per island
│   │   ├── island_name_lookup.csv      spelling harmonisation of island names
│   │   ├── local_natural_covers.csv    local proxy: native vegetation cover per island
│   │   ├── volcanic_covers.csv         % island area covered by Holocene lava flows
│   │   ├── island_boundaries/          island polygons (.gpkg), one per island
│   │   └── lgm_areas/                  reconstructed island areas through time (recarea.csv), one folder per island
│   └── processed/              data files written by 1_processing.R
├── results/
│   ├── tables/                 summary statistics, Wilcoxon tests, ratios
│   └── figures/                all figures
└── scripts/
    ├── 1_processing.R              habitat loss (HL) and rate (HLr) calculations, calibration of the global proxy
    ├── 2_statistics_visualisation.R summary statistics, Wilcoxon signed-rank tests, figures
    └── run_all.R                   runs both scripts in order
```

## Data sources

- **Human Modification Index (HMc)**: Kennedy et al. (2019). The raster is too large for this repository. To rerun the extraction step, download it from [ADD LINK] and save it as `data/raw/Kennedy_HMc.tif`. Without the raster, `1_processing.R` uses the saved extraction results in `data/processed/hmc_natural_habitat.csv` and `data/processed/island_information.csv`.
- **Island boundaries**: global shoreline vector of Sayre et al. (2019).
- **LGM island areas**: reconstructed with the R package `tabs` (De Groeve et al. 2025), using sea-level estimates from De Groeve et al. (2022) and GEBCO (2024) bathymetry.
- **Local natural cover**: compiled from Norder et al. (2020) and expanded with the island-specific sources listed in Table S1 of the paper. [ADD: how the data were collected/compiled]
- **Arrival years**: archaeological, palaeoecological and historical sources listed in Table S1.
- **Holocene volcanic cover**: island-specific geological maps listed in Table S5.

## Software

Analyses were run in R [ADD VERSION, from `R.version.string`]. Packages: here, readr, dplyr, tidyr, purrr, stringr, sf, terra, exactextractr, ggplot2, forcats, ggpubr, ggrepel, patchwork.
