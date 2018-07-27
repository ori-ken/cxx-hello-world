#--- conf ----

SRC_DIR = ./src
OBJ     = $(SRC_DIR)/main.o
TARGET  = $(SRC_DIR)/HelloWorld



#--- tagrget ----
.PHONY: all

all: $(TARGET)

$(TARGET): $(OBJ)
	$(LINK.cc) $< $(OUTPUT_OPTION)

%.o: %.cxx
	$(COMPILE.cc) $< $(OUTPUT_OPTION)

clean:
	rm -rf $(OBJ) $(TARGET)
