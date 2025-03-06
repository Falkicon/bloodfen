# Bloodfen

A collection of World of Warcraft guides for The War Within Season 2, built using the Hugo static site generator with Tailwind CSS.

## Project Overview

Bloodfen is a comprehensive resource for World of Warcraft players, focusing on "The War Within" expansion. The site features:

- Detailed class guides
- Dungeon and raid strategies
- Gear recommendations
- Profession guides
- World content walkthroughs

The project uses a modern web development stack with Hugo for static site generation and Tailwind CSS for styling.

## Project Structure

The main Hugo site is located in the `bloodfen-wow-guides` directory. This repository contains:

- The Hugo site in the `bloodfen-wow-guides` directory
- Original markdown guide files
- Configuration files for Hugo, Tailwind CSS, and other tools
- NPM scripts for development, building, and deployment

## CSS Architecture

The project recently underwent a CSS restructuring to improve maintainability:

- Implemented the ITCSS (Inverted Triangle CSS) methodology
- Adopted a consistent naming convention with the `bf-` prefix
- Integrated Tailwind CSS for utility-first styling
- Organized CSS into logical layers (settings, tools, generic, elements, objects, components, utilities)

## Getting Started

### Prerequisites

- [Hugo Extended](https://gohugoio.github.io/hugo-installer/) (v0.145.0 or later)
- [Node.js](https://nodejs.org/) (v18 or later)
- [npm](https://www.npmjs.com/) (v9 or later)

### Installation

1. Clone this repository:
   ```
   git clone https://github.com/Falkicon/bloodfen.git
   cd bloodfen
   ```

2. Navigate to the Hugo site directory:
   ```
   cd bloodfen-wow-guides
   ```

3. Install Node.js dependencies:
   ```
   npm install
   ```

4. Start the development server:
   ```
   npm start
   ```
   This will start both Hugo and Tailwind CSS in watch mode.

5. Open your browser and navigate to http://localhost:1313/

## Available Scripts

The project includes several npm scripts to help with development and deployment:

### Development
- `npm start` - Start both Hugo and Tailwind in development mode
- `npm run dev` - Start Hugo development server
- `npm run tailwind:dev` - Start Tailwind CSS in watch mode
- `npm run serve` - Run Hugo server with full page rebuilds

### Building
- `npm run build:all` - Build both Tailwind CSS and Hugo site
- `npm run build:clean` - Clean output directories and build everything
- `npm run deploy` - Prepare site for deployment (lint, clean, and build)

### Quality Assurance
- `npm run lint` - Run linting for both JS and CSS
- `npm run purge:css` - Remove unused CSS with PurgeCSS
- `npm run analyze` - Analyze Hugo templates for performance issues

For a complete list of available scripts, see the [detailed README](bloodfen-wow-guides/README.md) in the Hugo site directory.

## Recent Updates

- **CSS Restructuring**: Migrated from the "wow-" prefix to "bf-" prefix for all CSS classes
- **Build Process Improvements**: Added new npm scripts for development and deployment
- **Documentation**: Updated documentation to reflect the current state of the project
- **Code Quality**: Added linting and analysis tools for better code quality

## Contributing

Please see [CONTRIBUTING.md](bloodfen-wow-guides/CONTRIBUTING.md) for details on how to contribute to this project.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

- [Hugo](https://gohugo.io/) - The static site generator
- [Tailwind CSS](https://tailwindcss.com/) - The utility-first CSS framework
- The World of Warcraft community for sharing knowledge and strategies