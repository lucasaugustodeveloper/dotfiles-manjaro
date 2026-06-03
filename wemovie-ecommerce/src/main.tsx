import { StrictMode } from 'react'
import { createRoot } from 'react-dom/client'
import { RouterProvider } from 'react-router/dom'

import './index.css'
import { router } from './routes/index.tsx'
import Header from './components/Header'

createRoot(document.getElementById('root')!).render(
  <StrictMode>
    <div className="main max-w-270 mx-auto">
      <Header />

      <RouterProvider router={router} />
    </div>
  </StrictMode>,
)
