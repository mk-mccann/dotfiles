#!/bash/bin

# Download miniconda from it's repository and install
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda.sh
bash ~/miniconda.sh -b
export PATH=~/miniconda3/bin:$PATH
conda update --yes conda
rm Miniconda3-latest-Linux-x86_64.sh
