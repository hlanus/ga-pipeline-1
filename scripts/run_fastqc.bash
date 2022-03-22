# Load fastqc module
module add fastqc/0.11.7

# Set input and output variables
OUTDIR=results/fastqc_untrimmed_reads
INOUT=data/untrimed_fastq/*.fastq.gz

# Create output directory if necessary
mkdir -p $OUTDIR

# Run fastqc
fastqc -o $OUTDIR $INPUT
