class Item < ApplicationRecord
  belongs_to :customer

  def user
    Customer.find(self.customer.id).name
  end

  def tipe_barang
    ItemType.find(self.item_type_id).name
  end
end
