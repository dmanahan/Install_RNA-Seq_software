#Download and install sra-tools
git clone https://github.com/dmanahan/sra-tools.git
cd sra-tools/
./configure
make
cd ..

#Download and install FastQC
wget https://www.bioinformatics.babraham.ac.uk/projects/fastqc/fastqc_v0.11.7.zip
unzip -vf fastqc_v0.11.7.zip

#Download TrimGalore!
curl -fsSL https://github.com/FelixKrueger/TrimGalore/archive/0.4.3.tar.gz -o trim_galore.tar.gz
tar xvzf trim_galore.tar.gz

#Download STAR
wget https://github.com/alexdobin/STAR/archive/2.5.3a.tar.gz
tar -xzf 2.5.3a.tar.gz

#Download samtools
git clone https://github.com/samtools/samtools.git
cd samtools
make
cd ..

#Download pip
wget https://bootstrap.pypa.io/get-pip.py
python get-pip.py --user
mv ~/.local/bin/* .

#Download HTSeq using pip.  NOT QUITE THERE
./pip install HTSeq --user
mv ~/.local/bin/* .
#NOTES: pip download, find pip in .local/bin. install HTSeq as website directs, then set path which is in .local/bin

#Download reference genome fasta and annotations files from GENCODE

#Generate reference genomes
mkdir STAR_hg38_index
cd STAR_hg38_index
qsub STAR_index_hg38.pbs
