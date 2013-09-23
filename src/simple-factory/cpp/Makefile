TARGET := test

OBJS	:= main.o	\
	nokia.o	\
	factory.o	\

$(TARGET): $(OBJS)
	$(CXX) $^ -o $@

clean:
	$(RM) $(OBJS) $(TARGET)
