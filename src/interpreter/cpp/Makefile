TARGET := test

OBJS	:= main.o	\
	expression.o	\

$(TARGET): $(OBJS)
	$(CXX) $^ -o $@

clean:
	$(RM) $(OBJS) $(TARGET)
