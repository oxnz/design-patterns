TARGET := test

CXXFLAGS += -std=c++11

OBJS	:= main.o	\
	singleton.o	\

$(TARGET): $(OBJS)
	$(CXX) $^ -o $@

clean:
	$(RM) $(OBJS) $(TARGET)
