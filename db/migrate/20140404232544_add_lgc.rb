class AddLgc < ActiveRecord::Migration
  def change
    create_table :lgcs do |t|

      t.timestamps
    end
  end
end
