unset PYTHONPATH
python3 -m venv test_venv
source test_venv/bin/activate
pip3 install --user --upgrade pip
pip3 install --user -r requirements.txt
pip3 list