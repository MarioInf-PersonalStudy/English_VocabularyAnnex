PROJECT = Main
SRC_DIR = src
BUILD_DIR = build

.PHONY: all clean

all:
	@mkdir -p $(BUILD_DIR)
	@cd $(SRC_DIR) && latexmk -pdf -synctex=1 -interaction=nonstopmode \
		-output-directory=../$(BUILD_DIR) $(PROJECT).tex

clean:
	@rm -rf $(BUILD_DIR)/*
	@rm -rf $(BUILD_DIR)/.??*
