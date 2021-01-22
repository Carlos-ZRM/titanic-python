mkdir -p /usr/src/app/{data,notebook}
cd /usr/src/app/
if [ -f "requirements.txt" ]; then
    echo "file  exists."
    pip install --user --no-cache-dir -r requirements.txt
fi
jupyter notebook --ip 0.0.0.0 --no-browser
