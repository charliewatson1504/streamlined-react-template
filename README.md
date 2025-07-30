# PROJECT_NAME

A minimal React application with TypeScript built with Vite.

## Quick Start

```bash
# Install dependencies
npm install

# Start development server
npm run dev

# Type check
npm run type-check

# Build for production
npm run build

# Preview production build
npm run preview
```

## Project Structure

```
src/
├── components/     # Your React components
├── App.tsx        # Main App component
├── main.tsx       # Application entry point
└── index.css      # Global styles
```

## Features

- ⚡️ Fast development with Vite
- ⚛️ React 18 with modern features
- 🔷 TypeScript for type safety
- 🎨 Minimal CSS reset included
- 📁 Clean project structure
- 🚀 Optimized production builds

## TypeScript

This template includes TypeScript with strict mode enabled. Type checking is available via:

```bash
npm run type-check
```

The build process includes TypeScript compilation, ensuring type safety in production builds.

## Adding Components

Create your components in the `src/components/` directory:

```jsx
// src/components/Button.jsx
function Button({ children, onClick }) {
  return <button onClick={onClick}>{children}</button>;
}

export default Button;
```

## Styling

This template includes a minimal CSS reset. Add your styles to:

- `src/index.css` - Global styles
- Component-specific CSS files
- Or use your preferred styling solution (CSS modules, styled-components, etc.)

## Development

The development server runs on `http://localhost:3000` and includes:

- Hot module replacement
- Fast refresh for React components
- Automatic browser opening

---

Built with the [Streamlined React Template](https://github.com/your-username/streamlined-react-template)
