TARGET := test

OBJS	:= main.o	\
	nokia.o		\
	lumia920factory.o	\

$(TARGET): $(OBJS)
	$(CXX) $^ -o $@

clean:
	$(RM) $(OBJS) $(TARGET)
