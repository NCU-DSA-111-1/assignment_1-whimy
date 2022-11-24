# LDFLAGS = -pthread -lpthread
# CFLAGS = -g -Wall -Werror
# backprop: backprop.o layer.o neuron.o
# 	$(CC) $(LDFLAGS) -o backprop main.o layer.o neuron.o -lm

# backprop.o: main.c
# 	$(CC) $(CFLAGS) -c main.c

# layer.o: layer.c
# 	$(CC) $(CFLAGS) -c layer.c

# neuron.o: neuron.c
# 	$(CC) $(CFLAGS) -c neuron.c

# # remove object files and executable when user executes "make clean"
# clean:
# 	rm *.o backprop


CC := gcc
SRCDIR := src
BUILDDIR := build
TARGET := bin/run
SRCEXT := c
SOURCES := $(shell find $(SRCDIR) -type f -name *.$(SRCEXT))
OBJECTS := $(patsubst $(SRCDIR)/%,$(BUILDDIR)/%,$(SOURCES:.$(SRCEXT)=.o))
LDFLAGS = -pthread -lpthread
CFLAGS = -g -Wall -Werror
LIB := -L lib
INC := -I inc

$(TARGET): $(OBJECTS)
	@echo " Linking..."
	@echo " $(CC) $^ -o $(TARGET) $(LIB)"; $(CC) $^ -o $(TARGET) $(LIB) -O0 -lm

$(BUILDDIR)/%.o: $(SRCDIR)/%.$(SRCEXT)
	@echo " Building..."
	@mkdir -p $(BUILDDIR)
	@echo " $(CC) $(CFLAGS) $(INC) -c -o $@ $<"; $(CC) $(CFLAGS) $(INC) -c -o $@ $< -save-temps -O0

clean:
	@echo " Cleaning..."; 
	@echo " $(RM) -r $(BUILDDIR) $(TARGET)"; $(RM) -r $(BUILDDIR) $(TARGET)

# Tests
tester:
	$(CC) $(CFLAGS) test/tester.c $(INC) $(LIB) -o bin/tester

# Spikes
ticket:
	$(CC) $(CFLAGS) spikes/ticket.c $(INC) $(LIB) -o bin/ticket

.PHONY: clean