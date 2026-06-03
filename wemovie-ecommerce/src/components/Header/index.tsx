import CheckoutButton from './checkout';

export default function Header() {
  return (
    <header className="text-white p-4 flex justify-between items-center">
      <h1 className="text-2xl font-bold">WeMovie</h1>

      <CheckoutButton />
    </header>
  );
}
