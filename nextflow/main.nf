nextflow.enable.dsl=2

/*
 * Reconstructed Nextflow workflow for the ovarian cancer RNA-seq project.
 *
 * The original workflow files were not retained. This file was reconstructed
 * from the documented project methodology and is therefore a portfolio
 * representation, not the exact historical script.
 */

params.reads = 'data/raw/*_{1,2}.fastq.gz'
params.outdir = 'results/nextflow'
params.hisat2_index = 'references/hisat2_index'
params.gtf = 'references/annotation.gtf'

process FASTQC {
    tag "$sample_id"
    publishDir "${params.outdir}/fastqc", mode: 'copy'

    input:
    tuple val(sample_id), path(reads)

    output:
    path "*_fastqc.html"
    path "*_fastqc.zip"

    script:
    """
    fastqc ${reads.join(' ')}
    """
}

process TRIM_GALORE {
    tag "$sample_id"
    publishDir "${params.outdir}/trimmed", mode: 'copy'

    input:
    tuple val(sample_id), path(reads)

    output:
    tuple val(sample_id), path("*_val_1.fq.gz"), path("*_val_2.fq.gz")

    script:
    """
    trim_galore --paired ${reads[0]} ${reads[1]}
    """
}

process HISAT2 {
    tag "$sample_id"
    publishDir "${params.outdir}/alignment", mode: 'copy'

    input:
    tuple val(sample_id), path(r1), path(r2)
    path index_prefix

    output:
    tuple val(sample_id), path("*.sam")

    script:
    """
    hisat2 -x ${index_prefix} -1 ${r1} -2 ${r2} -S ${sample_id}.sam
    """
}

process FEATURECOUNTS {
    publishDir "${params.outdir}/counts", mode: 'copy'

    input:
    path sam_files
    path gtf

    output:
    path 'featureCounts.txt'

    script:
    """
    featureCounts -a ${gtf} -o featureCounts.txt ${sam_files.join(' ')}
    """
}

workflow {
    reads_ch = Channel
        .fromFilePairs(params.reads, checkIfExists: false)
        .map { sample_id, reads -> tuple(sample_id, reads) }

    FASTQC(reads_ch)
    trimmed_ch = TRIM_GALORE(reads_ch)

    /*
     * Exact reference-index structure and historical parameters were not
     * retained, so the downstream section is deliberately a template.
     */
    if (file(params.hisat2_index).exists() && file(params.gtf).exists()) {
        aligned_ch = HISAT2(trimmed_ch, file(params.hisat2_index))
        FEATURECOUNTS(aligned_ch.map { sample_id, sam -> sam }.collect(), file(params.gtf))
    }
}
