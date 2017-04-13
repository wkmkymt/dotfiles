CXX      = g++
CXXFLAGS = -Wall -lm -O2 -std=c++11

SRC      = *.cpp
APP      = ./app
TEST     = ctest

all: $(APP)

$(APP): $(SRC)
	@$(CXX) $(CXXFLAGS) $(SRC) -o $(APP)
	@echo "Compiled successfully!"
	@echo "Make: $(APP)"

test: $(APP)
	@echo "Run program test."
	@echo "Test: $(APP)"
	@echo ""
	@$(TEST) $(APP)

clean:
	@if [ -e $(APP) ]; \
	then \
		$(RM) $(APP); \
		echo "Remove program files."; \
		echo "Remove: $(APP)"; \
	else \
		echo "$(APP) isn't exist..."; \
	fi
