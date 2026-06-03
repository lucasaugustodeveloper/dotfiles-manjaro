import { ShoppingCart } from "lucide-react";

interface CardProps {
  title: string;
  price: number;
  imageUrl: string;
  onAddToCart: () => void;
}

export default function Card({ title, price, imageUrl, onAddToCart }: CardProps) {
  return (
    <div className="card rounded bg-white p-4 flex flex-col items-center justify-center">
      <div className="card__header w-36.75 h-47 mb-4">
        <img
          src={imageUrl}
          alt={title}
          className="w-full h-full object-cover"
        />
      </div>

      <div className="card__body text-center mb-4">
        <h2 className="text-xl font-bold text-font">{title}</h2>
        <p className="text-font">R$ {price.toFixed(2).replace('.', ',')}</p>
      </div>


      <div className="card__footer w-full max-w-82">
        <button
          className="flex items-center justify-center text-white gap-2 py-2 px-4 w-full rounded bg-blue-500 hover:bg-blue-600"
          onClick={onAddToCart}
        >
          <span>
            <ShoppingCart />
          </span>
          <span>
            0
          </span>
          <span className="uppercase font-bold">
            adicionar ao carrinho
          </span>
        </button>
      </div>
    </div>
  )
}
