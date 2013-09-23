TARGET := test
CXXFLAGS += -std=c++11
OBJS	:= main.o	\
	button.o	\
	text.o		\
	factory.o	\

$(TARGET): $(OBJS)
	$(CXX) $^ -o $@

clean:
	$(RM) $(OBJS) $(TARGET)
