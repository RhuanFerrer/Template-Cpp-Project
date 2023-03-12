# Nome do programa final
TARGET = run_project

# Compilador a ser utilizado
CC = g++

# Flags de compilação
CFLAGS = -Wall -I./include -I.

# Arquivos fonte a serem compilados
SOURCES := $(wildcard src/*.cpp)

# Nome dos arquivos objetos a serem gerados
OBJECTS := $(SOURCES:src/%.cpp=objects/%.o)

# Regra para a criação do programa final
$(TARGET): $(OBJECTS)
	$(CC) $^ -o $@

# Regra para a criação dos arquivos objeto
objects/%.o: src/%.cpp
	$(CC) $(CFLAGS) -c $< -o $@

# Regra para limpar os arquivos objeto e o programa final
clean:
	rm -f $(OBJECTS) $(TARGET)
