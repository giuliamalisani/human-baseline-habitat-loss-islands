# human-baseline-habitat-loss-islands

R code and data for the paper "Human-induced habitat loss rates exceed baseline rates across islands worldwide".

We compare human-induced habitat loss rates (HumHLr) on 43 volcanic oceanic islands with natural baseline rates (BaseHLr), i.e. habitat loss from sea-level rise since the Last Glacial Maximum (SeaHLr) and from Holocene volcanism (VolHLr). HumHLr is calculated with a local proxy (island vegetation data) and a global proxy (the Human Modification Index from Kennedy et al. 2019).

## How to run

Open `human-baseline-habitat-loss-islands.Rproj` and run `scripts/run_all.R`, or run the two scripts in order:

- `scripts/1_processing.R`: all habitat loss (HL) and habitat loss rate (HLr) calculations, and the calibration of the global proxy against the local one.
- `scripts/2_statistics_visualisation.R`: summary statistics, Wilcoxon signed-rank tests and all figures.

The Human Modification raster should be be downloaded from https://doi.org/10.6084/m9.figshare.7283087 and should be saved as `data/raw/Kennedy_HMc.tif` before running `1_processing.R`.

## Folders

- `data/raw/`: input data
  - `arrival_years.csv`: year of first human arrival for each island
  - `island_name_lookup.csv`: used to harmonise island names across datasets
  - `local_natural_covers.csv`: native vegetation cover per island (local proxy)
  - `volcanic_covers.csv`: percentage of each island covered by Holocene lava flows
  - `island_boundaries/`: island outlines (one .gpkg per island)
  - `lgm_areas/`: island areas through time reconstructed with `tabs` (one folder per island)
- `data/processed/`: files created by `1_processing.R`
- `results/tables/`: summary statistics, Wilcoxon tests and HumHLr/BaseHLr ratios
- `results/figures/`: all figures

## Software

R version 4.5.2 with the packages here, readr, dplyr, tidyr, purrr, stringr, sf, terra, exactextractr, ggplot2, forcats, ggpubr, ggrepel and patchwork.