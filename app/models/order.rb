class Order < ActiveRecord::Base
  attr_accessible :address, :email, :name, :pay_type
  PAYMENT_TYPES =["Prevod", "Platobna karta", "Dobierka" ]

  #validacia
  validates :name, :address, :email, :pay_type, :presence => true
  validates :pay_type, :inclusion => PAYMENT_TYPES
end
