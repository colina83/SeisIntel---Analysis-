#!/bin/bash
# Setup script for SeisIntel Analysis project

echo "🚀 Setting up SeisIntel Analysis environment..."

# Check if Python is installed and verify version
if ! command -v python3 &> /dev/null
then
    echo "❌ Python 3 is not installed. Please install Python 3.8 or higher."
    exit 1
fi

PYTHON_VERSION=$(python3 -c 'import sys; print(".".join(map(str, sys.version_info[:2])))')
REQUIRED_VERSION="3.8"

echo "✓ Python found: $(python3 --version)"

# Simple version check (works for versions like 3.8, 3.9, 3.10, etc.)
if [ "$(printf '%s\n' "$REQUIRED_VERSION" "$PYTHON_VERSION" | sort -V | head -n1)" != "$REQUIRED_VERSION" ]; then
    echo "❌ Python version $PYTHON_VERSION is below the required version $REQUIRED_VERSION"
    exit 1
fi

echo "✓ Python version $PYTHON_VERSION meets the requirement (>= $REQUIRED_VERSION)"

# Create virtual environment
echo "📦 Creating virtual environment..."
python3 -m venv venv

# Activate virtual environment
echo "🔧 Activating virtual environment..."
if [[ "$OSTYPE" == "msys" || "$OSTYPE" == "win32" ]]; then
    source venv/Scripts/activate
else
    source venv/bin/activate
fi

# Upgrade pip
echo "⬆️  Upgrading pip..."
pip install --upgrade pip

# Install dependencies
echo "📚 Installing dependencies..."
pip install -r requirements.txt

# Install Jupyter kernel
echo "🔌 Installing Jupyter kernel..."
python -m ipykernel install --user --name=seisintel-analysis --display-name="Python (SeisIntel Analysis)"

echo ""
echo "✅ Setup complete!"
echo ""
echo "To activate the environment, run:"
echo "  source venv/bin/activate  # macOS/Linux"
echo "  venv\\Scripts\\activate    # Windows"
echo ""
echo "To start Jupyter Lab, run:"
echo "  jupyter lab"
echo ""
echo "To start Jupyter Notebook, run:"
echo "  jupyter notebook"
echo ""
