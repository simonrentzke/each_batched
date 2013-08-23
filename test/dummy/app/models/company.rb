
class Company < ActiveRecord::Base
  has_many :customers
  has_many :products
  has_many :customer_purchases, :through => :customers, :source => :purchases
  has_many :purchased_products, -> { uniq }, :through => :customer_purchases, :source => :product
end
