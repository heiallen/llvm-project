# RUN: llvm-mc -triple=ve --show-encoding < %s \
# RUN:     | FileCheck %s --check-prefixes=CHECK-ENCODING,CHECK-INST
# RUN: llvm-mc -triple=ve -filetype=obj < %s | llvm-objdump -d - \
# RUN:     | FileCheck %s --check-prefixes=CHECK-INST

# CHECK-INST: cvt.d.s %s11, %s12
# CHECK-ENCODING: encoding: [0x00,0x00,0x00,0x00,0x00,0x8c,0x0b,0x0f]
cvt.d.s %s11, %s12

# CHECK-INST: cvt.d.s %s11, 63
# CHECK-ENCODING: encoding: [0x00,0x00,0x00,0x00,0x00,0x3f,0x0b,0x0f]
cvt.d.s %s11, 63

# CHECK-INST: cvt.d.s %s11, -64
# CHECK-ENCODING: encoding: [0x00,0x00,0x00,0x00,0x00,0x40,0x0b,0x0f]
cvt.d.s %s11, -64

# CHECK-INST: cvt.d.s %s11, -1
# CHECK-ENCODING: encoding: [0x00,0x00,0x00,0x00,0x00,0x7f,0x0b,0x0f]
cvt.d.s %s11, -1
