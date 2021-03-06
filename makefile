#--- conf ----
SRC_DIR     = ./src
INC_DIR     = ./include
SRC         = $(wildcard $(SRC_DIR)/*cxx)
OBJ         = $(patsubst %.cxx,%.o,$(SRC))
TARGET      = $(SRC_DIR)/HelloWorld

CPPFLAGS    = -I$(INC_DIR)
CXXFLAGS    = -std=c++0x
#COMPILE.cc  = $(CXX) $(CXXFLAGS) $(CPPFLAGS) $(TARGET_ARCH) -c
LINK.o      = $(CXX) $(LDFLAGS) $(TARGET_ARCH)

#--- tagrget ----
.PHONY: all

all: $(TARGET)

$(TARGET): $(OBJ)
	$(LINK.o) $< $(OUTPUT_OPTION)

%.o: %.cxx
	$(COMPILE.cc) $< $(OUTPUT_OPTION)

clean:
	$(RM) $(OBJ) $(TARGET)

test:
	$(TARGET)
