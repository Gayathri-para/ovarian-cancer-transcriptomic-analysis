# Methodology

The project focused on transcriptomic profiling of ovarian cancer using RNA-seq data.

## Computational workflow
1. FASTQ data acquisition
2. Quality assessment with FastQC
3. Adapter / low-quality read trimming
4. Alignment using HISAT2 and/or STAR
5. Gene-level quantification using featureCounts or HTSeq
6. Differential expression using DESeq2 and/or edgeR
7. Functional enrichment using GO and KEGG
8. Visualization using volcano plots, heatmaps and PCA
9. Biological interpretation

## Nextflow
The thesis describes a Nextflow-based workflow to organize the analysis into modular computational processes and improve reproducibility and automation.

## Pilot analyses
Two RNA-seq pilot studies were used for workflow development:
- Drosophila melanogaster ageing: Day 1 vs Day 60.
- Cell-density study: sub-confluent vs confluent cells.

This file summarizes the submitted thesis; it does not add analyses that were not documented there.
