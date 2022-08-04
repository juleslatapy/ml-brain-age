#create venv with conda
(echo "creating venv with conda" && conda create -y --prefix .venv pip python=3.7) || \
    #if it fails : with .venv
    (echo "creating venv with venv and python" && python -m venv .venv && . ./.venv/Scripts/activate && pip install --upgrade pip) || \
        (echo "creating venv with venv and python3" && python3 -m venv .venv && . ./.venv/bin/activate && pip install --upgrade pip) || \
            (rm -rf .venv && echo "Error : no venv created");

