# qPCR analysis 

## Overview
This is a repository for qPCR data from Iris Mollhoff's thesis research

## Layout

The repository is split into seven main directories, many of which have subdirectories. This structure has been designed to be easily navigable by humans and computers alike, allowing for rapid location of specific files and instructions. Within each directory is a `README.md` file which summarizes the purpose of that directory as well as some examples where necessary. This structure may not be perfect for your intended us and may need to be modified. Each section is briefly described below. 

### **`experiments`** 
Where all of the experimental information lives, including any *executed* code. lives. This includes pipelines, scripts, and figure files. 
 * **`01_processing`**: Any code used to *transform* the data into another type should live here. This can include everything from parsing of text data, image segmentation/filtering, or simulations.
 * **`02_analysis`**: Any code to to *draw conclusions* from an experiment or data set. This may include regression, dimensionality reduction, or calculation of various quantities.
 * **`03_figures`**: Any code used to generate figures for your finished work, presentations, or for any other use.

### **`data`** 
All raw data collected from experiments

### **`miscellaneous`** (unfinished folder)
Files that may not be code, but are important for reproducibility of your findings.
* **`protocols`**: A well annotated and general description of your experiments. These protocols should be descriptive enough for someone to follow your experiments independently 
* **`materials`**: Information regarding the materials used in your experiments or data generation. This could include manufacturer information, records of purity, and/or lot and catalog numbers.
* **`software details`**: Information about your computational environment that are necessary for others to execute your code. This includes details about your operating system, software version and required packages.

### **`tests`** (unfinished folder)
All test suites for your code. *Any custom code you've written should be thoroughly and adequately tested to make sure you know how it is working.*

### Other Files

1. **`LICENSE`**: A legal protection of this work.

2. **`README.md`**: A descriptive yet succinct description of your research project and information regarding the file structure

3. **`.gitignore`**: A file that dictates which file-types and folders are not uploaded to the github repository.

4. **`tree.txt`**: A text file that shows the folder structure.

# License Information

<p xmlns:dct="http://purl.org/dc/terms/" xmlns:vcard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <a rel="license"
     href="http://creativecommons.org/publicdomain/zero/1.0/">
    <img src="http://i.creativecommons.org/p/zero/1.0/88x31.png" style="border-style: none;" alt="CC0" />
  </a>
  <br />
  To the extent possible under law,
  <a rel="dct:publisher"
     href="github.com/gchure/reproducible_research">
    <span property="dct:title">Griffin Chure</span></a>
  has waived all copyright and related or neighboring rights to
  <span property="dct:title">A template for using git as a platform for reproducible scientific research</span>.
This work is published from:
<span property="vcard:Country" datatype="dct:ISO3166"
      content="US" about="github.com/gchure/reproducible_research">
  United States</span>.
</p>