# WebPython - DNA Restriction Site Finder

A bioinformatics web application built with Python Bottle framework for DNA sequence analysis and restriction enzyme site identification.

## 🧬 Application Overview

This project contains a DNA restriction site finder application:

1. **DNA Restriction Site Finder** (`app.py`) - Analyzes DNA sequences to find restriction enzyme cut sites


## 🚀 Features

### DNA Restriction Site Finder
- Analyzes DNA sequences using all available restriction enzymes
- Identifies cut positions for each enzyme
- Shows enzyme properties (blunt/sticky ends, site length, cut count)
- Lists enzymes that don't cut the sequence
- Interactive web interface with form input

## 📋 Prerequisites

- Python 3.6 or higher
- Required Python packages:
  - `bottle` - Web framework
  - `biopython` - Bioinformatics library

## 🛠️ Installation

1. Clone or download this repository
2. Install required dependencies:

```bash
pip install bottle biopython
```

## 🏃‍♂️ Running the Application

### DNA Restriction Site Finder
```bash
python app.py
```
Access at: `http://localhost:8080`


## 📁 Project Structure

```
WebPython/
├── app.py                          # DNA restriction site finder
└── views/                         # HTML templates
    ├── iindex.tpl                 # DNA input form
    └── results.tpl                # DNA analysis results
```

## 🔬 Usage Examples

### DNA Restriction Site Analysis
1. Navigate to `http://localhost:8080`
2. Enter a DNA sequence (e.g., "ATCGATCGATCG")
3. Click "Submit" to see restriction sites and enzyme information

## 🧪 Technical Details

### DNA Analysis Features
- Uses BioPython's Restriction module
- Analyzes all available restriction enzymes
- Provides detailed cut site information
- Shows enzyme characteristics (blunt vs sticky ends)

## 🎨 Interface

- **DNA App**: Clean, modern interface with centered layout
- **Results**: Tabular display with hover effects and professional styling

## 🔧 Configuration

All applications run on localhost with the following default ports:
- DNA Restriction Finder: Port 8080

## 📝 Notes

- Ensure DNA sequences contain only valid nucleotides (A, T, C, G)
- The application is designed for educational and research purposes
- All templates use Bottle's built-in templating system

## 🤝 Contributing

Feel free to submit issues, feature requests, or pull requests to improve this bioinformatics tool.

## 📄 License

This project is open source and available under the MIT License.

---

**Note**: This is a bioinformatics web application for educational and research purposes. Always validate your results with established bioinformatics tools for critical research applications.
