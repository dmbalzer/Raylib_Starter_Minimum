CC = gcc
SRC = main.c
BIN = main.exe
OBJ = main.o
STD = c99
CFLAGS += -Wno-missing-braces
CFLAGS += -Wall
CFLAGS += -O1
INC_LOC = -I./include
LIB_LOC = -L./lib
LIBS += -lraylib
LIBS += -lopengl32
LIBS += -lgdi32
LIBS += -lwinmm
LIBS += -luser32
LIBS += -lkernel32

build:
	$(CC) $(SRC) -o $(BIN) $(CFLAGS) $(INC_LOC) $(LIB_LOC) $(LIBS)

build_obj:
	$(CC) -c $(SRC) $(CFLAGS) $(INC_LOC)

link:
	$(CC) $(OBJ) $(LIB_LOC) $(LIBS) -o $(BIN)

run:
	$(BIN)
clean:
	rm *.o *.exe
