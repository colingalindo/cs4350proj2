PROJECT_DIR := $(dir $(realpath $(lastword $(MAKEFILE_LIST))))
BIN         := $(PROJECT_DIR)/bin
SRC         := $(PROJECT_DIR)/src

CC			:= gcc

myls: $(SRC)/myls.c
	$(CC) $(SRC)/myls.c -o $(BIN)/myls

mycat: $(SRC)/mycat.c
	$(CC) $(SRC)/mycat.c -o $(BIN)/mycat

mycp: $(SRC)/mycp.c
	$(CC) $(SRC)/mycp.c -o $(BIN)/mycp

clean:
	rm -f $(BUILD)/*.o $(BIN)/shell $(BIN)/myls $(BIN)/mycat $(BIN)/mycp 


