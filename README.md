### PUSH 2 PACS
Sharing radiation dose information onto PACS

![alt text][logo]

[logo]: https://github.com/rsavjanimdphd/push2pacs/blob/main/images/push2PACS.jpg "PUSH 2 PACS"

This repository shows how to use existing open source tools to:

**Interact with data using Slicer** 
1. Use [3D Slicer](https://www.slicer.org/) via a [Jupyter notebook](https://github.com/rsavjanimdphd/push2pacs/blob/main/push2pacs.ipynb) to interrogate data and plot interactively 

![alt text][disp]

2. Load RTDose RTSS Dicom files and underlying anatomical files
3. Create Isodose Lines

![alt text][dose]

4. Convert DICOM-RT RTDose files into standard DICOM files (plastimatch)

![alt text][code]

[code]:https://github.com/rsavjanimdphd/push2pacs/blob/main/images/code.png
[dose]:https://github.com/rsavjanimdphd/push2pacs/blob/main/images/isodose.png
[disp]:https://github.com/rsavjanimdphd/push2pacs/blob/main/images/4view.png

**Push DICOM images onto PACS**  
5. Push DICOM images onto a DICOM Server (e.g., PACS) with DCMTK [commands](https://github.com/rsavjanimdphd/push2pacs/blob/main/src/push2pacs.sh)

![alt text][pacs]

[pacs]:https://github.com/rsavjanimdphd/push2pacs/blob/main/images/pacs.png

This approach can be tailored by radiation oncology departments to share radiation dose maps onto PACS. 

# MIM
For departments using [MIM](https://www.mimsoftware.com/solutions/radiationoncology), please see our [MIM README](https://github.com/rsavjanimdphd/push2pacs/blob/main/MIM_README.pdf) to configure MIM to push dose maps to PACS directly. 

![alt text][mim]

[mim]:https://github.com/rsavjanimdphd/push2pacs/blob/main/images/mim.png

# IT Requirements
In order to push data onto PACS, you will need to work with you hospital IT team to grant permissions for your DICOM server to push data onto PACS. This typically requires knowing the following information from both your server and the PACS server:

1. Static IP Address
2. AE Title
3. Port #

# Software Requirements
Please see our [requirements.txt](https://github.com/rsavjanimdphd/push2pacs/blob/main/requirements.txt) file for a list of the required software with links to download them. 

# Contact
Ricky Savjani, MD/PhD  
Department of Radiation Oncology  
UCLA  
  
[rickysavjani.com](http://rickysavjani.com/)
