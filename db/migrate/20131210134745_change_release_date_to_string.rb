class ChangeReleaseDateToString < ActiveRecord::Migration
  def change
    change_column :releases, :release_date, :string
  end
end
