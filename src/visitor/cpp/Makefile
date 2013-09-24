TARGET := test

OBJS	:= main.o	\
	status.o	\
	seed.o	\

$(TARGET): $(OBJS)
	$(CXX) $^ -o $@

clean:
	$(RM) $(OBJS) $(TARGET)
