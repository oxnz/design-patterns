TARGET := test

OBJS	:= main.o	\
	memento.o	\
	originator.o	\

$(TARGET): $(OBJS)
	$(CXX) $^ -o $@

clean:
	$(RM) $(OBJS) $(TARGET)
