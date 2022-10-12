
.PHONY: all serve install_deps

all: serve

install_deps:
	bundle install

serve:
	bundle exec jekyll serve --livereload --drafts