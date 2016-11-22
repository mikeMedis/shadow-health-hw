class CreateReslts < ActiveRecord::Migration[5.0]
  def change
    create_table :reslts do |t|

      t.timestamps
    end
  end
end
