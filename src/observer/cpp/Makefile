TARGET := test

OBJS	:= main.o	\
	observer.o	\
	subject.o	\

$(TARGET): $(OBJS)
	$(CXX) $^ -o $@

clean:
	$(RM) $(OBJS) $(TARGET)
