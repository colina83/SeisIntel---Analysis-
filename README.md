# SeisIntel Analysis

A Python-based data science project for seismic intelligence analysis using Jupyter notebooks.

## 📋 Prerequisites

- Python 3.8 or higher
- pip (Python package installer)
- Git

## 🚀 Quick Start

### Option 1: Local Setup with Visual Studio Code

1. **Clone the repository**
   ```bash
   git clone https://github.com/colina83/SeisIntel---Analysis-.git
   cd SeisIntel---Analysis-
   ```

2. **Create a virtual environment**
   ```bash
   # Windows
   python -m venv venv
   venv\Scripts\activate

   # macOS/Linux
   python3 -m venv venv
   source venv/bin/activate
   ```

3. **Install dependencies**
   ```bash
   pip install -r requirements.txt
   ```

4. **Open in VS Code**
   ```bash
   code .
   ```

5. **Install recommended VS Code extensions**
   - Python (ms-python.python)
   - Pylance (ms-python.vscode-pylance)
   - Jupyter (ms-toolsai.jupyter)
   - Jupyter Keymap (ms-toolsai.jupyter-keymap)
   - Jupyter Notebook Renderers (ms-toolsai.jupyter-renderers)

6. **Start Jupyter**
   ```bash
   jupyter lab
   # or
   jupyter notebook
   ```

7. **Open the getting started notebook**
   - Navigate to `notebooks/getting_started.ipynb`
   - Run the cells to verify your setup

### Option 2: Google Colab

1. **Open Google Colab**
   - Go to [Google Colab](https://colab.research.google.com/)

2. **Load from GitHub**
   - Click on "GitHub" tab
   - Enter repository URL: `https://github.com/colina83/SeisIntel---Analysis-`
   - Select the notebook you want to run

3. **Install additional dependencies** (if needed)
   - Add a cell at the top of your notebook:
   ```python
   !pip install -r https://raw.githubusercontent.com/colina83/SeisIntel---Analysis-/main/requirements.txt
   ```

## 📦 Included Libraries

### Core Data Science
- **NumPy**: Numerical computing
- **Pandas**: Data manipulation and analysis
- **Matplotlib**: Data visualization
- **Seaborn**: Statistical data visualization
- **SciPy**: Scientific computing

### Jupyter
- **Jupyter**: Interactive computing environment
- **JupyterLab**: Next-generation notebook interface
- **IPython**: Enhanced interactive Python shell
- **IPyKernel**: IPython kernel for Jupyter
- **IPyWidgets**: Interactive widgets

### Visualization
- **Plotly**: Interactive visualizations

### Machine Learning
- **scikit-learn**: Machine learning algorithms

### Data Processing
- **openpyxl**: Excel file support
- **xlrd**: Excel file reading

## 📁 Project Structure

```
SeisIntel---Analysis-/
├── notebooks/              # Jupyter notebooks
│   └── getting_started.ipynb
├── .vscode/               # VS Code settings
│   ├── settings.json
│   └── extensions.json
├── requirements.txt       # Python dependencies
├── .gitignore            # Git ignore rules
└── README.md             # This file
```

## 🔧 Development

### Running Jupyter Lab
```bash
jupyter lab
```

### Running Jupyter Notebook
```bash
jupyter notebook
```

### Installing new packages
```bash
pip install package-name
pip freeze > requirements.txt  # Update requirements
```

## 💡 Tips

### VS Code
- Use `Ctrl+Shift+P` (Windows/Linux) or `Cmd+Shift+P` (macOS) to open the command palette
- Select Python interpreter: Search for "Python: Select Interpreter"
- Run cells: Click the play button or use `Shift+Enter`

### Google Colab
- All dependencies are automatically installed
- Free GPU/TPU access available
- Changes are saved to Google Drive
- Can mount Google Drive for data access

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Submit a pull request

## 📝 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 🆘 Troubleshooting

### Virtual Environment Issues
If you have trouble activating the virtual environment:
- **Windows**: Make sure you run PowerShell as administrator
- **macOS/Linux**: Check file permissions with `ls -la venv/bin/activate`

### Package Installation Issues
If pip install fails:
```bash
pip install --upgrade pip
pip install -r requirements.txt --no-cache-dir
```

### Jupyter Kernel Not Found
If Jupyter can't find the Python kernel:
```bash
python -m ipykernel install --user --name=venv
```

## 📧 Contact

For questions or issues, please open an issue on GitHub.