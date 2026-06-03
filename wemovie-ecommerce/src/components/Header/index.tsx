import CheckoutButton from './checkout';

export default function Header() {
  return (
    <header className="text-white flex justify-between items-center lg:px-0">
      <h1 className="text-2xl font-bold">WeMovie</h1>

      <CheckoutButton />
    </header>
  );
}
