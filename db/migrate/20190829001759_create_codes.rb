class CreateCodes < ActiveRecord::Migration[5.2]
  def change
    create_table :codes do |t|
      t.string :date_string
      t.string :code
      t.string :floor
      t.timestamps
    end
  end
end
