import { Link, useLocation } from 'react-router-dom'

function Navigation() {
  const location = useLocation()

  const isActive = (path) => location.pathname === path

  return (
    <nav className="navigation">
      <div className="nav-brand">
        <Link to="/">PROJECT_NAME</Link>
      </div>
      <ul className="nav-links">
        <li>
          <Link to="/" className={isActive('/') ? 'active' : ''}>
            Home
          </Link>
        </li>
        <li>
          <Link to="/about" className={isActive('/about') ? 'active' : ''}>
            About
          </Link>
        </li>
        <li>
          <Link to="/contact" className={isActive('/contact') ? 'active' : ''}>
            Contact
          </Link>
        </li>
      </ul>
    </nav>
  )
}

export default Navigation
