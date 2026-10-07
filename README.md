# Transcriptomic Profiling of Ovarian Cancer Patients Across a Cohort

**B.Tech Bioinformatics Dissertation / Research Internship — BRIC-CDFD, Hyderabad**

This repository documents my undergraduate research project on transcriptomic profiling of ovarian cancer using RNA-seq data and reproducible bioinformatics workflows.

## Research focus
The project investigates gene-expression changes associated with ovarian cancer and uses transcriptomic analysis to identify differentially expressed genes (DEGs) and interpret molecular patterns relevant to carcinogenesis.

## Objectives
- Analyze RNA-seq transcriptomic data from ovarian cancer samples.
- Identify differentially expressed genes between cancer and control groups.
- Visualize transcriptomic patterns using volcano plots, heatmaps and PCA.
- Investigate biological significance through functional and pathway analysis.
- Explore reproducible workflow development using Nextflow.
- Establish a computational foundation for downstream biomarker discovery and predictive analysis.

## Bioinformatics workflow
```text
RNA-seq FASTQ
     ↓
Quality Control — FastQC
     ↓
Read Trimming
     ↓
Read Alignment — HISAT2 / STAR
     ↓
Gene Quantification — featureCounts / HTSeq
     ↓
Differential Expression — DESeq2 / edgeR
     ↓
GO / KEGG enrichment
     ↓
Volcano Plot / Heatmap / PCA
     ↓
Biological Interpretation
```

## Technologies
**Languages:** R, Python, Bash

**RNA-seq / Bioinformatics:** FastQC, Trimmomatic, Cutadapt, HISAT2, STAR, featureCounts, HTSeq, DESeq2, edgeR

**Workflow / Computing:** Nextflow, Galaxy, Linux/Ubuntu

**Downstream analysis:** Gene Ontology (GO), KEGG, volcano plots, hierarchical clustering, heatmaps, PCA

## Results overview
The thesis reports differential gene-expression analysis of 96 ovarian cancer patient samples, with both upregulated and downregulated genes and distinct clustering patterns.

See [`docs/results.md`](docs/results.md).

## Repository structure
```text
.
├── README.md
├── docs/
│   ├── methodology.md
│   ├── pipeline.md
│   ├── results.md
│   └── reproducibility.md
├── figures/
├── data/
│   └── README.md
├── scripts/
│   └── README.md
└── results/
    └── README.md
```

## Data and privacy
Raw sequencing files are **not included**. This keeps the repository lightweight and avoids publicly distributing potentially sensitive cohort data.

## Research context
Completed as a B.Tech Bioinformatics dissertation / internship project at BRIC-CDFD, Hyderabad, under the guidance of Dr. Yathish J. Achar and academic guidance from Dr. K. Sudheer Kumar.

## Author
**Gayathri Para**  
B.Tech Bioinformatics, Vignan's Foundation for Science & Technology

> This repository documents academic research and does not represent a clinically validated diagnostic or therapeutic model.
