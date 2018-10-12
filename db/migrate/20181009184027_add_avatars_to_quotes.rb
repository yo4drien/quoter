class AddAvatarsToQuotes < ActiveRecord::Migration[5.2]
  def change
    add_column :quotes, :avatar, :string
  end
end
