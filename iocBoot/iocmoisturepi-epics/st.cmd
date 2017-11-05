#!../../bin/linux-arm/moisturepi-epics

## You may have to change moisturepi-epics to something else
## everywhere it appears in this file

< envPaths
epicsEnvSet "STREAM_PROTOCOL_PATH" "$(TOP)/proto"

cd "${TOP}"

## Register all support components
dbLoadDatabase "dbd/moisturepi-epics.dbd"
moisturepi_epics_registerRecordDeviceDriver pdbbase

#Setting up ASYN Ports
drvAsynIPPortConfigure("H0", "localhost:6000 UDP", 0, 0, 0)

## Load record instances
dbLoadRecords("db/moisturepi.db")

cd "${TOP}/iocBoot/${IOC}"
iocInit

## Start any sequence programs
#seq sncxxx,"user=piHost"
