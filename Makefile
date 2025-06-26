

CFLAGS := -Werror -Wall -pedantic
CC := gcc

TARGET := ./img2sym
SRCS := ./main.c
OBJS := ./main.o

exec: $(TARGET)
	$(TARGET)
	rm -rf ./*.o

$(TARGET): $(OBJS)
	$(CC) ./*.o -o $(TARGET) $(INCLUDE) $(CFLAGS)

$(OBJS):
	$(CC) -c $(SRCS) $(CFLAGS)

.PHONY: clean run
clean:
	rm -rf ./*.o
run:
	$(TARGET)
