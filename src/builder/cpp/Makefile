TARGET := test

OBJS	:= main.o	\
	builder.o	\
	director.o	\

$(TARGET): $(OBJS)
	$(CXX) $^ -o $@

clean:
	$(RM) $(OBJS) $(TARGET)
