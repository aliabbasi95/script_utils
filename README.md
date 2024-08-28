**# script_utils

A collection of utility functions for shell scripting, designed to simplify script management and enhance readability.

## Overview

This repository contains a single file, `script_utils.sh`, which includes utility functions for shell scripting. These functions are useful for printing status messages, handling errors, and executing commands with success checks.

## Utilities Provided

- **`print_status`**: Prints status messages with a cyan and bold format.
- **`print_success`**: Prints success messages with a green and bold format, including a check mark.
- **`print_error`**: Prints error messages with a red and bold format, including a cross mark.
- **`execute_command`**: Executes a command and prints its success or failure status.
- **`safe_append_to_file`**: Safely appends text to a file, ensuring no duplicate lines and creating the file if it does not exist.

**Note:** The utility functions include color codes to enhance readability in the terminal. Ensure your terminal supports color codes for optimal display.

## Usage

To use the utility functions in your shell scripts, source the `script_utils.sh` file. Here’s how to do it:

1. **Clone this repository:**
   ```bash
    git clone https://github.com/your-username/script_utils.git
    ```

2. **Source the `script_utils.sh` file in your script:**
   ```bash
    #!/bin/bash
    source /path/to/script_utils/script_utils.sh

    # Example usage
    execute_command "ls -l" "Listing files in the current directory"
    ```
## Functions Description
* ### print_status
&nbsp;&nbsp;&nbsp;&nbsp; Prints a status message in cyan and bold text.

&nbsp;&nbsp;&nbsp;&nbsp; **Usage:**
```bash
   print_status "Your message here"
```

* ### print_success
&nbsp;&nbsp;&nbsp;&nbsp; Prints a success message in green and bold text, prefixed with a check mark.

&nbsp;&nbsp;&nbsp;&nbsp; **Usage:**

```bash
   print_success "Your message here"
```

* ### print_error
&nbsp;&nbsp;&nbsp;&nbsp; Prints an error message in red and bold text, prefixed with a cross mark.

&nbsp;&nbsp;&nbsp;&nbsp; **Usage:**

```bash
   print_error "Your message here"
```

* ### execute_command
&nbsp;&nbsp;&nbsp;&nbsp; Executes a given command and prints a success or error message based on the outcome.

&nbsp;&nbsp;&nbsp;&nbsp; **Usage:**
```bash
   execute_command "command_to_run" "Description of what the command does"
```

* #### safe_append_to_file
&nbsp;&nbsp;&nbsp;&nbsp; Safely appends a line to a specified file. It checks if the file exists, creates it if necessary, and ensures the line is not already present in the file before appending.

&nbsp;&nbsp;&nbsp;&nbsp; **Usage:**
```bash
   safe_append_to_file "line_to_add" "file_path" "Description of the action"
```

## Adding as a Submodule

To add this repository as a submodule to your own project, follow these steps:

1. **Add the submodule:**
   ```bash
   git submodule add https://github.com/your-username/script_utils.git path/to/submodule
   ```

2. **Initialize and update the submodule:**
   ```bash
   git submodule update --init --recursive
   ```

3. **Source the `script_utils.sh` file in your script:**
   ```bash
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

**