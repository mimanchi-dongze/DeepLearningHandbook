# Contributing to Deep Learning Handbook

First off, thank you for considering contributing to the Deep Learning Handbook! It's people like you that make this a great resource.

## 🚀 How to Contribute

### 1. Reporting Bugs
If you find a typo, mathematical error, or formatting issue:
- Open an issue explaining the problem.
- Include the chapter, section, and page number if possible.

### 2. Suggesting Enhancements
We are always looking to improve our content:
- If you have an idea for a new chapter or section, please open an issue first to discuss it with the maintainers.

### 3. Submitting Pull Requests
- **Fork the repository** and clone it locally.
- **Create a new branch** for your feature or bugfix (`git checkout -b feature/new-chapter` or `fix/typo-ch1`).
- **Make your changes** in the relevant `.tex` files inside the `chapters/` directory.
- **Build the project** locally to ensure there are no LaTeX compilation errors (see [Local Development](#local-development) below).
- **Commit your changes** using clear and descriptive commit messages.
- **Push to your fork** and submit a Pull Request.

## 🎨 Styling Guidelines

To maintain the "Rosetta Stone" aesthetic, please follow these rules:

1.  **Use the `rosetta` Environment**: For any new operator or layer, use:
    ```latex
    \begin{rosetta}{Title}
        LaTeX Formula
        \tcblower
        PyTorch Code Snippet
    \end{rosetta}
    ```
2.  **Standardized TikZ**: Use the predefined styles in `atlas_style.sty` (e.g., `neuron`, `block`, `conn`) for consistency.
3.  **Times New Roman**: Avoid using font-changing commands; the global style handles typography.

## 💻 Local Development

To compile the LaTeX source code, ensure you have a full TeX distribution installed (e.g., TeX Live, MiKTeX, MacTeX).

### Windows
Run the provided batch script:
```cmd
build.bat
```

To clean intermediate files:
```cmd
build.bat clean
```

### macOS / Linux
Run the Makefile:
```bash
make
```

To clean intermediate files:
```bash
make clean
```

## 📝 Commit Message Guidelines

- Use present tense ("Add feature" not "Added feature").
- Use imperative mood ("Move cursor to..." not "Moves cursor to...").
- Reference issues and pull requests liberally.

Thank you for your contributions!
