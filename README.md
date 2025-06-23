# 10xDevelopers Documentation

This repository contains the source files for the 10xDevelopers documentation website, built using [MkDocs](https://www.mkdocs.org/) and the [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/) theme.

## Project Description

10xDevelopers.dev is a website with resources and guides to help developers leverage AI tools.

## Getting Started

### Prerequisites

- Python 3.x
- pip (Python package installer)

### Installation

1.  **Clone the repository:**
    ```bash
    git clone <repository-url>
    cd 10xdev
    ```
2.  **Install dependencies:**
    It's recommended to use a virtual environment:
    ```bash
    python -m venv venv
    source venv/bin/activate  # On Windows use `venv\Scripts\activate`
    ```
    Install MkDocs and the Material theme:
    ```bash
    pip install mkdocs mkdocs-material pymdown-extensions
    ```
    *(Note: Check `mkdocs.yml` for any additional plugins that might need installation.)*

### Running Locally

To serve the documentation site locally, run the following command from the project root directory:

```bash
mkdocs serve
```

This will start a local development server, usually accessible at `http://127.0.0.1:8000/`. The site will automatically rebuild when you save changes to the documentation files or the `mkdocs.yml` configuration.

## Contributing

Contributions are welcome! If you'd like to contribute, please follow these steps:

1.  **Fork the repository.**
2.  **Create a new branch** for your feature or bug fix:
    ```bash
    git checkout -b feature/your-feature-name
    ```
    or
    ```bash
    git checkout -b fix/your-bug-fix-name
    ```
3.  **Make your changes.** Ensure you follow the existing documentation style and structure.
4.  **Test your changes locally** using `mkdocs serve`.
5.  **Commit your changes** with a clear and descriptive commit message.
6.  **Push your branch** to your fork:
    ```bash
    git push origin feature/your-feature-name
    ```
7.  **Open a Pull Request** against the main branch of the original repository. Provide details about the changes you've made.

We appreciate your contributions to making 10xDevelopers a valuable resource! 
