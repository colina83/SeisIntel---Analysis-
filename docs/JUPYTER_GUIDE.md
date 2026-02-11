# Jupyter Notebook Quick Start Guide

This guide will help you get started with Jupyter notebooks in the SeisIntel Analysis project.

## What is Jupyter?

Jupyter is an interactive computing environment that allows you to create and share documents containing:
- Live code that you can run interactively
- Visualizations and plots
- Narrative text with markdown
- Equations using LaTeX

## Getting Started

### 1. Installation

Make sure you've installed all dependencies:

```bash
pip install -r requirements.txt
```

### 2. Starting Jupyter

You can start Jupyter in two ways:

**Jupyter Lab (Recommended - Modern Interface)**
```bash
jupyter lab
```

**Jupyter Notebook (Classic Interface)**
```bash
jupyter notebook
```

Both commands will:
- Start a local server
- Open your default browser
- Display the file browser at http://localhost:8888

### 3. Creating a New Notebook

1. Navigate to the `notebooks` folder
2. Click "New" → "Python 3" (Classic) or "+" → "Notebook" (Lab)
3. Your new notebook will open

### 4. Using Notebooks

#### Cell Types
- **Code Cells**: Write and execute Python code
- **Markdown Cells**: Write formatted text, headings, lists, etc.

#### Keyboard Shortcuts

**Command Mode** (press `Esc` to enter):
- `A`: Insert cell above
- `B`: Insert cell below
- `D D`: Delete cell
- `M`: Convert to markdown cell
- `Y`: Convert to code cell
- `Shift + Enter`: Run cell and select below
- `Ctrl + Enter`: Run cell
- `Alt + Enter`: Run cell and insert below

**Edit Mode** (press `Enter` to enter):
- `Shift + Enter`: Run cell
- `Tab`: Code completion/indent
- `Shift + Tab`: Show documentation

#### Running Cells

1. Click in a cell to select it
2. Press `Shift + Enter` to run and move to next cell
3. Or click the "Run" button in the toolbar

## Working with Data

### Loading Data

```python
import pandas as pd

# From CSV
df = pd.read_csv('data/mydata.csv')

# From Excel
df = pd.read_excel('data/mydata.xlsx')

# From URL
df = pd.read_csv('https://example.com/data.csv')
```

### Basic Exploration

```python
# View first few rows
df.head()

# Get summary statistics
df.describe()

# Check data types and missing values
df.info()

# Count unique values
df['column_name'].value_counts()
```

### Visualization

```python
import matplotlib.pyplot as plt
import seaborn as sns

# Line plot
df['column'].plot(kind='line')
plt.show()

# Histogram
df['column'].hist(bins=20)
plt.show()

# Scatter plot
plt.scatter(df['x'], df['y'])
plt.show()

# Seaborn visualization
sns.boxplot(data=df, x='category', y='value')
plt.show()
```

## Tips and Best Practices

### 1. Organization
- Keep one notebook per analysis or topic
- Use clear, descriptive names
- Add markdown cells to explain your thinking
- Create sections with headings

### 2. Code Quality
- Import all libraries at the top
- Use meaningful variable names
- Comment complex code
- Break long operations into smaller cells

### 3. Reproducibility
- Set random seeds: `np.random.seed(42)`
- Document data sources
- Include package versions
- Save processed data

### 4. Saving Work
- Notebooks auto-save every few minutes
- Use File → Save or `Ctrl+S` to save manually
- Version control with Git (notebooks are JSON files)

### 5. Exporting
- File → Download as → HTML (for sharing)
- File → Download as → PDF (requires LaTeX)
- File → Download as → Python (.py file)

## VS Code Integration

If you're using VS Code:

1. Install recommended extensions (prompted on first open)
2. Open any `.ipynb` file
3. Select the Python interpreter (bottom right)
4. Run cells with the play button or `Shift+Enter`
5. View outputs inline

**VS Code Advantages:**
- Better Git integration
- IntelliSense and code completion
- Debugging support
- Side-by-side editing

## Google Colab

To use notebooks in Google Colab:

1. Go to https://colab.research.google.com
2. File → Open notebook → GitHub
3. Enter: `colina83/SeisIntel---Analysis-`
4. Select your notebook
5. Run cells normally

**Colab Advantages:**
- Free GPU/TPU access
- No local installation needed
- Google Drive integration
- Easy sharing

**Installing Requirements in Colab:**
```python
!pip install -r https://raw.githubusercontent.com/colina83/SeisIntel---Analysis-/main/requirements.txt
```

## Troubleshooting

### Kernel Issues

**Problem**: Kernel not responding or "kernel died"
**Solution**: 
```
Kernel → Restart Kernel
```

**Problem**: Wrong Python version
**Solution**: Check kernel selection in top-right corner

### Import Errors

**Problem**: ModuleNotFoundError
**Solution**: 
```bash
pip install <package-name>
# or restart Jupyter after installing
```

### Memory Issues

**Problem**: Notebook becomes slow or unresponsive
**Solution**:
- Restart kernel: `Kernel → Restart`
- Clear outputs: `Cell → All Output → Clear`
- Break large operations into smaller chunks
- Delete large variables: `del large_dataframe`

### Port Already in Use

**Problem**: Can't start Jupyter (port 8888 in use)
**Solution**:
```bash
jupyter lab --port 8889
```

## Additional Resources

### Documentation
- [Jupyter Official Docs](https://jupyter.org/documentation)
- [Pandas Documentation](https://pandas.pydata.org/docs/)
- [Matplotlib Gallery](https://matplotlib.org/stable/gallery/)
- [Seaborn Tutorial](https://seaborn.pydata.org/tutorial.html)

### Learning Resources
- [Jupyter Notebook Tutorial](https://www.dataquest.io/blog/jupyter-notebook-tutorial/)
- [Python Data Science Handbook](https://jakevdp.github.io/PythonDataScienceHandbook/)
- [Kaggle Learn](https://www.kaggle.com/learn)

## Getting Help

- Check the sample notebook: `notebooks/getting_started.ipynb`
- Read the main README.md for setup issues
- Open an issue on GitHub
- Check Stack Overflow with tag `[jupyter-notebook]`

Happy analyzing! 🚀
