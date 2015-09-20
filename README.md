# About
This is a fork of the 'Previous' emulator.


## Previous, an emulator

Previous is a NeXT computer hardware emulator. It aims to emulate a Next Cube or a Next Station with all its peripherals.

The emulator is not complete yet.

Current status

Processor:
- 68030 and 68040 CPUs work, including MMU for both, FPU is platform sensitive and has minor incompleteness

Memory:
- All memory + Mono video memory is handled + experimental color display

User input:
- Keyboard works, but partially bad key assignment
- Mouse works

DMA:
- works for SCSI, MO, Memory to Memory and partially for Ethernet, with dummy for Sound and SCC |

SCSI:
- Works |

SCSI peripherals:
- CDROM and Hdd emulated

Cube MO drive:
- works, with error correction

Timers:

- Real time clock + 2 internal timers handled (known issues for event counter)

Previous is derived from the Hatari emulator and sources that are partly based on the amiga emulator UAE. Some Previous source code files are now back in Hatari's source code for 680[34]0 MMU correctness.

Previous may be compiled on linux, MacosX and win32 (and probably other target OS).
