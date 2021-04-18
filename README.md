# (Rails, Ruby, MongoDB) Gerenciamento de Carros
**Processo Seletivo Viitra - Ricarth Lima**
## Lições aprendidas

- A atualização do Rails 5 para desenvolvimento nativo de APIs tornou o framework ainda mais incrível!
- Perdi muito tempo tentando fazer autenticação (e model) de usuário usando o padrão Devise que eu já conhecia. Provavelmente para usar com o MongoDB e API JSON há alternativas melhores; 

## Usando esse repositório
Certifique-se de ter o [Rails6](https://guides.rubyonrails.org/v6.0/getting_started.html) e o [MongoDB](https://docs.mongodb.com/manual/installation/) instalados;

```
git clone https://github.com/ricarthlima/rails-car-api.git
cd rails-car-api
rails s
```

## Features Implementadas

### Povoando o Banco com Exemplos
```
rails db:drop
rails dev:setup
```

### Model Marca de Carro (Brand)
```
class Brand
  include Mongoid::Document
  field :name, type: String
  field :creation_date, type: Date

  has_many :cars
end
```
### Model Carro (Car)
```
class Car
  include Mongoid::Document
  field :name, type: String
  field :car_model, type: String
  field :price, type: Float

  belongs_to :brand
end
```
### Serviço de Inserção de novas Marcas
```
curl --location --request POST 'localhost:3000/brands' \
--header 'Content-Type: application/json' \
--data-raw '{
    "name": <string_brand_name>,
    "creation_date": <formated_string_creation_date>
}'
```
### Serviço de Inserção de novos Carros
```
curl --location --request POST 'localhost:3000/cars' \
--header 'Content-Type: application/json' \
--data-raw '{
    "name": <string_car_name>,
    "car_model": <string_car_model>,
    "price": <float_car_price>,
    "brand_id": <string_existing_brand_id>
}'
```
### Serviço de busca por todas as marcas
```
curl --location --request GET 'localhost:3000/brands'
```

### Serviço de busca por todos os carros
```
curl --location --request GET 'localhost:3000/cars'
```

### Serviço de busca de carros de uma determinada marca
```
curl --location --request GET 'http://localhost:3000/brands/<brand_id>/cars'
```


