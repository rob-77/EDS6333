# EDS6333 
EDSAI-01
# Engineering Data Science and AI
## Probability and Statistics for Engineers

This project analyzes engineering data using Python and R. It demonstrates reproducible workflows using conda environments, Jupyter notebooks, and version control with GitHub Desktop. Students learn how to load data, perform analysis, and generate visualizations.
project-name/

### Project Structure

│

├── data/          # Raw data files (CSV, Excel, text)

├── docs/          # Reference documents (Excel charts, PDFs)

├── images/        # Exported plots and figures

├── notebooks/     # Jupyter or R notebooks

├── src/           # Python and R scripts

├── environment.yml

└── README.md

### Code Environment Setup
conda env create -f environment.yml
conda activate project-env

### Install required R packages (if using R)
install.packages(c("readxl", "languageserver", "jsonlite", "rlang"))

### How to run the code
Run Python scripts
python src/scriptname.py
Run R scripts
Open src/R/script name.R
Run notebooks
Open any .ipunb file in VS Code or JupyterLab

### Examples

Example (Python)


Example(R):

      # Loading a text file located in data folder
      # Load a text file located in ../data/
      df <- read.table("./data/school.txt", header = TRUE)
      
      # Show the first few rows
      head(df)
      
      # If your file is CSV instead of TXT:
      # df <- read.csv("../data/mydata.csv")
      
      # Basic summary
      summary(df)


### Data Sources section
school.txt Data file containing student information on the following columns

    id gender ethnic soc_eco schooltype programtype read write math science
