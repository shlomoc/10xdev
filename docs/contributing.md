# Contributing

Thanks for helping improve 10xDevelopers.

## Local setup

1. Clone the repository and enter it:
   ```bash
   git clone https://github.com/schlomoc23/10xdev.git
   cd 10xdev
   ```
2. Create a local environment and install dependencies:
   ```bash
   make setup
   ```
   _Manual alternative:_
   ```bash
   python -m venv venv
   source venv/bin/activate
   pip install -r requirements.txt
   ```
3. Run docs locally:
   ```bash
   make serve
   ```

## Contribution flow

1. Create a branch:
   ```bash
   git checkout -b feat/<scope>-<short-slug>
   ```
   or
   ```bash
   git checkout -b fix/<scope>-<short-slug>
   ```
2. Make changes following the existing docs structure/style.
3. Test locally with `make serve` (and `mkdocs build` before opening PR if possible).
4. Commit with a clear message.
5. Push your branch and open a PR to `main`.

## Helpful reference

- [README](https://github.com/schlomoc23/10xdev/blob/main/README.md)
- [Markdown Cheat Sheet](https://www.markdownguide.org/cheat-sheet/)
