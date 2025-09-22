# Makefile to create CPP project
SRC_FOLDER = src
HEADER_FOLDER = include

PROJECTNAME != bash -c 'read -p "Project Name: " name; echo $$name'

create:
	mkdir -p $(PROJECTNAME)
	mkdir -p "$(PROJECTNAME)/$(SRC_FOLDER)"
	mkdir -p "$(PROJECTNAME)/$(HEADER_FOLDER)"
	touch "$(PROJECTNAME)/$(SRC_FOLDER)/main.cpp"
	touch "$(PROJECTNAME)/$(HEADER_FOLDER)/header.h"
	cp "CMakeLists.txt" "$(PROJECTNAME)/CMakeLists.txt"
	cp "Makefile.proj" "$(PROJECTNAME)/Makefile"

	@echo "Project $(PROJECTNAME)/ is created."