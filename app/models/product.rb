class Product < ApplicationRecord

  has_many :order_products
  has_many :orders, through: :order_products

  def decrementqty
    self.product.decrement!(:remaining_quantity)
  end

  after_save :decrementqty

  validates :image_url, allow_blank: true, format: {
      with: %r{\.(gif|jpg|png)\Z}i,
      message: 'must be a URL for GIF, JPG or PNG image.'
  }
end
