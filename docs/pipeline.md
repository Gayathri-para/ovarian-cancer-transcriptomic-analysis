# RNA-seq Pipeline

```text
FASTQ
  ↓
FastQC
  ↓
Read trimming
  ↓
HISAT2 / STAR
  ↓
featureCounts / HTSeq
  ↓
DESeq2 / edgeR
  ↓
GO / KEGG enrichment
  ↓
Volcano plot / Heatmap / PCA
  ↓
Biological interpretation
```

## Nextflow
The thesis describes a Nextflow-based workflow for reproducible RNA-seq analysis. The workflow organizes processing into modular stages with defined inputs and outputs.

## Reference genome
The thesis documents the use of **GRCh38** for the ovarian-cancer analysis.

## Repository status
Pipeline source files should be added only when the original working scripts are available and cleaned of local paths and sensitive information.
