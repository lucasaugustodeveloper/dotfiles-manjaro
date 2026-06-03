import { Handbag } from 'lucide-react'

interface CheckoutButtonProps {
  onClick?: () => void
}

export default function CheckoutButton({ onClick }: CheckoutButtonProps) {
  return (

    <button className="text-white px-4 py-2 rounded flex items-center gap-4" onClick={onClick}>
      <p className="flex flex-col items-end">
        <span className='text-md'>
          Meu carrinho
        </span>

        <span className='text-sm'>
          0 itens
        </span>
      </p>

      <p>
        <Handbag />
      </p>
    </button>
  );
}
