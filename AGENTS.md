# AGENTS.md

This file provides guidance to coding agents working in this repository.

## Project Overview

This is a MkDocs-based documentation website for 10xDevelopers.dev, a community resource for AI-powered development guides and tools. The site contains comprehensive documentation about AI development tools, prompt engineering, structured development processes, and agent frameworks.

## Development Commands

### Environment Setup
```bash
# Create and activate virtual environment
python -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate

# Install dependencies
pip install mkdocs mkdocs-material pymdown-extensions
```

### Local Development
```bash
# Serve documentation locally with live reload
mkdocs serve
# Site will be available at http://127.0.0.1:8000/
```

### Build and Deployment
```bash
# Build static site for production
mkdocs build
```

## Architecture and Structure

### Content Organization
- **`docs/`** - All documentation content in Markdown format
  - **`structured/`** - Step-by-step development process guides (planning, requirements, implementation, etc.)
  - **`prompt-engineering/`** - Platform-specific prompting guides (OpenAI, Anthropic, Gemini, xAI)
  - **`ai-coding-tools/`** - AI development tools organized by category (Cloud IDEs, VS Code forks, IDE plugins, AI agents)
  - **`agent-frameworks/`** - Agent development framework guides
  - **`guides/`** - General development guides and tutorials
  - **`reference/`** - Quick reference materials and tips
  - **`resources/`** - Curated AI development resources

### Site Configuration
- **`mkdocs.yml`** - Complete site configuration including navigation structure, theme settings, and plugins
- **`docs/stylesheets/override.css`** - Custom CSS for code block styling (enables word wrapping)

### Navigation Architecture
The site follows a structured approach to AI development:
1. **Vibe Coding Guide** - Philosophy and approach
2. **Structured Development Process** - Complete workflow from ideation to deployment
3. **Tool-Specific Guides** - Platform documentation for various AI development tools
4. **Resources** - Additional learning materials

### Theme and Features
- Material for MkDocs theme with dark/light mode toggle
- Code highlighting with copy functionality
- Search with suggestions
- Navigation tracking and instant loading
- Mermaid diagram support
- Tabbed content and admonitions

## Content Guidelines

### Documentation Standards
- All content is in Markdown format
- Use appropriate frontmatter and metadata
- Follow the existing navigation structure in `mkdocs.yml`
- Maintain consistent formatting and style across documents

### Adding New Content
1. Create Markdown files in appropriate `docs/` subdirectories
2. Update navigation in `mkdocs.yml` if adding new sections
3. Test locally with `mkdocs serve` before committing
4. Follow existing content patterns and structure

### File Naming
- Use lowercase with hyphens for file names (e.g., `claude-code.md`)
- Organize files into logical subdirectories
- Keep URLs clean and readable

## Resource List Update Rules

When adding or updating resource links:
- Place new resources under the most relevant section header (e.g., `LangGraph` vs `LangSmith`).
- Use a descriptive link title rather than a raw platform name.
- Add a brief descriptor after the link (e.g., "X article on ...").
- Keep list formatting consistent with surrounding items.

## Key Dependencies
- **MkDocs** - Static site generator
- **Material for MkDocs** - Theme and UI components
- **PyMdown Extensions** - Enhanced Markdown features including syntax highlighting, tabbed content, and emoji support
