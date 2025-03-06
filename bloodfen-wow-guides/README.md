# Bloodfen WoW Guides

A comprehensive collection of World of Warcraft guides built with Hugo, focusing on "The War Within" expansion.

## Getting Started

### Prerequisites

- [Hugo Extended](https://gohugoio.github.io/hugo-installer/) (v0.145.0 or later recommended)
- [Node.js](https://nodejs.org/) (v18 or later)
- [npm](https://www.npmjs.com/) (v9 or later)
- A text editor for editing markdown files
- Basic knowledge of markdown syntax

### Installation

1. **Install Hugo**
   - Run the included `install-hugo.bat` script and follow the prompts
   - Or install Hugo manually following the [official documentation](https://gohugo.io/installation/)

2. **Clone this repository**
   ```
   git clone https://github.com/Falkicon/bloodfen.git
   cd bloodfen/bloodfen-wow-guides
   ```

3. **Install dependencies**
   ```
   npm install
   ```

4. **Start the development server**
   ```
   npm start
   ```
   This will start both Hugo and Tailwind CSS in watch mode.
   Open your browser to http://localhost:1313/

## Project Structure

```
bloodfen-wow-guides/
├── archetypes/        # Template files for new content
├── assets/            # Source CSS, JS, and other assets
│   └── css/           # CSS source files (processed by Tailwind)
│       └── main.css   # Main CSS file with Tailwind directives
├── content/           # All guide content
│   └── world-of-warcraft/
│       └── the-war-within/
│           ├── _index.md
│           ├── first-week-activities.md
│           ├── delves-world-content.md
│           └── ...
├── layouts/           # Custom layout templates
│   ├── _default/      # Default templates
│   ├── partials/      # Reusable template parts
│   └── shortcodes/    # Custom shortcodes
├── static/            # Static files (images, compiled CSS, etc.)
│   └── css/           # CSS files
│       ├── new-structure/  # ITCSS organized CSS files
│       ├── tailwind.css    # Compiled Tailwind CSS
│       └── syntax.css      # Syntax highlighting styles
├── themes/            # Hugo themes
├── config.yaml        # Site configuration
├── tailwind.config.js # Tailwind CSS configuration
├── package.json       # npm dependencies and scripts
├── TASKS.md           # Project tasks and progress
└── README.md          # This file
```

## CSS Architecture

The project uses a combination of Tailwind CSS and custom CSS following the ITCSS (Inverted Triangle CSS) methodology for better organization and maintainability.

### CSS Structure

The CSS is organized in the following layers:

1. **Settings** - Variables and configuration
2. **Tools** - Mixins and functions
3. **Generic** - Reset and normalize
4. **Elements** - Bare HTML elements
5. **Objects** - Layout patterns
6. **Components** - UI components
7. **Utilities** - Helper classes

### Naming Convention

All custom CSS classes use the `bf-` prefix (for "Bloodfen") to avoid conflicts with other libraries and frameworks.

Examples:
- `.bf-container` - Main container class
- `.bf-header` - Header component
- `.bf-button` - Button component

## Available Scripts

The project includes several npm scripts to help with development and deployment:

### Development

- `npm start` - Start both Hugo and Tailwind in development mode with live reloading
- `npm run dev` - Start Hugo development server
- `npm run tailwind:dev` - Start Tailwind CSS in watch mode
- `npm run serve` - Run Hugo server with full page rebuilds
- `npm run serve:prod` - Run Hugo server in production mode

### Building

- `npm run build:all` - Build both Tailwind CSS and Hugo site
- `npm run build:clean` - Clean output directories and build everything
- `npm run tailwind:build` - Build Tailwind CSS for production
- `npm run build` - Build Hugo site for production
- `npm run clean` - Remove output directories

### Quality Assurance

- `npm run lint` - Run linting for both JS and CSS
- `npm run lint:fix` - Fix linting issues automatically
- `npm run check` - Run Hugo's built-in check command
- `npm run analyze` - Analyze Hugo templates for performance issues
- `npm run purge:css` - Remove unused CSS with PurgeCSS

### Deployment

- `npm run deploy` - Prepare site for deployment (lint, clean, and build)

## Adding New Guides

1. Create your guide in markdown format
2. Run the `add-guide.bat` script and follow the prompts
3. The script will add the proper Hugo frontmatter and place the file in the correct location
4. Preview your changes by running the Hugo server

## Customization

- **Theme**: The site uses the Book theme with custom modifications
- **Shortcodes**: Custom shortcodes are available for tips, warnings, and class-specific information
- **Dark Mode**: A dark mode toggle is included for better readability

## Shortcodes

The site includes several custom shortcodes to enhance content:

### Class-specific Information

```markdown
{{< class "mage" >}}
This information is specific to Mages.
{{< /class >}}
```

### Tips and Warnings

```markdown
{{< tip >}}
Here's a helpful tip for players.
{{< /tip >}}

{{< warning >}}
Important warning about a mechanic.
{{< /warning >}}
```

### WoW Items and NPCs

```markdown
Check out {{< bf-item 123456 "Item Name" >}} for best results.
```

## Optimization and Testing

### Image Optimization

The `optimize-images.bat` script helps optimize images for the web:

1. Run the script and follow the prompts
2. Choose to optimize a single image or an entire directory
3. Resize images to appropriate dimensions for the web
4. Optimized images will be saved with reduced file sizes while maintaining quality

### Site Testing

The `test-site.bat` script helps test the site's performance and accessibility:

1. Run the script while the Hugo server is running
2. Choose from various testing options:
   - Lighthouse Performance Test
   - HTML Validation
   - CSS Validation
   - Accessibility Check
   - Link Checker
3. Test reports will be saved in the `reports/` directory

## Deployment

### Automated Deployment with GitHub Actions

The site is automatically deployed to GitHub Pages whenever changes are pushed to the `main` branch. This is handled by a GitHub Actions workflow.

#### How It Works

1. When changes are pushed to the `main` branch, the GitHub Actions workflow is triggered.
2. The workflow:
   - Sets up the environment
   - Installs Hugo and Node.js
   - Installs dependencies
   - Builds Tailwind CSS
   - Builds the site
   - Deploys the built site to GitHub Pages

#### Viewing the Deployment

The deployed site is available at: [https://falkicon.github.io/bloodfen/](https://falkicon.github.io/bloodfen/)

### Manual Deployment

If you need to deploy the site manually, follow these steps:

1. Prepare and build the site:
   ```
   npm run deploy
   ```

2. The built site will be in the `public/` directory.

3. You can then deploy this directory to any web hosting service of your choice.

## Contributing

Please see the [CONTRIBUTING.md](../CONTRIBUTING.md) file for guidelines on how to contribute to this project.

## License

This project is licensed under the MIT License - see the [LICENSE](../LICENSE) file for details.

## Acknowledgments

- The Hugo team for the excellent static site generator
- The Tailwind CSS team for their utility-first CSS framework
- The World of Warcraft community for sharing knowledge and strategies
- All contributors who have helped improve these guides 