### Bash script using DCMTK to push images to PACS

## Prequisites
# 1) DCMTK: https://dicom.offis.de/dcmtk.php.en
# 2) Configured PACS DICOM server to accept push (Discuss with hospital IT)
# 3) Obtain AET, IP, and PORT of PACS server and local DICOM servers
# 4) Have Dicom images to push to PACS (see first Slicer Jupyter notebook)

## First define the servers 
# PACS Server
AET=PACS_AE
PORT=5555
IP=1.2.3.4

# LOCAL Server
AET_LOCAL=LOCAL AE
PORT_LOCAL=11111
IP_LOCAL=1.1.1.1

# define directories and files
curDir=`pwd`

# send the output dicom directories (will recursively (+r) scan directories (+sd) for anything with *.dcm ending 
dcmsend -v +sd +r $AET $IP:$PORT ../dicom-output *.dcm
	
