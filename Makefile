CC = clang
TARGET = iBoot32Patcher

CFLAGS = -Wno-multichar -I.

OBJECTS = iBoot32Patcher.o \
		  finders.o \
		  functions.o \
		  patchers.o

all : $(TARGET)

$(TARGET) : $(OBJECTS)
	$(CC) $(OBJECTS) -o $(TARGET)

%.o : %.c 
	$(CC) -c $(CFLAGS) $< -o $@

clean : 
	rm $(OBJECTS) $(TARGET)
