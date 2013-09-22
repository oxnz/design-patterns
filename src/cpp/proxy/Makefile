TARGET := test

OBJS := main.o	\
	proxy.o	\

$(TARGET): $(OBJS)
	$(CXX) $^ -o $@
clean:
	$(RM) $(OBJS) $(TARGET)
.PHONY: clean
