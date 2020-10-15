# PUSH 2 PACS
Sharing radiation dose information onto PACS

![alt text][logo]

[logo]: https://github.com/rsavjanimdphd/push2pacs/blob/main/images/push2PACS.jpg "PUSH 2 PACS"

This repository shows how to use existing open source tools to:


1. Convert DICOM-RT RTDose files into standard DICOM files (plastimatch)
2. Push DICOM images onto a DICOM Server (e.g., PACS) (DCMTK)
3. Visualize volumentric data and overlays (3D Slicer)
4. Burn RT Dose data onto underlying anatomical scans (3D Slicer)


This approach can be tailored by radiation oncology departments to share radiation dose maps onto PACS. 

For departments using [MIM](https://www.mimsoftware.com/solutions/radiationoncology), please see our [MIM README](https://github.com/rsavjanimdphd/push2pacs/blob/main/MIM_README.pdf) to configure MIM to push dose maps to PACS directly. 

# IT Requirements
In order to push data onto PACS, you will need to work with you hospital IT team to grant permissions for your DICOM server to push data onto PACS. This typically requires knowing the following information from both your server and the PACS server:

1. Static IP Address
2. AE Title
3. Port #

# Software Requirements
Please see our [requirements.txt](https://github.com/rsavjanimdphd/push2pacs/blob/main/requirements.txt) file for a list of the required software with links to download them. 


Ricky Savjani, 
Department of Radiation Oncology,
UCLA

[rickysavjani.com](http://rickysavjani.com/)
