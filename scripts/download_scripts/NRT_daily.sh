#/bin/bash


# Call all download scripts that grab near-real-time data
$REPO_DIR"/scripts/download_scripts/download_NSIDC_0081.sh"

wait

# Call python scripts to convert native format to spin_nc format
source $HOME/.bashrc
source activate xesmf
python $HOME"/python/ESIO/notebooks/plot_pan_arctic_extent_Forecast.py"

echo Finished NRT daily downloads.