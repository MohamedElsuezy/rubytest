class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.references :from_id, foreign_key: true
      t.references :to_id, foreign_key: true
      t.string :message
      t.timestamp :senttime

      t.timestamps
    end
  end
end
