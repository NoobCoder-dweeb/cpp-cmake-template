# C++ CMake Project Template

This repository provides a starter template for creating new C++ projects using **CMake** and a helper **Makefile**.  
It automatically sets up a clean project structure with `src/` and `include/` folders, a `CMakeLists.txt`, and a `Makefile` to build and run the project.

## 📂 Project Structure

When you create a new project, it will look like this:
```text
MyProject/
├── CMakeLists.txt
├── Makefile
├── include/
│   └── header.h
└── src/
    └── main.cpp
```
##⚡ Getting Started
Create a new project

From this repository’s root, run:

```bash
make create
```

You’ll be prompted for a project name:

`Project Name: hello`

This creates a new folder `hello/` with the default structure.
## Build the project

Inside your new project folder:

```bash
make build
```

This runs CMake and builds the project into the `build/` directory.
## Run the project

```bash
make run
```

This builds (if necessary) and executes the program.
## Clean the build

```bash
make clean
```

This removes the `build/` folder.
## 🛠️ How It Works

### Root Makefile
Provides the create target to generate new C++ projects.
It sets up src/, include/, a starter CMakeLists.txt, and a project-local Makefile.

### CMakeLists.txt
Configures CMake to:

- Use the folder name as the project name.
- Collect all .cpp files from src/.
- Collect all .h files from include/.
- Build an executable named after the project folder.

### Makefile.proj
Included in each generated project.
Provides the following targets:

- build → configure and build with CMake
- run → build and run the executable
- clean → remove the build directory

## ✅ Requirements

- CMake ≥ 3.10
- GNU Make
- A C++ compiler (e.g. g++ or clang++)

🚀 Example Workflow
```bash
# From the template repo
make create
# Enter project name: hello

cd hello
make build
make run
```
