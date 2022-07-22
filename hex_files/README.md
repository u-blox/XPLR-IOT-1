# XPLR-IOT-1 hex files

The hex files supplied in this folder can be used with [Nordic Semiconductor nRF Connect for Desktop, programmer utility](https://www.nordicsemi.com/Products/Development-tools/nrf-connect-for-desktop/). A [SEGGER J-Link](https://www.segger.com/downloads/jlink/) is also required to program the device with these hex files.

It is assumed the developer is familiar with these tools.

* 'SensorAggregation_v0.3_MergedCores.hex' contains only the Sensor Aggregation firmware, without the bootloader.
* 'SensorAggregation_v0.3_and_Bootloader_MergedCores.hex' contains only the Sensor Aggregation firmware and the bootloader. Bootloader allows the firmware update of the device via Serial UART interface.

> **NOTE:** Some early units have a misalignment between the SWD connector, J11, and the end panel. If a misalignment is observed, open the case, and move the end-panel so the opening is centered around J11 prior to connecting an SWD cable.

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
