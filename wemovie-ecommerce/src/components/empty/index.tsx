export default function Empty() {
  return (
    <div className="bg-white rounded flex flex-col items-center justify-center py-12">
      <h1 className="text-2xl font-bold w-60 text-center text-primary lg:w-full">
        Parece que não há nada por aqui :(
      </h1>

      <div className="h-full my-8 border-b-primary border-b-2 lg:w-111.75 flex items-center justify-center">
        <img src="/assets/images/empty.svg" alt="Nenhum item encontrado" className="h-full w-48" />
      </div>

      <button className="font-bold text-white py-2 px-4 rounded bg-blue-500 hover:bg-blue-600">
        Recarregar página
      </button>
    </div>
  )
}
