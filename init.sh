sudo apt-get update
sudo apt install r-base-core python3-pip
sudo apt-get install -y libxml2-dev libcurl4-openssl-dev libssl-dev libfontconfig1-dev libcairo2-dev libudunits2-dev libgdal-dev
pip3 install -r requirements.txt
sudo Rscript packages.R
