EXEC = can_test
OBJS = can_test.o
SRC  = can_test.c

CC = arm-none-linux-gnueabi-gcc
CFLAGS += 
LDFLAGS += 
all:$(EXEC)

$(EXEC):$(OBJS)
	$(CC) $(LDFLAGS) -o $@ $(OBJS) 

%.o:%.c
	$(CC) $(CFLAGS) -c $< -o $@ 

clean:
	@rm -vf $(EXEC) *.o *~
