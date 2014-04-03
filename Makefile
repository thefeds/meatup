
# Color helpers
CL_SUCCESS=\x1b[32;01m
CL_WARN=\x1b[33;01m
CL_ERROR=\x1b[31;01m
CL_RESET=\x1b[0m


# SETUP TARGETS
# =============

# Run the setup script
setup: check deps

# Check for global dependencies
check: check-ruby check-node check-bundler

# Check for Ruby
check-ruby:
	@if which ruby;\
		then echo "$(CL_SUCCESS)Ruby found$(CL_RESET)";\
	else\
		echo "$(CL_ERROR)Ruby is required to run the site$(CL_RESET)" && exit 1;\
	fi

# Check for Node.js
check-node:
	@if which node;\
		then echo "$(CL_SUCCESS)Node.js found$(CL_RESET)";\
	else\
		echo "$(CL_ERROR)Node.js is required to run the site$(CL_RESET)" && exit 1;\
	fi

# Check for Bundler
check-bundler:
	@if which bundler;\
		then echo "$(CL_SUCCESS)Bundler found$(CL_RESET)";\
	else\
		echo "$(CL_WARN)Bundler is required to run the site$(CL_RESET)";\
	fi

# Install dependencies
deps:
	@bundle install
	@npm install
	@./node_modules/.bin/bower install


# BUILD TARGETS
# =============

# Serve the site
serve:
	@jekyll serve --watch --drafts

# Watch and compile the CSS
css:
	@sass --watch --style compressed ./_assets/styles/site.scss:./assets/site.min.css
