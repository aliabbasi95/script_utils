# script_utils

A collection of utility functions for shell scripting, designed to simplify script management and enhance readability.

## Overview

This repository contains a single file, `script_utils.sh`, which includes utility functions for shell scripting. These functions are useful for printing status messages, handling errors, and executing commands with success checks.

## Utilities Provided

- **`print_status`**: Prints status messages with a cyan and bold format.
- **`print_success`**: Prints success messages with a green and bold format, including a check mark.
- **`print_error`**: Prints error messages with a red and bold format, including a cross mark.
- **`execute_command`**: Executes a command and prints its success or failure status.

**Note:** The utility functions include color codes to enhance readability in the terminal. Ensure your terminal supports color codes for optimal display.

## Usage

To use the utility functions in your shell scripts, source the `script_utils.sh` file. Here’s how to do it:

1. **Clone this repository:**
    ```sh
    git clone https://github.com/your-username/script_utils.git
    ```

2. **Source the `script_utils.sh` file in your script:**
    ```sh
    #!/bin/bash
    source /path/to/script_utils/script_utils.sh

    # Example usage
    execute_command "ls -l" "Listing files in the current directory"
    ```

## Adding as a Submodule

To add this repository as a submodule to your own project, follow these steps:

1. **Add the submodule:**
    ```sh
    git submodule add https://github.com/your-username/script_utils.git path/to/submodule
    ```

2. **Initialize and update the submodule:**
    ```sh
    git submodule update --init --recursive
    ```

3. **Source the `script_utils.sh` file in your script:**
    ```sh
    #!/bin/bash
    source path/to/submodule/script_utils.sh

    # Example usage
    execute_command "ls -l" "Listing files in the current directory"
    ```

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contributing

Feel free to submit issues, enhancements, or pull requests. Please follow the standard guidelines for contributing to open source projects.

## Contact

For any questions or comments, please contact [Ali Abbasi](mailto:info@aliabbasi.net).

