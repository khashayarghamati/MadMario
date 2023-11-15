module load python3
unset PYTHONPATH
python3 -m venv test_venv
source test_venv/bin/activate
pip3 install -r requirements.txt
pip3 list