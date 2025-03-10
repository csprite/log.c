NUM_JOBS=2
GENERATOR=Ninja
BUILD_DIR=build/
BUILD_TYPE=Debug

# These Flags are passed to Cmake When Generating Build Files
CMAKE_GEN_FLAGS=

# These Flags are passed to Cmake When Building The Project
CMAKE_BUILD_FLAGS=

ifeq ($(OS),Windows_NT)
	GENERATOR=Visual Studio 17 2022
	CMAKE_GEN_FLAGS=-T "ClangCL"
endif

all:
	@cmake -L -S ./ -B $(BUILD_DIR) -DCMAKE_BUILD_TYPE=$(BUILD_TYPE) -G "$(GENERATOR)" $(CMAKE_GEN_FLAGS)
	@cmake --build $(BUILD_DIR) --config=$(BUILD_TYPE) --parallel $(NUM_JOBS) $(CMAKE_BUILD_FLAGS)

clean:
	@$(RM) -r $(BUILD_DIR)

