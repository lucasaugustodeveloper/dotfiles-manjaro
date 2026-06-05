import { CircleMinus, CirclePlus, Trash } from "lucide-react"

const card = {
  title: "Card Title 1",
  price: 199.9,
  imageUrl: "https://wefit-react-web-test.s3.amazonaws.com/viuva-negra.png"
}

export default function CardCheckout() {
  return (
    <div className="flex w-full">
      <div className="max-w-24 lg:max-w-32 mr-6">
        <img src={card.imageUrl} alt={card.title} className="w-full h-full" />
      </div>

      <div className="flex flex-col w-full lg:flex-row lg:gap-30">
        <div className="flex justify-between lg:flex-col lg:gap-2 lg:justify-center">
          <p className="font-bold text-black">
            {card.title}
          </p>

          <p className="font-bold text-black">
            R$ {card.price}
          </p>
        </div>

        <div className="flex justify-center mt-15 h-9 gap-2 lg:gap-30">
          <div className="flex items-center justify-center mr-2">
            <button className="w-6">
              <CircleMinus className="text-blue-600" />
            </button>

            <input
              name="quantity"
              type="number"
              value="1"
              className="text-center w-18 mx-4 p-1 lg:pl-3.5 rounded border border-gray-400"
            />

            <button className="w-6">
              <CirclePlus className="text-blue-600" />
            </button>
          </div>

          <div>
            <p className="font-bold uppercase text-secondary-font">Subtotal</p>
            <p className="font-bold">R$ {card.price}</p>
          </div>
        </div>
      </div>

      <div className="deleteItem ml-3 lg:flex lg:items-center lg:justify-center">
        <button className="">
          <Trash className="text-blue-600" />
        </button>
      </div>

    </div>
  )
}
