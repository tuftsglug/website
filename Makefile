
.PHONY: all serve install

all: serve

install_deps:
	bundle install

serve:
	bundle exec jekyll serve --livereload --drafts