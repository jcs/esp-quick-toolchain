#!/bin/sh

# Remove ROM soft-fp
native_ext=$1
ext=$2
for i in _addsubdf3.o _addsubsf3.o _divdf3.o _divdi3.o _divsi3.o _extendsfdf2.o _fixdfsi.o _fixunsdfsi.o _fixunssfsi.o _floatsidf.o _floatsisf.o _muldf3.o _muldi3.o _mulsf3.o _truncdfsf2.o _udivdi3.o _udivsi3.o _umoddi3.o _umodsi3.o _umulsidi3.o; do
	./xtensa-lx106-elf${native_ext}/bin/xtensa-lx106-elf-gcc-ar d ./xtensa-lx106-elf${ext}/lib/gcc/xtensa-lx106-elf/9.3.0/libgcc.a $i
done
