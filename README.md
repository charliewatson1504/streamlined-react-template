# PROJECT_NAME

A minimal React application with React Router built with Vite.

## Quick Start

```bash
# Install dependencies
npm install

# Start development server
npm run dev

# Build for production
npm run build

# Preview production build
npm run preview
```

## Project Structure

```
src/
├── components/     # Reusable React components
│   └── Navigation.jsx
├── pages/          # Page components for routing
│   ├── HomePage.jsx
│   ├── AboutPage.jsx
│   └── ContactPage.jsx
├── App.jsx        # Main App component with routing
├── main.jsx       # Application entry point
└── index.css      # Global styles
```

## Features

- ⚡️ Fast development with Vite
- ⚛️ React 18 with modern features
- 🧭 React Router for client-side navigation
- 🎨 Minimal CSS reset and navigation styles
- 📁 Clean project structure with pages and components
- 🚀 Optimized production builds

## Routing

This template includes React Router v6 with:
- Home page (`/`)
- About page (`/about`)
- Contact page (`/contact`)
- Navigation component with active link highlighting

Add new routes by:
1. Creating a new page component in `src/pages/`
2. Adding the route to `src/App.jsx`
3. Adding a navigation link to `src/components/Navigation.jsx`

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
