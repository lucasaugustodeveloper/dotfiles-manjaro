# Documentação do Endpoint

Endpoint de cadastro de vendedores ou compradores

## Métodos do endpoint

### Parâmetros do campo da requisição

> Trazer todos os compradores e vendedores
`GET /api/v1/seller-buyer`

> Trazer compradoor ou vendedor específico
`GET /api/v1/seller-buyer/{id}`

- `id` (obrigatório)

> Trazer lista de compradores e vendedores com filtro
`GET /api/v1/seller-buyer?search=....`

- search (não obrigatório)

> todos os campos são obrigatórios, id obrigátorio no caso do sistema tiver permissionamento, sendo que nem todas
> as pessoas vão poder cadastrar um vendedor ou comprador.

`POST /api/v1/seller-buyer`
```json
{
  'id': '',
  'typePerson': '',
  'info': {
    'cpfCnpj': '',
    'name': '',
    'celular': '',
    'phone': '',
    'email': '',
  },
  'address': {
    'cep': '',
    'address': '',
    'number': '',
    'additionalInformation': '',
    'city': '',
    'neighborhood': '',
    'state': '',
  },
}
```

## Respostas

#### 200 - OK

`GET /api/v1/seller-buyer`
```json
{
  metas: {
    total: 100,
    hasNextPage: true,
    quantity: 10,
    limit: 10,
  },
  data: [
    {
      'id': '',
      'typePerson': '',
      'info': {
        'cpfCnpj': '',
        'name': '',
        'celular': '',
        'phone': '',
        'email': '',
      },
      'address': {
        'cep': '',
        'address': '',
        'number': '',
        'additionalInformation': '',
        'city': '',
        'neighborhood': '',
        'state': '',
      },
    }
  ]
}
```

`GET /api/v1/seller-buyer/{id}`
```json
{
  'id': '',
  'typePerson': '',
  'info': {
    'cpfCnpj': '',
    'name': '',
    'celular': '',
    'phone': '',
    'email': '',
  },
  'address': {
    'cep': '',
    'address': '',
    'number': '',
    'additionalInformation': '',
    'city': '',
    'neighborhood': '',
    'state': '',
  },
}
```

`POST /api/v1/seller-buyer`
```json
{
  message: 'Cadastrado com sucesso!',
  status: 200,
  protocol: 0123456789
}
```


#### 500
`GET /api/v1/seller-buyer`
```json
{
  message: 'Tente novamente mais tarde.',
  status: 500,
}
```

`GET /api/v1/seller-buyer/{id}`
```json
{
  message: 'Tente novamente mais tarde.',
  status: 500,
}
```

`POST /api/v1/seller-buyer`
```json
{
  message: 'Tente novamente mais tarde.',
  status: 500,
}
```

#### 409 - Conflict
`POST /api/v1/seller-buyer`
```json
{
  message: 'E-mail já cadastrado!',
  status: 409,
}
```
