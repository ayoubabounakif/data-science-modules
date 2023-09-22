# Set conda path
MYPATH="/goinfre/$USER/miniconda3";

# Download and install conda (Linux)
curl -LO "https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh";
sh Miniconda3-latest-Linux-x86_64.sh -b -p $MYPATH;

# Initial configuration of conda (Zsh)
$MYPATH/bin/conda init zsh;
$MYPATH/bin/conda config --set auto_activate_base false;
source ~/.zshrc;

# Create an environment for 42AI
conda create -y --name 42AI-$USER python=3.10 jupyter pandas pycodestyle numpy matplotlib sqlalchemy psycopg2 seaborn scikit-learn
