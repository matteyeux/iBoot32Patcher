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

install : $(TARGET)
	install -v $< /usr/local/bin/
clean : 
	rm $(OBJECTS) $(TARGET)
