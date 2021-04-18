class Brand
  include Mongoid::Document
  field :name, type: String
  field :creation_date, type: Date

  has_many :cars

  def creation_date_ptbr
    I18n.l(self.creation_date) unless self.creation_date.blank?
  end
end
