class CreateRovers < ActiveRecord::Migration[7.0]
  def change
    create_table :rovers do |t|
      t.string :result

      t.timestamps
    end
  end
end
