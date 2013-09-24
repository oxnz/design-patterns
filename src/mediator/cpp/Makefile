TARGET := test

OBJS	:= main.o	\
	country.o	\
	mediator.o	\

$(TARGET): $(OBJS)
	$(CXX) $^ -o $@

clean:
	$(RM) $(OBJS) $(TARGET)
