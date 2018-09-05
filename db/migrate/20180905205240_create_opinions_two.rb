class CreateOpinionsTwo < ActiveRecord::Migration[5.2]
  def change
    create_table :opinions do |t|
      t.belongs_to :users, index: true
      t.belongs_to :songs, index: true
      t.string :comment
      t.timestamps
    end
  end
end
