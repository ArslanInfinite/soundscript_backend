class CreateKeyboards < ActiveRecord::Migration[6.0]
  def change
    create_table :keyboards do |t|
      t.string   :title
      t.timestamps
    end
  end
end
