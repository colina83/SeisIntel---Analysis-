#!/bin/bash
# Setup script for SeisIntel Analysis project

echo "🚀 Setting up SeisIntel Analysis environment..."

# Check if Python is installed
if ! command -v python3 &> /dev/null
then
    echo "❌ Python 3 is not installed. Please install Python 3.8 or higher."
    exit 1
fi

echo "✓ Python found: $(python3 --version)"

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
