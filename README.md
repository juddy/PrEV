# About

Previous is a Next computer hardware emulator. It aims to emulate a Next Cube or a Next Station with all its peripheral.

The emulator is not complete yet.

Current status
| ----- |
| Processor |  68030 and 68040 CPUs work, including MMU for both, FPU is platform sensitive and has minor incompleteness  |
| Memory |  All memory + Mono video memory is handled + experimental color display |
| User input |  Keyboard works, but partially bad key assignment Mouse works, but problems with losing focus |
| DMA |  works for SCSI, MO, Memory to Memory and partially for Ethernet, with dummy for Sound and SCC |
| SCSI |  Works |
| SCSI peripherals |  CDROM and Hdd emulated |
| Cube MO drive |  works, including real Reed Solomon ECC |
| Timers |  Real time clock + 2 internal timers handled (known issues for event counter) |

 

Previous is derived from the [Hatari emulator][1] sources that are partly based on the amiga emulator UAE. Some Previous source code files are now back in Hatari's source code for 680[34]0 MMU correctness.

Previous may be compiled on linux, MacosX and win32 (and probably other target OS).

The Previous Website was hosted in an atari (case), a small via C3 motherboard in an atari STF case with functional keyboard (original keyboard converted to full HID usb keyboard with a teensy mini board).

[1]: http://hatari.tuxfamily.org/
  
