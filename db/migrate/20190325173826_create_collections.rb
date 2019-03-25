class CreateCollections < ActiveRecord::Migration[5.2]
  def change
    create_table :collections do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :record, foreign_key: true

      t.timestamps
    end
  end
end
