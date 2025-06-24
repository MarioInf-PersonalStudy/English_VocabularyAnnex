PROJECT = Main
SRC_DIR = src
BUILD_DIR = build

all:
	latexmk -pdf -output-directory=$(BUILD_DIR) $(SRC_DIR)/$(PROJECT).tex

clean:
	latexmk -C -output-directory=$(BUILD_DIR)
