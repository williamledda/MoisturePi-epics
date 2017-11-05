TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = moisturepi-epics
# moisturepi-epics.dbd will be created and installed
DBD += moisturepi-epics.dbd

# moisturepi-epics.dbd will be made up from these files:
moisturepi-epics_DBD += base.dbd

# Include dbd files from all support applications:
moisturepi-epics_DBD += stream.dbd
moisturepi-epics_DBD += drvAsynIPPort.dbd

# Add all the support libraries needed by this IOC
moisturepi-epics_LIBS += stream asyn

# moisturepi-epics_registerRecordDeviceDriver.cpp derives from moisturepi-epics.dbd
moisturepi-epics_SRCS += moisturepi-epics_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
moisturepi-epics_SRCS_DEFAULT += moisturepi-epicsMain.cpp
moisturepi-epics_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#moisturepi-epics_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
moisturepi-epics_LIBS += $(EPICS_BASE_IOC_LIBS)

#DB_INSTALLS += ../Db/moisturepi.proto
#DB_INSTALLS += $(TOP)/moisturepi-epicsApp/Db/moisturepi.proto

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

