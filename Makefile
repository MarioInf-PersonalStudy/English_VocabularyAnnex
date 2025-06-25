PROJECT = Main
SRC_DIR = src
BUILD_DIR = build


all:
	@mkdir -p $(BUILD_DIR)
	@cp -R $(SRC_DIR)/* $(BUILD_DIR) 2>/dev/null || true
	@cd $(BUILD_DIR) && latexmk -pdf $(PROJECT).tex  2>/dev/null || true

clean:
	@rm -rf $(BUILD_DIR)/*
	@rm -rf $(BUILD_DIR)/.??*