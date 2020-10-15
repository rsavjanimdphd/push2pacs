# push2pacs
Sharing radiation dose information onto PACS

![alt text][logo]

[logo]: https://github.com/rsavjanimdphd/push2pacs/blob/main/images/push2PACS.jpg "PUSH 2 PACS"

This repository shows how to use existing open source tools to do:

1. Convert DICOM-RT RTDose files into standard DICOM files (plastimatch)
2. Push DICOM images onto a DICOM Server (e.g., PACS) (DCMTK)
3. Visualize volumentric data and overlays (3D Slicer)
4. Burn RT Dose data onto underlying anatomical scans (3D Slicer)

This approach can be tailored by radiation oncology departments to share radiation dose maps onto PACS. 

For departments using MIM, please see our [MIM_README.pdf](https://github.com/rsavjanimdphd/push2pacs/blob/main/MIM_README.pdf) 
