class ChangeClassName < ActiveRecord::Migration[6.0]
  def change
    rename_column :players, :class, :year
  end
end
