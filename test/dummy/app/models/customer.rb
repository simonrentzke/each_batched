
class Customer < ActiveRecord::Base
  belongs_to :company
  has_many :purchases
  has_many :purchased_products, -> { uniq }, :through => :purchases, :source => :products
end
