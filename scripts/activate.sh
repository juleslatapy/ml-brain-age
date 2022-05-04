#activate venv with conda
(echo "activating venv with conda" && conda activate ./.venv) || \
    #if it fails : with .venv
    (echo "activating venv with venv" . ./.venv/Scripts/activate) || \
    (echo "Error : no venv activated");
