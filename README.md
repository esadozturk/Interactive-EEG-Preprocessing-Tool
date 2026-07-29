# Interactive-EEG-Preprocessing-Tool
* A step-by-step MATLAB interface for EEG data preprocessing built on FieldTrip toolbox.
## Prerequisites
* **MATLAB**
* **FieldTrip Toolbox:** Download it from [FieldTrip website](https://www.fieldtriptoolbox.org/)
## Installation
**Option 1: App Installer (Recommended)**
1. Download the `.mlappinstall` file.
2. Double-click the file in MATLAB to install it directly into your **Apps** tab.
   
**Option 2: Source Code**
1. Clone or download this repository.
2. Ensure FieldTrip is added to your MATLAB path.
3. Open and run `EEGPreprocessingTool.mlapp` in MATLAB app designer.

## The Pipeline
* **10-step Sequential Pipeline:**
0. Load Data
1. Resample Data
2. Apply Filters
3. Drop Bad Channels
4. Re-reference Data
5. Epoch Data
6. Remove Bad Epochs
7. Apply ICA
8. Interpolate Bad Channels
9. Apply Artifact Rejection
## Key Features
* Preprocessed data can be saved at the end.
* Step-by-step workflow is used, active step is highlighted in order to prevent out-of-order execution.
* For the data with triggers, event types and values are automatically extracted and listed in the UI.
* Electrode files in FieldTrip folder are automatically extracted and listed in the UI.
## Developer Notes
* The tool is tested with `.vhdr`, `.eeg` and `.set` files.
* Functions are named with the corresponding step number at the end (e.g. load_data **__0_**).
* FieldTrip function `ft_rejectvisual` is used for dropping bad channels, removing bad epochs and applying artifact rejection.

## Acknowledgements
* In this tool, the [FieldTrip toolbox](https://www.fieldtriptoolbox.org/) is used. If you use this tool, please ensure you cite the main FieldTrip reference paper.
