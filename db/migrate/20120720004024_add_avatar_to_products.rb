class AddAvatarToProducts < ActiveRecord::Migration
  def change
    add_attachment :product, :avatar
  end
end
