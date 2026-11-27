# =============================================================================
# run_all.R
#
# Reproduces all results of the paper in one go:
#   1_processing.R               -> data/processed/
#   2_statistics_visualisation.R -> results/tables/ and results/figures/
#
# Open human-baseline-habitat-loss-islands.Rproj first, then run this script.
# =============================================================================

library(here)

source(here("scripts", "1_processing.R"))
source(here("scripts", "2_statistics_visualisation.R"))
