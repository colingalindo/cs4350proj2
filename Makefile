PROJECT_DIR := $(dir $(realpath $(lastword $(MAKEFILE_LIST))))
DATA        := $(PROJECT_DIR)/data
BIN         := $(PROJECT_DIR)/bin
BUILD       := $(PROJECT_DIR)/build
INCLUDE     := $(PROJECT_DIR)/include
SRC         := $(PROJECT_DIR)/src

CC			:= gcc

all: shell

clean:
	rm -f $(BUILD)/*.o $(BIN)/shell $(DATA)/*.data

test: $(BIN)/shell
		$(BIN)/shell

shell: $(BUILD)/shell

$(BIN)/shell:
