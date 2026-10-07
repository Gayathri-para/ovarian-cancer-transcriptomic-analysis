# Nextflow workflow

This directory contains a **reconstructed Nextflow workflow** based on the documented ovarian cancer RNA-seq methodology.

## Documented stages

- FASTQ input
- FastQC quality control
- trimming
- HISAT2 / STAR alignment
- featureCounts / HTSeq quantification
- DESeq2 / edgeR differential expression
- downstream functional/pathway analysis and visualization

## Important note

The original Nextflow files used during the internship were not retained. The files here were recreated from the project documentation and are **not presented as the exact historical scripts**. Exact software versions, reference indices, sample metadata and command parameters should be recovered before using this repository for strict reproducibility claims.
