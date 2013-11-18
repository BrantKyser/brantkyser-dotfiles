DOT_FILES := $(shell ls -d .??*)
DOT_FILES := $(filter-out .git, $(DOT_FILES))

~/%:
	ln -s $(CURDIR)/$(@F) $(@)

install: $(addprefix ~/, $(DOT_FILES))

