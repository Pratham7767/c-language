machinecode : m.s m.ld 
	riscv64-unknown-elf-gcc -O0 -ggdb -nostdlib -march=rv32i -mabi=ilp32 -Wl,-Tm.ld m.s -o main.elf
	riscv64-unknown-elf-objcopy -O binary main.elf main.bin 

printbinary: main.bin 
	xxd -e -c 4 -g 4 main.bin

startquemu: main.elf 
	qemu-system-riscv32 -S -M virt -nographic -bios none -kernel main.elf -gdb tcp::1234

connectgdb: main.elf 
	gdb-multiarch main.elf -ex "target remote localhost:1234" -ex "break_start" -ex "continue" -q 

findthecutest: 
	echo "It's the one looking at the screen Baby ❤️\n I love you from Earth🌏 to Moon🌜 and back, \n you'r the best thing that has ever happned to me😳"