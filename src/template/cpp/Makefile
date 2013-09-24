TARGET := test

OBJS	:= main.o	\
	class.o	\

$(TARGET): $(OBJS)
	$(CXX) $^ -o $@

clean:
	$(RM) $(OBJS) $(TARGET)
