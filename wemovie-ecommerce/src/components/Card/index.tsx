import Card from "./card";
import { cards } from "../../mocks/cards";

export default function CardGrid() {
  return (
    <div
      className="card__grid"
    >
      {cards.map((card, index) => (
        <Card
          key={index}
          title={card.title}
          price={card.price}
          imageUrl={card.imageUrl}
          onAddToCart={() => console.log("Adicionado ao carrinho:", card.title)}
        />
      ))}
    </div>
  );
}
