import { createBrowserRouter } from 'react-router'

import HomePage from '../pages/Home'
import Checkout from '../pages/Checkout';

export const router = createBrowserRouter([
  {
    path: '/',
    element: <HomePage />
  },
  {
    path: '/checkout',
    element: <Checkout />
  }
]);
