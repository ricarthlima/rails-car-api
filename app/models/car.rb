class Car
  include Mongoid::Document
  field :name, type: String
  field :car_model, type: String
  field :price, type: Float

  belongs_to :brand
end
