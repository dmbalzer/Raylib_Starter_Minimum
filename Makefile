build:
	gcc main.c -o main  -O1 -Wall -std=c99 -Wno-missing-braces -I./include -L./lib -lraylib -lopengl32 -lgdi32 -lwinmm -luser32 -lkernel32
run:
	main.exe
