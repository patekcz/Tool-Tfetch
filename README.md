# Shell Profile Script

This script is designed to display system information and the current time in the terminal. The script runs only if the current directory is the user's home directory.

## Features

- Checks if the current directory is the home directory.
- Clears the terminal.
- Retrieves and displays the current time.
- Retrieves and displays system information, including:
  - System uptime
  - Used and total amount of RAM
  - CPU name
- Displays an image (file `image.png`).
- Displays information with color formatting.

## Usage

1. Make sure you have the necessary tools installed (`kitten`, `awk`, `sed`).
2. Save the script to a file, for example, `shell-profile.sh`.
3. Ensure that you have the image `image.png` in the same directory as the script.
4. Run the script in the terminal:

   ```bash
   bash shell-profile.sh
   ```

## Tip

To automatically load the script when starting the terminal, you can add the following line to your `.zshrc` file:

```bash
source /path/to/shell-profile.sh
```

Make sure that the path to the `shell-profile.sh` file is correct.

## Prerequisites

- The script is intended for Unix systems (Linux, macOS).
- The script requires to be run from the user's home directory.