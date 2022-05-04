#create venv with conda
(echo "creating venv with conda" && conda create -y --prefix .venv pip python=3.7) || \
    #if it fails : with .venv
    (echo "creating venv with venv" && python -m venv .venv && . ./.venv/Scripts/activate && pip install --upgrade pip) || \
    (m -rf .venv && echo "Error : no venv created");

