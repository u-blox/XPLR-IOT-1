# XPLR-IOT-1 bootloader update process

The application on NORA-B1 can be updated through the MCUboot bootloader over UART. Each new image is uploaded to the XPLR-IOT-1 QSPI flash prior to writing it to the NORA-B1 flash. 

1. Download the new application core and network core firmware images and the newtmgr utility from the main XPLR-IOT-1 main repository
    * If there are no updates to the network core, there will only be an application core file.
2. Start bootloader mode by pressing and holding button 1 while resetting or power-cycling XPLR IOT-1.
3. Determine the COM port number for NORA-B1 on Interface 0 of the USB-UART interface. This example assumes the example COM port enumeration of interface 0 shown at USB connection.
4. Open a Windows command prompt.
5. Navigate to the folder containing the firmware images.
6. Update the network core (optional, depending on the requirements of the update)

    `newtmgr.exe –-conntype=serial –-connstring=”COM8,baud=115200” image upload  net_core_update.bin`

    * Replace `net_core_update.bin` with the actual filename of the downloaded network core update. Replace `COM8` with the actual COM port on interface 0.

7. Update the application core

    `newtmgr.exe –-conntype=serial –-connstring=”COM8,baud=115200” image upload  app_core_update.bin`

    * Replace `app_core_update.bin` with the actual filename of the downloaded application core update. Replace `COM8` with the actual COM port on interface 0.
8. Reset XPLR-IOT1 (reset button, power switch, or command line: `nrfjprog –-reset`)

⚠	If updating the network core, both the network and application cores must be updated during the same bootloader session. If updating only the application core, the network core update can be bypassed.

The update sequence listed here assumes the availability of pre-configured binary files. Custom application code may also be updated through the bootloader. Additional details may be found in the XPLR-IOT-1 software repository for creation of custom binary files for use with the bootloader.

## Disclaimer
Copyright &copy; u-blox 

u-blox reserves all rights in this deliverable (documentation, software, etc.,
hereafter “Deliverable”). 

u-blox grants you the right to use, copy, modify and distribute the
Deliverable provided hereunder for any purpose without fee.

THIS DELIVERABLE IS BEING PROVIDED "AS IS", WITHOUT ANY EXPRESS OR IMPLIED
WARRANTY. IN PARTICULAR, NEITHER THE AUTHOR NOR U-BLOX MAKES ANY
REPRESENTATION OR WARRANTY OF ANY KIND CONCERNING THE MERCHANTABILITY OF THIS
DELIVERABLE OR ITS FITNESS FOR ANY PARTICULAR PURPOSE.

In case you provide us a feedback or make a contribution in the form of a
further development of the Deliverable (“Contribution”), u-blox will have the
same rights as granted to you, namely to use, copy, modify and distribute the
Contribution provided to us for any purpose without fee.
