NASM=nasm
DEBUGF=-g
TARGET=switch
RUN=run
DEBUG=gdb_debug
BUILD=build
SRC=src

linux:
	mkdir $(BUILD)
	$(NASM) -f elf64 $(SRC)/$(TARGET).asm -o $(BUILD)/$(TARGET).o && ld -m elf_x86_64 -o $(RUN) $(BUILD)/$(TARGET).o

windows:
	mkdir $(BUILD)
	$(NASM) -f win64 $(SRC)/$(TARGET).asm -o $(BUILD)/$(TARGET).o && ld -m i386pep -o $(RUN).exe $(BUILD)/$(TARGET).o

debug:
	mkdir -p $(BUILD)
	$(NASM) $(DEBUGF) -f elf $(SRC)/$(DEBUG).asm -o $(BUILD)/$(DEGUB).o && gcc -m32 -o $(RUN) $(BUILD)/$(DEGUB).o

clean:
	rm -rf $(BUILD)
	rm -f $(RUN)
