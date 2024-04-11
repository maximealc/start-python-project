# start-python-project

Quick and dirty script to automate the setup of a new Python project on a Mac, as I always follow the same steps (initializing a new virtual environment with a few basic data science libraries and setting up an online Git repo).

## Features
- Creates a new project directory.
- Opens the project directory in Visual Studio Code (VS Code).
- Creates a Python virtual environment within the project directory.
- Installs a set of commonly used data science libraries (`numpy`, `pandas`, `scikit-learn`, `matplotlib`, `seaborn`).
- Initializes a Git repository, adds a `.gitignore` file customized for Python projects.
- Creates a new GitHub repository (public or private based on user input) and links it to the local repository.
- Pushes the initial commit to the GitHub repository.

## Prerequisites
Before using this script, ensure you have the following installed on your Mac:

- **Python 3**: Check by running `python3 --version` in your terminal. If not installed, download from [python.org](https://www.python.org).
- **Visual Studio Code (VS Code)**: Download from [code.visualstudio.com](https://code.visualstudio.com). Ensure the `code` command is available in your terminal by following the setup instructions provided in VS Code documentation.
- **Git**: Check installation by running `git --version`. If not installed, download from [git-scm.com](https://git-scm.com).
- **GitHub CLI**: Install by running `brew install gh` in your terminal and authenticate using `gh auth login`. For more installation options, visit the [GitHub CLI documentation](https://cli.github.com/manual/installation).

## Setup
- **Download the Script**: Save the script as `start_project.sh` on your Mac.
- **Make the Script Executable**: Navigate to the directory containing `start_project.sh` in your terminal and run the command `chmod +x start_project.sh` to make it executable.

## Usage
- **Navigate to the Directory**: Move to the directory where you want your new project folder to be created.
- **Run the Script**: Execute the script by typing `./start_project.sh ProjectName`, replacing `ProjectName` with your desired project name.
- **Specify Repository Visibility**: When prompted, type `public` or `private` to set the visibility of your GitHub repository and press Enter.

## Notes
- Ensure you are logged into the GitHub CLI before running this script to avoid any authentication issues.
- The virtual environment created by the script is named `venv`. Activate it by running `source venv/bin/activate` when working on your project.
