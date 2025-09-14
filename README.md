## Building and running locally

Make sure you have node.js and Python 3.13 installed.

```bash
# Install python dependencies
pip install -r .\requirements.txt

# Install node dependencies
cd metube/ui
npm install
```

```bash
# Run python
python3 app/main.py

# Run electron interface
npm run build && electron .
```

```bash
# Build python
pyinstaller --onefile --hidden-import=engineio.async_drivers.aiohttp app/main.py

# Build electron interface
npm run build && electron-builder
```

## Development notes

* The above works on Windows and macOS as well as Linux.
