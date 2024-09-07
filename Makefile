# Do everything.
all: init link brew

# Set initial preference.
init:
	@echo "\033[0;34mRun init.sh\033[0m"
	@chmod +x init.sh
	@./init.sh
	@echo "\033[0;34mDone.\033[0m"

# Link dotfiles.
link:
	@echo "\033[0;34mRun link.sh\033[0m"
	@chmod +x link.sh
	@./link.sh
	@echo "\033[0;32mDone.\033[0m"

# Set macOS system preferences.
# defaults:
# 	@echo "\033[0;34mRun defaults.sh\033[0m"
# 	@.bin/defaults.sh
# 	@echo "\033[0;32mDone.\033[0m"

# Install macOS applications.
brew:
	@echo "\033[0;34mRun brew.sh\033[0m"
	@chmod +x brew.sh
	@.bin/brew.sh
	@echo "\033[0;32mDone.\033[0m"