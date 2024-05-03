# C Development Container

This Dockerfile provides a basic Linux environment for C programming. I will maintian and build out with more tools as I see fit.

## Usage (Visual Studio Code Dev Containers)

To utilize this container with Visual Studio Code's Dev Containers extension, follow these steps:

1. Ensure Docker is installed on your system. If not, install it from [here](https://docs.docker.com/get-docker/).
2. Ensure Docker daemon is running.
3. Install the Docker extension and Dev Containers extension in Visual Studio Code.
4. Clone this repository into your project directory.

The Dev Containers extension expects there to be a `.devcontainer` directory in the root of your project. Thats what this repository is for. You can add it to your project as a submodule by running the following command in your project directory:

```bash 
git submodule add https://github.com/Johnyb0223/c-dev-env.git .devcontainer
```

see we have named it `.devcontainer`. Now all you have to do is initiate the Dev Container extension and it will open the project in the container. To do this click on the blue icon in the bottom left corner and select "Reopen in Container".

Features

Standard C Toolchain: Includes essential tools for C development such as GCC, GDB, and Make.
Clang-Format: Includes a local installation of clang-format for code formatting. Enable automatic formatting on save in Visual Studio Code by adding "editor.formatOnSave": true to your settings.json. Ensure you have the clang-format extension installed in Visual Studio Code.