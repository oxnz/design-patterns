TARGET := test

OBJS	:= main.o	\
	animal.o	\

$(TARGET): $(OBJS)
	$(CXX) $^ -o $@

clean:
	$(RM) $(OBJS) $(TARGET)
