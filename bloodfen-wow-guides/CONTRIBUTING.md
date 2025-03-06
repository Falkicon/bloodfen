# Contributing to Bloodfen WoW Guides

Thank you for your interest in contributing to Bloodfen WoW Guides! This document provides guidelines and instructions for contributing to this project.

## Getting Started

1. Fork the repository
2. Clone your fork: `git clone https://github.com/YOUR-USERNAME/bloodfen-wow-guides.git`
3. Create a new branch for your contribution: `git checkout -b feature/your-feature-name`

## Setting Up the Development Environment

1. Install [Hugo](https://gohugo.io/getting-started/installing/) (Extended version recommended)
2. Navigate to the project directory: `cd bloodfen-wow-guides`
3. Start the Hugo development server: `hugo server -D`
4. Open your browser and go to http://localhost:1313/

## Guide Writing Guidelines

### File Structure

Place new guides in the appropriate section under `content/world-of-warcraft/`:

```
content/
└── world-of-warcraft/
    └── the-war-within/
        └── your-new-guide.md
```

### Front Matter

Each guide should include the following front matter:

```yaml
---
title: "Your Guide Title"
weight: 10  # Controls the order in the menu
bookToc: true  # Enables table of contents
---
```

### Content Guidelines

1. **Headers**: Use proper header hierarchy (H1 for title, H2 for main sections, H3 for subsections)
2. **Lists**: Use bullet points for unordered lists and numbered lists for sequential steps
3. **Code Blocks**: Use triple backticks for code blocks
4. **Images**: Place images in the `static/images/` directory and reference them using relative paths
5. **Links**: Use relative links for internal content and full URLs for external resources
6. **Tables**: Use Markdown tables for structured data

### Style Guide

1. Be clear and concise
2. Use active voice when possible
3. Include examples and explanations
4. Cite sources for information
5. Use consistent terminology
6. Proofread for spelling and grammar

## Submitting Changes

1. Commit your changes: `git commit -m "Add detailed description of changes"`
2. Push to your fork: `git push origin feature/your-feature-name`
3. Create a Pull Request from your fork to the main repository
4. Fill out the Pull Request template with details about your changes

## Pull Request Process

1. Ensure your code follows the project's style guidelines
2. Update documentation if necessary
3. Add screenshots if applicable
4. Link any related issues
5. Wait for review and address any feedback

## Community Guidelines

1. Be respectful and inclusive
2. Provide constructive feedback
3. Help others when possible
4. Follow the code of conduct

## Additional Resources

- [Hugo Documentation](https://gohugo.io/documentation/)
- [Markdown Guide](https://www.markdownguide.org/)
- [GitHub Flow](https://guides.github.com/introduction/flow/)

Thank you for contributing to Bloodfen WoW Guides! 