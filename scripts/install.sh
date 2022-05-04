echo "installing dependancies..."
(echo "installing with conda..." && conda install --file requirements.txt) || \
    (echo "installing with pip..." && pip install -r requirements.txt) || \
    (echo "error : failed to install, do it manually")

