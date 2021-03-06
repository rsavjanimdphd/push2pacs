### PUSH 2 PACS

Sharing radiation dose information onto PACS

![alt text][logo]

[logo]: https://github.com/rsavjanimdphd/push2pacs/blob/main/images/push2PACS.jpg "PUSH 2 PACS"

# About  
The idea of this project is to help radiation oncology departments develop a framework for sharing a patient's radiation dose distribution map onto the hospital PACS. This enables central access for the radiation dose map so that all providers may view and reference it. Radiologists can also more readily incorporate the volumetric radiation data into their differential diagnoses. 

# Citation

Our paper was published in RSNA's journal Radiology: Imaging Cancer.

Savjani RR, Salamon N, Deng J, Ma TM, Tenn S, Agazaryan N, Hegde J, Kaprealian T. (2021). A Framework for Sharing Radiation Dose Distribution Maps in the Electronic Medical Record for Improving Multidisciplinary Patient Management. [Radiology: Imaging Cancer](https://pubs.rsna.org/doi/10.1148/rycan.2021200075)

# Framework  
This repository shows how to use existing open source tools to:

**Interact with data using Slicer** 
1. Use [3D Slicer](https://www.slicer.org/) via a [Jupyter notebook](https://github.com/rsavjanimdphd/push2pacs/blob/main/push2pacs.ipynb) to interrogate data and plot interactively 

![alt text][disp]

2. Load RTDose RTSS Dicom files and underlying anatomical files
3. Create Isodose Lines

![alt text][dose]

4. Convert DICOM-RT RTDose files into standard DICOM files (plastimatch)

**Export CT and RTDose to standard DICOM volumes**
```
  outputFolder = "dicom-output/"
  ​
  # Create patient and study and put the volume under the study
  shNode = slicer.vtkMRMLSubjectHierarchyNode.GetSubjectHierarchyNode(slicer.mrmlScene)
  ctShItemID = shNode.GetItemByDataNode(ct)
  ​
  import DICOMScalarVolumePlugin
  exporter = DICOMScalarVolumePlugin.DICOMScalarVolumePluginClass()
  ​
  # export ct to dicom
  exportables = exporter.examineForExport(ctShItemID)
  for exp in exportables:
    exp.directory = outputFolder
  exporter.export(exportables)
  ​
  # resample rtdose to be in same space as ct
  parameters = {'inputVolume':rtdose, 'referenceVolume':ct, 'outputVolume':rtdose, 
                            'interpolationMode':'Linear'}
  cliNode = slicer.cli.run(slicer.modules.brainsresample, None, parameters)
  ​
  # export rtdose to dicom
  rtdoseShItemID = shNode.GetItemByDataNode(rtdose)
  exportables = exporter.examineForExport(rtdoseShItemID)
  for exp in exportables:
    exp.directory = outputFolder
  exporter.export(exportables)
 ```

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

Mandatory:  
  
DCMTK  
DICOM Toolkit for query/retrieve and sending data to DICOM servers (e.g., PACS)  
https://dicom.offis.de/dcmtk.php.en  

3D Slicer  
Ppen source package for visualizing and analyzing volumetric medical imaging data  
https://www.slicer.org/  

SlicerRT  
3D Slicer extension for handling DICOM-RT data  
http://slicerrt.github.io/  

SlicerJupyter  
3D Slicer extension for using Jupyter notebooks  
https://github.com/Slicer/SlicerJupyter  

--------------------------------------------------------------------------------  

Optional (but useful):  
  
Plastimatch  
Open source package useful for converting DICOM-RT to other formats  
https://plastimatch.org/plastimatch.html  
  
CERR  
MATLAB computational environment for Radiological Research  
https://github.com/cerr/CERR

DicomRTTool  
Simple Python Module for Conversions Between DICOM Images and Radiation Therapy Structures, Masks, and Prediction Arrays [[paper]](https://www.sciencedirect.com/science/article/pii/S1879850021000485?dgcid=author)
https://github.com/brianmanderson/Dicom_RT_and_Images_to_Mask
  
# Contact
Ricky Savjani, MD/PhD  
Department of Radiation Oncology  
UCLA  
  
[rickysavjani.com](http://rickysavjani.com/)
