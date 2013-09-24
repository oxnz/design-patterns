TARGET := test

OBJS	:= main.o	\
	command.o	\

$(TARGET): $(OBJS)
	$(CXX) $^ -o $@

clean:
	$(RM) $(OBJS) $(TARGET)
