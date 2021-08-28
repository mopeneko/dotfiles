EXCLUSION := .DS_Store .git/\* .gitmodules .gitignore README.md Makefile brew/\* preinstall\*.sh
DOTFILES_PATH := $(abspath $(dir $(lastword $(MAKEFILE_LIST))))
DOTFILES := $(shell printf " ! -path $(DOTFILES_PATH)/%s" $(EXCLUSION) | xargs find $(DOTFILES_PATH) -type f | sed "s|^$(DOTFILES_PATH)/||")

LN := /usr/bin/env ln -sfv

all:

.PHONY: preinstall
preinstall:
	./scripts/preinstall.sh

.PHONY: install
install:
	@$(foreach dotfile, $(DOTFILES), \
		mkdir -p "$(HOME)/$(dir $(dotfile))"; \
		$(LN) "$(abspath $(dotfile))" "$(HOME)/$(dotfile)"; \
	)

.PHONY: clean
clean:
	@$(foreach dotfile, $(DOTFILES), \
		$(RM) -fv "$(HOME)/$(dotfile)"; \
	)
