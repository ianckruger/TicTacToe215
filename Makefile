CC=g++
CFLAGS=--std=c++11
EXE=tictactoe

all: obj/main.o obj/board.o
	$(CC) $(CFLAGS) -o $(EXE) obj/*.o

obj/main.o: obj
	$(CC) $(CFLAGS) -c src/main.cpp -o obj/main.o

obj/board.o: obj
	$(CC) $(CFLAGS) -c src/board.cpp -o obj/board.o


obj:
	mkdir -p obj

clean:
	rm -rf $(EXE) obj




