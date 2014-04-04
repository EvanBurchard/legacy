class CreateHomes < ActiveRecord::Migration
  def change
    create_table :homes do |t|

      t.timestamps
    end
  end
end
